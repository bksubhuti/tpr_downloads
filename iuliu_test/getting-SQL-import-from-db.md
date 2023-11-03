# Getting SQL Import from DB
For reverse engineering how the VRI Tipitaka XML maps to the SQLLite DB schema, it is necessary to compare the current SQL data to the XML.

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

Then I picked a book which I wanted to compare the XML to the SQL, for example Mūlapaṇṇāsapāḷi, and found it's book ID : `mula_ma_01`. Then I found each SQL `INSERT` statement with that book ID and copied them to a new SQL file `majjhimanikaya-mulapannasapali-reconstructred-import.sql`.