# Getting SQL Import from DB
For reverse engineering how the VRI Tipitaka XML maps to the SQLite DB schema, it is necessary to compare the current SQL data to the XML.

To do so I first dumped the DB schema:
```
sqlite3 tipitaka_pali.db ".schema" > tipitaka_schema_dump.sql
```

Then I found which tables are concerned for our analysis:
```
category
books
tocs
pages
paragraphs
paragraph_mapping
```

Then I dumped the current DB data into an SQL file:
```
sqlite3 tipitaka_pali.db <<EOF
.output tipitaka_data_dump.sql
.dump category
.dump books
.dump tocs
.dump pages
.dump paragraphs
.dump paragraph_mapping
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