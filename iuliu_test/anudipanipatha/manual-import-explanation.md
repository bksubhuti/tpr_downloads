Given the tables related to similar annya book niruttidipanipatha, the relevant tables for this import are only:

```
tocs
paragraphs
books
pages
```

## books table

```
CREATE TABLE "books" (
	"id"	TEXT,
	"basket"	TEXT,
	"category"	NUMERIC,
	"name"	TEXT,
	"firstpage"	INTEGER,
	"lastpage"	INTEGER,
	"pagecount"	INTEGER,
	PRIMARY KEY("id")
);
```

The annya books have these existing imports:
```
INSERT INTO books VALUES('annya_vi_01','annya','annya_vi','dvemātikā kaṅkhāvitaraṇī',1,357,357);
INSERT INTO books VALUES('annya_vi_02','annya','annya_vi','vinayasaṅgahaaṭṭhakathā',1,468,468);
INSERT INTO books VALUES('annya_vi_03','annya','annya_vi','vinayavinicchayo uttaravinicchayo',1,395,395);
INSERT INTO books VALUES('annya_vi_04','annya','annya_vi','khuddasikkhā mūlasikkhā',1,498,498);
INSERT INTO books VALUES('annya_vi_07','annya','annya_vi','vinayālaṅkāraṭīkā (pa)',1,424,424);
INSERT INTO books VALUES('annya_vi_08','annya','annya_vi','vinayālaṅkāraṭīkā (du)',1,434,434);
INSERT INTO books VALUES('annya_vi_09','annya','annya_vi','kaṅkhā purāṇa abhinava ṭīkā',1,489,489);
INSERT INTO books VALUES('annya_vi_10','annya','annya_vi','vinayavinicchayaṭīkā (pa)',1,571,571);
INSERT INTO books VALUES('annya_vi_11','annya','annya_vi','vinayavinicchayaṭīkā (du)',1,530,530);
INSERT INTO books VALUES('annya_vi_12','annya','annya_vi','pācityādiyojanā',1,655,655);
INSERT INTO books VALUES('annya_bi_01','annya','annya_bi','visuddhimaggo (pa)',1,370,370);
INSERT INTO books VALUES('annya_bi_02','annya','annya_bi','visuddhimaggo (du)',1,356,356);
INSERT INTO books VALUES('annya_bi_03','annya','annya_bi','visuddhimaggamahāṭīkā (pa)',1,461,461);
INSERT INTO books VALUES('annya_bi_04','annya','annya_bi','visuddhimaggamahāṭīkā (du)',1,535,535);
INSERT INTO books VALUES('annya_bi_05','annya','annya_bi','abhidhammatthasaṅgaho',1,68,68);
INSERT INTO books VALUES('annya_bi_06','annya','annya_bi','abhidhammatthavibhāvinīṭīkā',69,279,211);
INSERT INTO books VALUES('annya_bi_07','annya','annya_bi','paramatthadīpanī',1,456,456);
INSERT INTO books VALUES('annya_sadda_01','annya','annya_sadda','kaccāyanabyākaraṇaṃ',1,315,315);
INSERT INTO books VALUES('annya_sadda_02','annya','annya_sadda','padarūpasiddhi',1,421,421);
INSERT INTO books VALUES('annya_sadda_03','annya','annya_sadda','moggallānasuttapāṭho',1,292,292);
INSERT INTO books VALUES('annya_sadda_05','annya','annya_sadda','moggallānapañcikāṭīkā',1,286,286);
INSERT INTO books VALUES('annya_sadda_06','annya','annya_sadda','payogasiddhipāḷi',1,304,304);
INSERT INTO books VALUES('annya_sadda_07','annya','annya_sadda','saddanītippakaraṇaṃ (padamālā)',1,418,418);
INSERT INTO books VALUES('annya_sadda_08','annya','annya_sadda','saddanītippakaraṇaṃ (dhātumālā)',1,391,391);
INSERT INTO books VALUES('annya_sadda_09','annya','annya_sadda','saddanītippakaraṇaṃ (suttamālā)',1,489,489);
INSERT INTO books VALUES('annya_sadda_10','annya','annya_sadda','niruttidīpanīpāṭha',1,563,563);
INSERT INTO books VALUES('annya_sadda_11','annya','annya_sadda','abhidhānappadīpikā',1,99,99);
INSERT INTO books VALUES('annya_sadda_12','annya','annya_sadda','abhidhānappadīpikāṭīkā',1,621,621);
INSERT INTO books VALUES('annya_sadda_13','annya','annya_sadda','vuttodayaṃ',192,201,10);
INSERT INTO books VALUES('annya_sadda_14','annya','annya_sadda','subodhālaṅkāro',156,189,34);
INSERT INTO books VALUES('annya_sadda_15','annya','annya_sadda','subodhālaṅkāraṭīkā',1,362,362);
INSERT INTO books VALUES('annya_sadda_16','annya','annya_sadda','kaccāyanasāra',1,16,16);
INSERT INTO books VALUES('annya_sadda_17','annya','annya_sadda','saddatthabhedacintā',1,82,82);
```

They map to the existing annya categories visible in TPR under annya tab: "vinaya", "abhidhamma" and "byākaraṇādi".

I assume Anudīpanīpāṭha is similar in content to Niruttidīpanīpāṭha, so it would go in the "annya_sadda" (byākaraṇādi) category.

The order in which the "annya_sadda" books are inserted match with their numbering and the order they are displaed in TPR. For the sake of not messing with the current order and ID numbering, I would append Anudīpanīpāṭha to the end of the list:

```
INSERT INTO books VALUES('annya_sadda_18','annya','annya_sadda','anudīpanīpāṭha',1,324,324);
```

The last page in the XML record is:

```
<pb ed="M" n="0.0324">
```

So the lastpage and pagecount fields are 324.

## tocs table

I ran this command to find the unique rend attribute values:

```
rg -o 'rend="[a-zA-Z]*"' iuliu_test/anudipanipatha/e0401n.nrf.xml | sort | uniq
```

Unique values:

```
rend="bodytext"
rend="bold"
rend="book"
rend="centre"
rend="chapter"
rend="dot"
rend="gathalast"
rend="indent"
rend="paranum"
rend="subhead"
```

The relevant values for the toc table are:

```
chapter
subhead
```

So I searched for those:

```
rg 'rend="(chapter|subhead)"' iuliu_test/anudipanipatha/e0401n.nrf.xml
```

Giving me this list:

```
17:<p rend="chapter">1. Cittasaṅgahaanudīpanā</p>
585:<p rend="chapter">2. Cetasikasaṅgahaanudīpanā</p>
829:<p rend="chapter">3. Pakiṇṇakasaṅgahaanudīpanā</p>
865:<p rend="chapter">4. Vīthisaṅgahaanudīpanā</p>
961:<p rend="chapter">5. Vīthimuttasaṅgahaanudīpanā</p>
1141:<p rend="chapter">6. Rūpasaṅgahaanudīpanā</p>
1289:<p rend="chapter">7. Samuccayasaṅgahaanudīpanā</p>
1425:<p rend="chapter">8. Paccayasaṅgahaanudīpanā</p>
1557:<p rend="chapter">9. Kammaṭṭhānasaṅgahaanudīpanā</p>
1705:<p rend="subhead">Nigamagāthāsu.</p>
1713:<p rend="subhead">Dīpaniyā nigamagāthāsu.</p>
```

the `tocs` table has the columns:

```
CREATE TABLE "tocs" (
	"book_id"	TEXT,
	"name"	TEXT,
	"type"	TEXT,
	"page_number"	INTEGER,
  simple TEXT
);
```

Examples from mulapannasapali:

```
INSERT INTO tocs VALUES('mula_ma_01','1. mūlapariyāyavaggo','chapter',1,'1. mulapariyayavaggo');
INSERT INTO tocs VALUES('mula_ma_01','dassanā pahātabbāsavā','subhead',9,'dassana pahatabbasava');
```

For anudīpanīpāṭha, the SQL should be like this:

```
INSERT INTO tocs VALUES('annya_sadda_18', '1. cittasaṅgahaanudīpanā', 'chapter', 1, NULL);
INSERT INTO tocs VALUES('annya_sadda_18', 'nigamagāthāsu.', 'subhead', 322, NULL);
```

### `book_id`

the same `book_id` as from the books table

### `type` column

`chapter` rend value maps to `chapter` type column
`subhead` rend value maps to `subhead` type column

### `page_number` column

the `page_number` column value maps to the nearest previous Myammar edition page.

For example from mulapannasapali, this subhead is page 9 and the `<pb ed="M" n="1.0009" />` is before the `p` subhead tag:

```
INSERT INTO tocs VALUES('mula_ma_01','dassanā pahātabbāsavā','subhead',9,'dassana pahatabbasava');
```

So for our the case of anudīpanīpāṭha, '1. cittasaṅgahaanudīpanā' starts at page 1 (and is before the first pb tag) and 'nigamagāthāsu' is page 322, since the nearest previous pb tag is `<pb ed="M" n="0.0322" />`.

### `simple` column

this column is no longer necessary, so I can enter `NULL` values here.

## paragraphs table

The table schema:

```
CREATE TABLE "paragraphs" (
  "book_id" TEXT,
  "paragraph_number" INTEGER,
  "page_number" INTEGER
);
```

Example SQL import from niruttidipanipatha:

```
INSERT INTO paragraphs VALUES('annya_sadda_10',1,1);
INSERT INTO paragraphs VALUES('annya_sadda_10',2,1);
INSERT INTO paragraphs VALUES('annya_sadda_10',3,1);
INSERT INTO paragraphs VALUES('annya_sadda_10',4,1);
INSERT INTO paragraphs VALUES('annya_sadda_10',1,2);
INSERT INTO paragraphs VALUES('annya_sadda_10',2,2);
INSERT INTO paragraphs VALUES('annya_sadda_10',3,2);
INSERT INTO paragraphs VALUES('annya_sadda_10',4,2);
INSERT INTO paragraphs VALUES('annya_sadda_10',5,3);
INSERT INTO paragraphs VALUES('annya_sadda_10',6,3);
INSERT INTO paragraphs VALUES('annya_sadda_10',7,3);
INSERT INTO paragraphs VALUES('annya_sadda_10',8,4);
INSERT INTO paragraphs VALUES('annya_sadda_10',9,6);
INSERT INTO paragraphs VALUES('annya_sadda_10',10,6);
```

niruttidipanipatha VRI XML having removed everything except `hi` and `pb` tags:

```
<hi rend="paranum">1</hi>
<pb ed="M" n="0.0001" />
<hi rend="paranum">2</hi>
<hi rend="paranum">3</hi>
<hi rend="paranum">4</hi>
<pb ed="M" n="0.0002" />
<hi rend="paranum">1</hi>
<hi rend="paranum">2</hi>
<hi rend="paranum">3</hi>
<hi rend="paranum">4</hi>
<pb ed="M" n="0.0003" />
<hi rend="paranum">5</hi>
<hi rend="paranum">6</hi>
<hi rend="paranum">7</hi>
<pb ed="M" n="0.0004" />
```

So the paragraphs table maps the paragraph to the nearest previous page.

For anudipatha, most pages don't have paragraphs:

```
<pb ed="M" n="0.0001" />
<pb ed="M" n="0.0002" />
<pb ed="M" n="0.0003" />
<pb ed="M" n="0.0004" />
<hi rend="paranum">1</hi>
<pb ed="M" n="0.0005" />
<pb ed="M" n="0.0006" />
<pb ed="M" n="0.0007" />
<hi rend="paranum">2</hi>
<pb ed="M" n="0.0008" />
<hi rend="paranum">3</hi>
<pb ed="M" n="0.0009" />
<pb ed="M" n="0.0010" />
<hi rend="paranum">4</hi>
```

So I assume I only need import the existing paragraphs to the pages and pages without paragraphs don't have any:

```
INSERT INTO paragraphs VALUES('annya_sadda_18',1,4);
INSERT INTO paragraphs VALUES('annya_sadda_18',2,7);
INSERT INTO paragraphs VALUES('annya_sadda_18',3,8);
INSERT INTO paragraphs VALUES('annya_sadda_18',4,10);
```

## pages table
