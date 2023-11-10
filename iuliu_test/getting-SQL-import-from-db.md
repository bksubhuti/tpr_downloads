# Getting SQL Import from DB
For reverse engineering how the VRI Tipitaka XML maps to the SQLite DB schema, it is necessary to compare the current SQL data to the XML.

To do so I first dumped the DB schema:
```
sqlite3 tipitaka_pali.db ".schema" > tipitaka_schema_dump.sql
```

I list every table on one line:
```
sqlite3 tipitaka_pali.db "SELECT name FROM sqlite_master WHERE type='table';"
```

These tables seem most relevant for our book import analysis:
```
category
books
tocs
pages
paragraphs
paragraph_mapping
```

However I will dump the data for every table, that way I can see every relationship to an imported book I may need to reproduce:
```
sqlite3 tipitaka_pali.db <<EOF
.output tipitaka_data_dump.sql
.dump recent
.dump pali_attha_tika_match
.dump tran_books
.dump category
.dump tocs
.dump paragraphs
.dump paragraph_mapping
.dump dpd_word_split
.dump dpr_stem
.dump dpd_inflections_to_headwords
.dump search_history
.dump quote_of_day
.dump dictionary_history
.dump dictionary
.dump dictionary_books
.dump dpd
.dump books
.dump suttas
.dump dpd_grammar
.dump pages
.dump sqlite_sequence
.dump about
.dump bookmark
.dump words
.exit
EOF
```

Then, for each book I wanted to compare, I searched the book title in the `tipitaka_data_dump.sql` file to find the book ID, and then copied every every INSERT line containing that ID to a separate file using grip. Now I had the reconstucted SQL import for each book I wanted to compare:

Book Title => Book ID in the DB
Mūlapaṇṇāsapāḷi => mula_ma_01
Niruttidīpanīpāṭha => annya_sadda_10

```
grep "mula_ma_01" tipitaka_data_dump.sql > mulapannasapali-reverse-engineered-book-import.sql
grep "annya_sadda_10" tipitaka_data_dump.sql > niruttidipanipatha-reverse-engineered-book-import.sql
```

I used this command to find each table related to a specific book:
```
grep -oE "INSERT INTO [a-zA-Z0-9_]+" mulapannasapali/mulapannasapali-reverse-engineered-book-import.sql | uniq
grep -oE "INSERT INTO [a-zA-Z0-9_]+" niruttidipanipatha/niruttidipanipatha-reverse-engineered-book-import.sql | uniq
```

tables related to mulapannasapali book:
```
pali_attha_tika_match
tran_books
tocs
paragraphs
paragraph_mapping
books
suttas
pages
```

tables related to niruttidipanipatha book:
```
tocs
paragraphs
books
pages
```