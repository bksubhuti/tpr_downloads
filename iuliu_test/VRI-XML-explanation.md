# VRI XML Explanation

## pg tag

The `<pg />` tag indicates a page beginning, eg:

```
<p rend="bodytext">‘‘Tejaṃ <pb ed="M" n="1.0002" />
```

They map to the page of respective physical edition of the Tipiṭaka. There are four edition types: M for Myanmmar, V for VRI, P for PTS (Pali Text Society) and T for Thailand.

```
<pb ed="M" n="1.0001" />
<pb ed="V" n="1.0001" />
<pb ed="P" n="1.0001" />
<pb ed="T" n="1.0001" />
```

The page beginning numbers `"1.0001"` have two parts. The first part indicates the volume number of a particular book (a book can be split over multiple physical volumes), the second part the page number of that volume.

For example, the Majjhimanikāya is split into three volumes in the Myanmar edition. The start of each volume mapping to Mūlapaṇṇāsapāḷi, Majjhimapaṇṇāsapāḷi and Uparipaṇṇāsapāḷi respectively. The PTS version also splits the Majjhimanikāya into three volumes, but the start of the third volume is doesn't mat to the start of Uparipaṇṇāsapāḷi, but starts later in that collection.

If the number starts with `0.`, it means the book is not split over volumes but has one physical book. For example, the Myanmmar edition of the Vinaya is one book one volume, so: `<pb ed="M" n="0.0001" />`.

But the PTS edition of the Vinaya is five volumes, so the count starts at 1:

```
<pb ed="P" n="1.0001" />
<pb ed="P" n="2.0001" />
<pb ed="P" n="3.0001" />
<pb ed="P" n="4.0001" />
<pb ed="P" n="5.0001" />
```

## note tag

The `<note></note>` tag indicates alternative readings:

```
<note>paṭhaviṃ (sī. syā. kaṃ. pī.)</note>
```

## rend attribute

I want to know each unique `rend` attribute value in the VRI XML files. Since the XML files are encoded in UTF-16, the `grep` util has trouble searching them. So I installed [`ripgrep`](https://github.com/BurntSushi/ripgrep) which handles searching UTF-16 text unlike `grep`.

I can find the unique rend values in a single XML file like this:

```
rg -o 'rend="[a-zA-Z]*"' iuliu_test/anudipanipatha/e0401n.nrf.xml | sort | uniq
```

I found the unique rend value in all XML files with this bash script:

```
#!/bin/bash

# Directory containing XML files
directory="./tipitaka-xml/romn"

# Function to search for rend attributes in a file
search_file() {
    file=$1
    rg -o 'rend="[a-zA-Z]*"' "$file"
}

export -f search_file

# Find all XML files, run search in parallel, and sort and deduplicate the results
find "$directory" -name '*.xml' | parallel -k search_file | sort | uniq > attributes.txt
```

The unique `rend` values in all the VRI XML are:

```
bodytext
bold
book
centre
chapter
dot
gathalast
hangnum
indent
nikaya
paranum
subhead
subsubhead
title
unindented
```

## Converting VRI XML to HTML

To use the tipitaka-latn.xsl file to convert your XML file (e0401n.nrf.xml) into HTML, you will need to perform an XSLT transformation. XSLT (eXtensible Stylesheet Language Transformations) is a language for transforming XML documents into other XML documents or other formats such as HTML.

We'll use the `xsltproc` command-line tool XSLT processor:
```
xsltproc tipitaka-latn.xsl ./anudipanipatha/e0401n.nrf.xml > ./anudipanipatha/e0401n.nrf.html
xsltproc tipitaka-latn.xsl ./mulapannasapali/s0201m.mul.xml > ./mulapannasapali/s0201m.mul.html
xsltproc tipitaka-latn.xsl ./niruttidipanipatha/e0201n.nrf.xml > ./niruttidipanipatha/e0201n.nrf.html
```
