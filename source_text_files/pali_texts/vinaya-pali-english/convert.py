from glob import glob
import lxml.etree
from pprint import pprint
from os import listdir
from os.path import isfile, join
import json
from ebooklib import epub
import re, os

BASE_PALI = 'bilara-data-published/root/pli/ms/'
BASE_TRANS = 'bilara-data-published/translation/en/'
LANG = 'en'

def num_sort(test_string):
    return list(map(int, re.findall(r'\d+', test_string)))
    
def genpath(trans="brahmali", pali="vinaya/pli-tv-bu-vb"):
  has_subfolder = False
  pali_path = BASE_PALI + pali
  trans_path = join(BASE_TRANS, trans, pali)
  files = []
  print(pali_path, trans_path)
  lstf = os.listdir(trans_path)
  lstf.sort(key=num_sort)
  for filename in lstf:
    if os.path.isdir(join(trans_path, filename)):
      has_subfolder = True
      lst = os.listdir(join(trans_path, filename))
      lst.sort(key=num_sort)
      for fname in lst:
        files.append([join(trans_path, filename, fname),
        join(pali_path, filename, fname[:fname.index('translation')]+ 'root-pli-ms.json')])
    else:
      files.append([join(trans_path, filename),
join(pali_path, filename[:filename.index('translation')]+ 'root-pli-ms.json')])
  return files, has_subfolder

def load_name():
  fhandle = open(join(BASE_TRANS, 'sujato/name/super-name_translation-en-sujato.json'), encoding='utf8')
  name_trans = {}
  for key, val in json.load(fhandle).items():
    name_trans[key.split('.')[-1]] = val
  return name_trans

xhtmlformat = '''
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>{title}</title>
</head>
<body>
<h3 class="h31"><span class="th31">{id}. {title}</span></h3>
<p class="p3"><span class="t4">{comment}</span></p>
<p class="p3"><span class="t1">&nbsp;</span></p>
'''
xhtmlend = '''
</body>
</html>
'''

def parsejson(trans_path, pali_path, has_subfolder = False):

  pali = json.load(open(pali_path))
  trans = json.load(open(trans_path))
  data = {}
  bookname = list(pali.values())[1] +' - '+ list(trans.values())[1]
  if has_subfolder:
    chapname =  list(pali.values())[2] +' - '+ list(trans.values())[2]
    suttaname =  list(pali.values())[3] +' - '+ list(trans.values())[3]
    #if suttaname[0] in '1234567890':
    #    suttaname = chapname
    #suttaname = chapname
    startid = 4 #first 3 is info, not the content
  else:
    #sutta_name =  (po[1].msgid, po[1].msgstr)
    suttaname = list(pali.values())[2] +' - '+ list(trans.values())[2]
    chapname = ''
    startid = 3

  fid = pali_path.split('/')[-1][0:-3]
  #fid = re.findall(r'(\d+)',file_path)[-1]
  contents = xhtmlformat.format(id=fid, title=suttaname, comment=chapname)
  for key, val in list(pali.items())[startid:]:
    contents += '<p class="p3"><span class="t5">'+val+'</span></p>\n<p class="p3">'+trans.get(key, "")+'</p>\n'
    contents += '<p class="p3"><span class="t1">&nbsp;</span></p>\n'
  contents += xhtmlend

  return contents, bookname, chapname, suttaname


from random import shuffle

book_info = load_name()
def create_epub(bookpath='vinaya/pli-tv-bu-vb', author='brahmali'):
  bookid = bookpath.split('/')[-1]

  #create epub file
  book = epub.EpubBook()
  book.set_identifier(bookid)
  book.set_title(book_info[bookid])
  book.set_language('en')
  book.add_author('Bhikkhu '+author.title())

  book.toc = list()
  book.spine = ['nav']
  #add chapters
  files, has_subfolder = genpath(author, bookpath)
  print(files)
  print(has_subfolder)
  ansn_toc = {}

  for trans_path, pali_path in files:
    fname = trans_path.split('/')[-1][:-4]
    xhtmlcontent, bookname, chapname, suttaname = parsejson(trans_path, pali_path)
    print(chapname)
    chapter = epub.EpubHtml(title=suttaname,
    lang='en',
    file_name=fname+'.xhtml')
    chapter.set_content(xhtmlcontent)
    chapter.add_link(href='style.css', rel='stylesheet', type='text/css')
    book.add_item(chapter)
    if has_subfolder:
      #make tock layers for sn and an
      if bookname not in ansn_toc:
        ansn_toc[bookname] = {}
      if chapname not in ansn_toc[bookname]:
        ansn_toc[bookname][chapname] = list()
      ansn_toc[bookname][chapname].append(chapter)
      #if epub.Section(bookname) not in ansn_toc:
      #    ansn_toc[epub.Section(bookname)] = {}
      #    print(ansn_toc)
      #if epub.Section(chapname) not in ansn_toc[epub.Section(bookname)].keys():
      #    ansn_toc[epub.Section(bookname)][epub.Section(chapname)] = []
      #ansn_toc[epub.Section(bookname)][epub.Section(chapname)].append(chapter)
    else:
      book.toc.append(chapter)
    book.spine.append(chapter)
  #add style
  style = open('style.css').read()
  nav_css = epub.EpubItem(uid="style_nav",
  file_name="style.css",
  media_type="text/css",
  content=style)
  book.add_item(nav_css)
  pprint (ansn_toc)

  if has_subfolder:
    book.toc = list()
    book.toc.append(nav_css)
    for bookname in ansn_toc:
      book.toc.append(epub.Section(bookname))
      chaps = list()
      for chapname in ansn_toc[bookname]:
        if len(ansn_toc[bookname][chapname]) < 2:
          link = ansn_toc[bookname][chapname]
          #chaps.append(epub.Link(link[0].file_name, chapname, link[0].file_name))
          chaps.append(link[0])
        else:
          chaps.append(epub.Section(chapname))
          chaps.append(tuple(ansn_toc[bookname][chapname]))
      book.toc.append(chaps)
  book.toc = tuple(book.toc)
  print()
  pprint(book.toc)
  book.add_item(epub.EpubNcx())
  book.add_item(epub.EpubNav())
  epub.write_epub(bookid+'.epub', book)


create_epub(bookpath="vinaya/pli-tv-bi-vb")

