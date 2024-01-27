import 'package:convert_vri/convert_vri_html_to_tpr_sql.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart';

String readFile(String filePathRelativeToTestFile) {
  var currentDirectoryPath = Directory.current.path;
  var fullPath = '$currentDirectoryPath/test/$filePathRelativeToTestFile';
  return File(fullPath).readAsStringSync();
}

void main() {
  test('extractMyanmarEditionPagesFromVriHtml', () {
    // Given: a text with paragraphs before the first page marker              "<a name="M0.0001"></a>"",
    ///       a page where the marker is not at the beginning of the p element "asadi sassavā<a name="M0.0002"></a>",
    //        a page where the marker is after the first word of the p element "Evaṃ <a name="M0.0003"></a>"
    // Should: add the text before first page marker to first page,
    //         split the second page on the word before the marker,
    //         split the third page before the p element
    expect(extractMyanmarEditionPagesFromVriHtml("""
<p class="chapter">placeholder</p>
<p class="gatha1">Anantaññāṇaṃ <a name="M0.0001"></a> jinaṃ;</p>
<p class="gathalast">placeholder</p>
<p class="bodytext">placeholder</p>
<p class="bodytext">asadi sassavā<a name="M0.0002"></a>. sanadhammovuccati.</p>
<p class="bodytext">placeholder</p>
<p class="bodytext">placeholder</p>
<p class="bodytext">Evaṃ <a name="M0.0003"></a> karonto.</p>
<p class="bodytext">placeholder</p>"""), [
      {
        'number': 1,
        'content': [
          '<p class="chapter">placeholder</p>',
          '<p class="gatha1">Anantaññāṇaṃ <a name="M0.0001"></a> jinaṃ;</p>',
          '<p class="gathalast">placeholder</p>',
          '<p class="bodytext">placeholder</p>',
          '<p class="bodytext">asadi </p>'
        ]
      },
      {
        'number': 2,
        'content': [
          '<p class="bodytext">sassavā<a name="M0.0002"></a>. sanadhammovuccati.</p>',
          '<p class="bodytext">placeholder</p>',
          '<p class="bodytext">placeholder</p>',
        ]
      },
      {
        'number': 3,
        'content': [
          '<p class="bodytext">Evaṃ <a name="M0.0003"></a> karonto.</p>',
          '<p class="bodytext">placeholder</p>'
        ]
      }
    ]);

    // Given: a text (e201n) where a new page immediately follows a chapter and subhead heading
    // Should: include the chapter and subhead heading in new page not previous page
    expect(extractMyanmarEditionPagesFromVriHtml("""
<p class="hangnum">placeholder</p>
<p class="gatha1">Caturāsītisahassa<a name="M0.0001"></a>, dhammakkhandhāpabhaṅkarā;</p>
<p class="gathalast">placeholder</p>
<p class="chapter">1. Sandhikaṇḍa</p>
<p class="subhead">Saññārāsi</p>
<p class="subhead">Garusaññārāsi</p>
<p class="subsubhead">Garusaññārāsi</p>
<p class="title">Garusaññārāsi</p>
<p class="bodytext">Vaṇṇo<a name="M0.0002"></a>, saro, savaṇṇo, dīgho, rasso, byañjano, vaggo, niggahītaṃ.</p>
<p class="bodytext">placeholder</p>"""), [
      {
        'number': 1,
        'content': [
          '<p class="hangnum">placeholder</p>',
          '<p class="gatha1">Caturāsītisahassa<a name="M0.0001"></a>, dhammakkhandhāpabhaṅkarā;</p>',
          '<p class="gathalast">placeholder</p>'
        ]
      },
      {
        'number': 2,
        'content': [
          '<p class="chapter">1. Sandhikaṇḍa</p>',
          '<p class="subhead">Saññārāsi</p>',
          '<p class="subhead">Garusaññārāsi</p>',
          '<p class="subsubhead">Garusaññārāsi</p>',
          '<p class="title">Garusaññārāsi</p>',
          '<p class="bodytext">Vaṇṇo<a name="M0.0002"></a>, saro, savaṇṇo, dīgho, rasso, byañjano, vaggo, niggahītaṃ.</p>',
          '<p class="bodytext">placeholder</p>'
        ]
      },
    ]);

    // Given: Multiple pages on the same line, with the first page marker not at the beginning
    // Should: Put text before the first page marker into previous page, and starting marker create new pages
    expect(
        // Found text sample using this script on converted VRI XML files: `rg '(<a name="M0\.\d+">).*(<a name="M0\.\d+">)' romn-html/s0516m.mul.html`
        extractMyanmarEditionPagesFromVriHtml(
            '<p class="bodytext"><span class="bld">Paññāyete pidhiyyare</span>ti. <span class="bld">Paññā</span>ti yā paññā pajānanā…pe… amoho dhammavicayo sammādiṭṭhi. Paññāyete pidhiyyareti – paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā aniccā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na <a name="T0.0018"></a> savanti <a name="V0.0027"></a> na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā dukkhā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā anattā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Avijjāpaccayā saṅkhārā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti <a name="M0.0031"></a> na savanti na āsavanti na sandanti nappavattanti. ‘‘Saṅkhārapaccayā viññāṇa’’nti…pe… ‘‘viññāṇapaccayā nāmarūpa’’nti… ‘‘nāmarūpapaccayā saḷāyatana’’nti… ‘‘saḷāyatanapaccayā phasso’’ti… ‘‘phassapaccayā vedanā’’ti… ‘‘vedanāpaccayā taṇhā’’ti… ‘‘taṇhāpaccayā upādāna’’nti… ‘‘upādānapaccayā bhavo’’ti… ‘‘bhavapaccayā jātī’’ti… ‘‘jātipaccayā jarāmaraṇa’’nti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Avijjānirodhā saṅkhāranirodho’’ti… ‘‘saṅkhāranirodhā viññāṇanirodho’’ti… ‘‘viññāṇanirodhā nāmarūpanirodho’’ti… ‘‘nāmarūpanirodhā saḷāyatananirodho’’ti… ‘‘saḷāyatananirodhā phassanirodho’’ti… ‘‘phassanirodhā vedanānirodho’’ti… ‘‘vedanānirodhā taṇhānirodho’’ti… ‘‘taṇhānirodhā upādānanirodho’’ti… ‘‘upādānanirodhā bhavanirodho’’ti… ‘‘bhavanirodhā jātinirodho’’ti… ‘‘jātinirodhā jarāmaraṇanirodho’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Idaṃ dukkha’’nti…pe… ‘‘ayaṃ dukkhasamudayo’’ti… ‘‘ayaṃ dukkhanirodho’’ti… ‘‘ayaṃ dukkhanirodhagāminī paṭipadā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti <a name="T0.0019"></a> na sandanti nappavattanti. ‘‘Ime dhammā āsavā’’ti…pe… ‘‘ayaṃ āsavasamudayo’’ti… ‘‘ayaṃ āsavanirodho’’ti… ‘‘ayaṃ āsavanirodhagāminī paṭipadā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Ime dhammā abhiññeyyā’’ti…pe… ‘‘ime dhammā pariññeyyā’’ti… ‘‘ime dhammā pahātabbā’’ti… ‘‘ime dhammā bhāvetabbā’’ti… ‘‘ime dhammā sacchikātabbā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. Channaṃ phassāyatanānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. Pañcannaṃ upādānakkhandhānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato… catunnaṃ mahābhūtānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato… yaṃ kiñci samudayadhammaṃ sabbaṃ taṃ nirodhadhammanti jānato passato paññāyete sotā pidhīyanti pacchijjanti na <a name="V0.0028"></a> savanti na āsavanti <a name="M0.0032"></a> na sandanti <a name="T0.0020"></a> nappavattantīti – paññāyete pidhiyyare. Tenāha bhagavā –</p>'),
        [
          {
            'number': 1,
            'content': [
              '<p class="bodytext"><span class="bld">Paññāyete pidhiyyare</span>ti. <span class="bld">Paññā</span>ti yā paññā pajānanā…pe… amoho dhammavicayo sammādiṭṭhi. Paññāyete pidhiyyareti – paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā aniccā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na <a name="T0.0018"></a> savanti <a name="V0.0027"></a> na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā dukkhā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Sabbe saṅkhārā anattā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Avijjāpaccayā saṅkhārā’’ti jānato passato paññāyete sotā pidhīyanti </p>'
            ]
          },
          {
            'number': 31,
            'content': [
              '<p class="bodytext">pacchijjanti <a name="M0.0031"></a> na savanti na āsavanti na sandanti nappavattanti. ‘‘Saṅkhārapaccayā viññāṇa’’nti…pe… ‘‘viññāṇapaccayā nāmarūpa’’nti… ‘‘nāmarūpapaccayā saḷāyatana’’nti… ‘‘saḷāyatanapaccayā phasso’’ti… ‘‘phassapaccayā vedanā’’ti… ‘‘vedanāpaccayā taṇhā’’ti… ‘‘taṇhāpaccayā upādāna’’nti… ‘‘upādānapaccayā bhavo’’ti… ‘‘bhavapaccayā jātī’’ti… ‘‘jātipaccayā jarāmaraṇa’’nti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Avijjānirodhā saṅkhāranirodho’’ti… ‘‘saṅkhāranirodhā viññāṇanirodho’’ti… ‘‘viññāṇanirodhā nāmarūpanirodho’’ti… ‘‘nāmarūpanirodhā saḷāyatananirodho’’ti… ‘‘saḷāyatananirodhā phassanirodho’’ti… ‘‘phassanirodhā vedanānirodho’’ti… ‘‘vedanānirodhā taṇhānirodho’’ti… ‘‘taṇhānirodhā upādānanirodho’’ti… ‘‘upādānanirodhā bhavanirodho’’ti… ‘‘bhavanirodhā jātinirodho’’ti… ‘‘jātinirodhā jarāmaraṇanirodho’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Idaṃ dukkha’’nti…pe… ‘‘ayaṃ dukkhasamudayo’’ti… ‘‘ayaṃ dukkhanirodho’’ti… ‘‘ayaṃ dukkhanirodhagāminī paṭipadā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti <a name="T0.0019"></a> na sandanti nappavattanti. ‘‘Ime dhammā āsavā’’ti…pe… ‘‘ayaṃ āsavasamudayo’’ti… ‘‘ayaṃ āsavanirodho’’ti… ‘‘ayaṃ āsavanirodhagāminī paṭipadā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. ‘‘Ime dhammā abhiññeyyā’’ti…pe… ‘‘ime dhammā pariññeyyā’’ti… ‘‘ime dhammā pahātabbā’’ti… ‘‘ime dhammā bhāvetabbā’’ti… ‘‘ime dhammā sacchikātabbā’’ti jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. Channaṃ phassāyatanānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato paññāyete sotā pidhīyanti pacchijjanti na savanti na āsavanti na sandanti nappavattanti. Pañcannaṃ upādānakkhandhānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato… catunnaṃ mahābhūtānaṃ samudayañca atthaṅgamañca assādañca ādīnavañca nissaraṇañca jānato passato… yaṃ kiñci samudayadhammaṃ sabbaṃ taṃ nirodhadhammanti jānato passato paññāyete sotā pidhīyanti pacchijjanti na <a name="V0.0028"></a> savanti na </p>'
            ]
          },
          {
            'number': 32,
            'content': [
              '<p class="bodytext">āsavanti <a name="M0.0032"></a> na sandanti <a name="T0.0020"></a> nappavattantīti – paññāyete pidhiyyare. Tenāha bhagavā –</p>'
            ]
          },
        ]);

    // Given: a Myanmar page number that starts with M1
    // Should: detect first page and add it to first record instead of creating a duplicate
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            '<p class="gatha1">Anantaññāṇaṃ <a name="M1.0001"></a> jinaṃ;</p>'),
        [
          {
            'number': 1,
            'content': [
              '<p class="gatha1">Anantaññāṇaṃ <a name="M1.0001"></a> jinaṃ;</p>'
            ]
          }
        ]);

    {
      var pagesList =
          extractMyanmarEditionPagesFromVriHtml(readFile('e0401n.nrf.html'));

      var pagesWithoutContentList = pagesList.map((page) {
        var newPage = Map.from(page);
        newPage.remove('content');
        return newPage;
      }).toList();

      List<Map<String, int>> pagesNumberList = [];

      for (int i = 1; i <= 324; i++) {
        pagesNumberList.add({'number': i});
      }

      // Given: a full book
      // Should: have a page for every page in the book
      expect(pagesWithoutContentList, pagesNumberList);
    }
  });

  test('extractParagraphsByPage', () {
    expect(extractParagraphsByPage(readFile('paragraphs.txt')), [
      {
        'number': 4,
        'paragraphs': [1]
      },
      {
        'number': 98,
        'paragraphs': [99, 100, 101]
      },
      {
        'number': 324,
        'paragraphs': [1, 2]
      }
    ]);

    // Given: paragraph before the first page
    // Should: assign the paragraph to the first page
    expect(extractParagraphsByPage("""
<span class="paranum">1</span>
<a name="M0.0001"></a>"""), [
      {
        'number': 1,
        'paragraphs': [1]
      }
    ]);
  });

  test('createParagraphsSQLImportStatements', () {
    expect(
        createParagraphsSQLImportStatements('annya_sadda_18', [
          {
            'number': 4,
            'paragraphs': [1]
          },
          {
            'number': 98,
            'paragraphs': [99, 100, 101]
          }
        ]),
        [
          "INSERT INTO paragraphs VALUES('annya_sadda_18',1,4);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',99,98);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',100,98);",
          "INSERT INTO paragraphs VALUES('annya_sadda_18',101,98);",
        ]);
  });

  test('joinPagesCollections', () {
    expect(
        joinPagesCollections([
          {
            'number': 1,
            'content': ['x']
          },
          {
            'number': 2,
            'content': ['x']
          },
          {
            'number': 3,
            'content': ['x']
          },
        ], [
          {
            'number': 1,
            'paragraphs': [1]
          },
          {
            'number': 3,
            'paragraphs': [1, 2]
          },
        ]),
        [
          {
            'number': 1,
            'content': ['x'],
            'paragraphs': [1]
          },
          {
            'number': 2,
            'content': ['x'],
            'paragraphs': []
          },
          {
            'number': 3,
            'content': ['x'],
            'paragraphs': [1, 2]
          },
        ]);
  });

  test('createPageSQLImportStatements', () {
    expect(
        createPageSQLImportStatements('annya_sadda_18', [
          {
            'number': 1,
            'content': ['x\nx'],
            'paragraphs': [1]
          },
          {
            'number': 2,
            'content': ['x'],
            'paragraphs': []
          },
          {
            'number': 3,
            'content': ['x'],
            'paragraphs': [1, 2]
          }
        ]),
        [
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,'xx','-1-');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',2,'x','');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',3,'x','-1-2-');",
        ]);
  });

  test('calculateIsNewPageMarkerAtStartOfParagraph', () {
    {
      String paragraphHtml =
          '<p class="bodytext"><span class="bld">Paṅke</span> <a name="M0.0221"></a> ...more stuff</p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), true);
    }
    {
      String paragraphHtml =
          '<p class="bodytext"><a name="para1"></a><span class="paranum">1</span>. <span class="bld">Te</span> <a name="M0.0004"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), true);
    }
    {
      String paragraphHtml =
          '<p class="bodytext"><span class="bld">Ādi</span>-saddena <a name="M0.0089"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), true);
    }
    {
      String paragraphHtml =
          '<p class="bodytext"><span class="bld">Ādi</span>-saddena <a name="M0.0089"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), true);
    }
    {
      String paragraphHtml =
          '<p class="bodytext"><a name="para233"></a><span class="paranum">233</span>. <span class="bld">Purimadiṭṭhi</span>nti <a name="M0.0133"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), true);
    }
    {
      String paragraphHtml =
          '<p class="bodytext">Kathaṃ bhagavā adutiyaṭṭhena eko? Evaṃ pabbajito samāno eko araññavanapatthāni pantāni senāsanāni paṭisevati appasaddāni appanigghosāni <a name="T0.0291"></a><a name="M0.0211"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), false);
    }
    {
      String paragraphHtml =
          '<p class="bodytext">Kathaṃ bhagavā<a name="M0.0211"></a></p>';
      Document doc = parser.parse(paragraphHtml);
      Element paragraph = doc.querySelector('p')!;
      expect(calculateIsNewPageMarkerAtStartOfParagraph(paragraph), false);
    }
  });

  test('splitParagraphOnWordPrecedingMarker', () {
    {
      // Given: one match
      // Should: split once
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">Kathaṃ bhagavā <a name="M0.0211"></a></p>'),
          [
            '<p class="bodytext">Kathaṃ </p>',
            '<p class="bodytext">bhagavā <a name="M0.0211"></a></p>'
          ]);
    }
    {
      // Given: multiple matches
      // Should: split multiple
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">Kathaṃ bhagavā <a name="M0.0211"></a> bhagavo <a name="M0.0211"></a> bhagava</p>'),
          [
            '<p class="bodytext">Kathaṃ </p>',
            '<p class="bodytext">bhagavā <a name="M0.0211"></a> </p>',
            '<p class="bodytext">bhagavo <a name="M0.0211"></a> bhagava</p>'
          ]);
    }
    {
      // Given: marker right at the start
      // Should: split at the start
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">Ganthappakāroca <a name="M0.0006"></a> pakāravantehi dhammehi sahevasijjhati, vinā nasijjhatīti adhippāyena ‘‘soabhidhammatthapadenā’’ti vuttaṃ. Kāmañca so tehi sahevasijjhati, vinānasijjhati. Abhidhammatthapadaṃ pana saṅgahaṇakiriyāpakāraṃna vadatīti vuttaṃ ‘‘taṃ nasundara’’nti. Duvidhaṃ nāmaṃ anvatthanāmaṃ ruḷināmanti. Tattha, atthānugataṃ nāmaṃ anvatthanāmaṃ, yathā sukhitassajanassa sukhotināmaṃ. Attharahitaṃ āropitaṃ nāmaṃ ruḷināmaṃ, yathā dukkhitassajanassa sukhoti nāmaṃ. Idha pana anvatthanā mantidassetuṃ ‘‘atthānugatā’’tiādi vuttaṃ. Tattha ‘‘atthānugatā’’ti sakatthānugatā. Saddappavattinimittānugatāti vuttaṃ hoti. ‘‘Ganthasamaññā’’ti ganthasammuti. Ganthassanāmanti vuttaṃ hoti. Saṅgahaganthonāma pāḷiyaṃtattha tattha vippakiṇṇedhamme ekattha sabhāgarāsikaraṇavasena pavatto gantho. Taṃ uggaṇhanto appakena ganthenabahukedhammesukhenajānāti. ‘‘Taduggahaparipucchādivasenā’’ti tassauggahoca paripucchācāti dvando. Ādisaddena dhāraṇādīni saṅgaṇhāti. Tattha pāṭhassavācuggatakaraṇaṃ uggahonāma. Uggahi tassapāṭhassa atthaggahaṇaṃ paripucchānāma. ‘‘Anāyāsato’’ti niddukkhena. ‘‘Laddhabbaṃphalānuphala’’nti sambandho. Sarūpato avabujjhanaṃ sarūpāvabodho. Ādisaddena lakkhaṇāvabodho rasāva bodhotiādiṃ saṅgaṇhāti. Anupādāparinibbānaṃ anto pariyosānaṃ yassāti anupādāparinibbānantaṃ. Tattha ‘‘anupādāparinibbāna’’nti taṇhādiṭṭhīhi khandhesu anupādāyaparinibbānaṃ. Anupādisesa parinibbānanti vuttaṃ hoti. ‘‘Phalānuphala’’nti phalañceva anuphalañca. Tattha ‘‘phala’’nti mūlapphalaṃ. ‘‘Anuphala’’nti paramparapphalaṃ. Payojetīti ‘‘payojanaṃ’’. Payojetīti niyojeti. Kiṃ niyojeti. Phalatthikaṃjanaṃ. Kattha niyojeti. Phalanibbattakekamme. Kimatthāya niyojeti. Tassakammassa karaṇatthāyāti. Phalānubhavanatthāya tatthatattha phalānubhavanakiccesu payujjīyatīti payojananti pivadanti. ‘‘Sāmatthiyato’’ti vacanasāmatthiyato. Kiṃ vacanasāmatthiyanti. Kāraṇavacanaṃ phalaṃpidīpeti. Phalavacanaṃ kāraṇaṃpidīpeti. Yathātaṃ asukasmiṃ raṭṭhe sammādevo vuṭṭhoti vutte taṃ raṭṭhaṃsu <a name="M0.0007"></a> bhikkhanti viññāyati. Asukaraṭṭhaṃ subhikkhantivutte tasmiṃ raṭṭhe sammādevo vuṭṭhoti viññāyatīti. Payojanaṃ pana abhidhammattha saddena dassetabbaṃ natthi, saṅgahavacanasāmatthiyeneva siddhaṃ hotīti adhippāyena ‘‘saṅgahasaddenā’’ti vuttaṃ. Sāmatthiyadassane pana suṭṭhu paripuṇṇavacanaṃ icchitabbaṃ hoti. Itarathā aniṭṭhatthappasaṅgopi siyāti imamatthaṃ dassetuṃ ‘‘taṃ na sundara’’nti vatvā ‘‘nahī’’tiādinā hetuvākyena tadatthaṃ sādheti.</p>'),
          [
            '<p class="bodytext">Ganthappakāroca <a name="M0.0006"></a> pakāravantehi dhammehi sahevasijjhati, vinā nasijjhatīti adhippāyena ‘‘soabhidhammatthapadenā’’ti vuttaṃ. Kāmañca so tehi sahevasijjhati, vinānasijjhati. Abhidhammatthapadaṃ pana saṅgahaṇakiriyāpakāraṃna vadatīti vuttaṃ ‘‘taṃ nasundara’’nti. Duvidhaṃ nāmaṃ anvatthanāmaṃ ruḷināmanti. Tattha, atthānugataṃ nāmaṃ anvatthanāmaṃ, yathā sukhitassajanassa sukhotināmaṃ. Attharahitaṃ āropitaṃ nāmaṃ ruḷināmaṃ, yathā dukkhitassajanassa sukhoti nāmaṃ. Idha pana anvatthanā mantidassetuṃ ‘‘atthānugatā’’tiādi vuttaṃ. Tattha ‘‘atthānugatā’’ti sakatthānugatā. Saddappavattinimittānugatāti vuttaṃ hoti. ‘‘Ganthasamaññā’’ti ganthasammuti. Ganthassanāmanti vuttaṃ hoti. Saṅgahaganthonāma pāḷiyaṃtattha tattha vippakiṇṇedhamme ekattha sabhāgarāsikaraṇavasena pavatto gantho. Taṃ uggaṇhanto appakena ganthenabahukedhammesukhenajānāti. ‘‘Taduggahaparipucchādivasenā’’ti tassauggahoca paripucchācāti dvando. Ādisaddena dhāraṇādīni saṅgaṇhāti. Tattha pāṭhassavācuggatakaraṇaṃ uggahonāma. Uggahi tassapāṭhassa atthaggahaṇaṃ paripucchānāma. ‘‘Anāyāsato’’ti niddukkhena. ‘‘Laddhabbaṃphalānuphala’’nti sambandho. Sarūpato avabujjhanaṃ sarūpāvabodho. Ādisaddena lakkhaṇāvabodho rasāva bodhotiādiṃ saṅgaṇhāti. Anupādāparinibbānaṃ anto pariyosānaṃ yassāti anupādāparinibbānantaṃ. Tattha ‘‘anupādāparinibbāna’’nti taṇhādiṭṭhīhi khandhesu anupādāyaparinibbānaṃ. Anupādisesa parinibbānanti vuttaṃ hoti. ‘‘Phalānuphala’’nti phalañceva anuphalañca. Tattha ‘‘phala’’nti mūlapphalaṃ. ‘‘Anuphala’’nti paramparapphalaṃ. Payojetīti ‘‘payojanaṃ’’. Payojetīti niyojeti. Kiṃ niyojeti. Phalatthikaṃjanaṃ. Kattha niyojeti. Phalanibbattakekamme. Kimatthāya niyojeti. Tassakammassa karaṇatthāyāti. Phalānubhavanatthāya tatthatattha phalānubhavanakiccesu payujjīyatīti payojananti pivadanti. ‘‘Sāmatthiyato’’ti vacanasāmatthiyato. Kiṃ vacanasāmatthiyanti. Kāraṇavacanaṃ phalaṃpidīpeti. Phalavacanaṃ kāraṇaṃpidīpeti. Yathātaṃ asukasmiṃ raṭṭhe sammādevo vuṭṭhoti vutte taṃ </p>',
            '<p class="bodytext">raṭṭhaṃsu <a name="M0.0007"></a> bhikkhanti viññāyati. Asukaraṭṭhaṃ subhikkhantivutte tasmiṃ raṭṭhe sammādevo vuṭṭhoti viññāyatīti. Payojanaṃ pana abhidhammattha saddena dassetabbaṃ natthi, saṅgahavacanasāmatthiyeneva siddhaṃ hotīti adhippāyena ‘‘saṅgahasaddenā’’ti vuttaṃ. Sāmatthiyadassane pana suṭṭhu paripuṇṇavacanaṃ icchitabbaṃ hoti. Itarathā aniṭṭhatthappasaṅgopi siyāti imamatthaṃ dassetuṃ ‘‘taṃ na sundara’’nti vatvā ‘‘nahī’’tiādinā hetuvākyena tadatthaṃ sādheti.</p>'
          ]);
    }
    {
      // Given: paragraph anchor tags
      // Should: ignore them
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext"><a name="para468"></a><span class="paranum">468</span>. Evaṃ <a name="T1.0556"></a><a name="V1.0387"></a> me sutaṃ – ekaṃ samayaṃ bhagavā sāvatthiyaṃ viharati jetavane anāthapiṇḍikassa ārāme. Tatra kho bhagavā bhikkhū āmantesi – ‘‘bhikkhavo’’ti. ‘‘Bhadante’’ti te bhikkhū bhagavato paccassosuṃ. Bhagavā etadavoca – ‘‘cattārimāni, bhikkhave, dhammasamādānāni. Katamāni cattāri? Atthi, bhikkhave, dhammasamādānaṃ paccuppannasukhaṃ āyatiṃ dukkhavipākaṃ; atthi, bhikkhave<a name="M1.0380"></a>, dhammasamādānaṃ paccuppannadukkhañceva āyatiñca dukkhavipākaṃ; atthi, bhikkhave, dhammasamādānaṃ paccuppannadukkhaṃ āyatiṃ sukhavipākaṃ; atthi, bhikkhave, dhammasamādānaṃ paccuppannasukhañceva āyatiñca sukhavipākaṃ’’.</p>'),
          [
            '<p class="bodytext"><a name="para468"></a><span class="paranum">468</span>. Evaṃ <a name="T1.0556"></a><a name="V1.0387"></a> me sutaṃ – ekaṃ samayaṃ bhagavā sāvatthiyaṃ viharati jetavane anāthapiṇḍikassa ārāme. Tatra kho bhagavā bhikkhū āmantesi – ‘‘bhikkhavo’’ti. ‘‘Bhadante’’ti te bhikkhū bhagavato paccassosuṃ. Bhagavā etadavoca – ‘‘cattārimāni, bhikkhave, dhammasamādānāni. Katamāni cattāri? Atthi, bhikkhave, dhammasamādānaṃ paccuppannasukhaṃ āyatiṃ dukkhavipākaṃ; atthi, </p>',
            '<p class="bodytext">bhikkhave<a name="M1.0380"></a>, dhammasamādānaṃ paccuppannadukkhañceva āyatiñca dukkhavipākaṃ; atthi, bhikkhave, dhammasamādānaṃ paccuppannadukkhaṃ āyatiṃ sukhavipākaṃ; atthi, bhikkhave, dhammasamādānaṃ paccuppannasukhañceva āyatiñca sukhavipākaṃ’’.</p>',
          ]);
    }
  });
}
