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
