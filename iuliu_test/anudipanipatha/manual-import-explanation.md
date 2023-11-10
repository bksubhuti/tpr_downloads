Given the tables related to similar annya book niruttidipanipatha, the relevant tables for this import are only:
```
tocs
paragraphs
books
pages
```

I'll start with the single books INSERT.

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

They map to the existing annya categories in TPR: "vinaya", "abhidhamma" and "byākaraṇādi".

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