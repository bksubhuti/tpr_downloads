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

    // Given: multiple new page on first page
    // Should: split the pages
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            '<p class="bodytext">Catusaccantogadhattā <a name="M2.0001"></a> ārabbha kathesi <a name="M2.0002"></a> Nāmaggahaṇadivase panassa</p>'),
        [
          {
            'number': 1,
            'content': [
              '<p class="bodytext">Catusaccantogadhattā <a name="M2.0001"></a> ārabbha </p>',
            ]
          },
          {
            'number': 2,
            'content': [
              '<p class="bodytext">kathesi <a name="M2.0002"></a> Nāmaggahaṇadivase panassa</p>'
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
              '<p class="bodytext">Ganthappakāroca <a name="M0.0006"></a> pakāravantehi dhammehi sahevasijjhati, Phalavacanaṃ kāraṇaṃpidīpeti. Yathātaṃ asukasmiṃ raṭṭhe sammādevo vuṭṭhoti vutte taṃ raṭṭhaṃsu <a name="M0.0007"></a> bhikkhanti viññāyati. Asukaraṭṭhaṃ subhikkhantivutte tasmiṃ raṭṭhe sammādevo vuṭṭhoti viññāyatīti. Payojanaṃ pana abhidhammattha saddena dassetabbaṃ natthi, saṅgahavacanasāmatthiyeneva siddhaṃ hotīti adhippāyena ‘‘saṅgahasaddenā’’ti vuttaṃ. Sāmatthiyadassane pana suṭṭhu paripuṇṇavacanaṃ icchitabbaṃ hoti. Itarathā aniṭṭhatthappasaṅgopi siyāti imamatthaṃ dassetuṃ ‘‘taṃ na sundara’’nti vatvā ‘‘nahī’’tiādinā hetuvākyena tadatthaṃ sādheti.</p>'),
          [
            '<p class="bodytext">Ganthappakāroca <a name="M0.0006"></a> pakāravantehi dhammehi sahevasijjhati, Phalavacanaṃ kāraṇaṃpidīpeti. Yathātaṃ asukasmiṃ raṭṭhe sammādevo vuṭṭhoti vutte taṃ </p>',
            '<p class="bodytext">raṭṭhaṃsu <a name="M0.0007"></a> bhikkhanti viññāyati. Asukaraṭṭhaṃ subhikkhantivutte tasmiṃ raṭṭhe sammādevo vuṭṭhoti viññāyatīti. Payojanaṃ pana abhidhammattha saddena dassetabbaṃ natthi, saṅgahavacanasāmatthiyeneva siddhaṃ hotīti adhippāyena ‘‘saṅgahasaddenā’’ti vuttaṃ. Sāmatthiyadassane pana suṭṭhu paripuṇṇavacanaṃ icchitabbaṃ hoti. Itarathā aniṭṭhatthappasaṅgopi siyāti imamatthaṃ dassetuṃ ‘‘taṃ na sundara’’nti vatvā ‘‘nahī’’tiādinā hetuvākyena tadatthaṃ sādheti.</p>'
          ]);
    }
    {
      // Given: multiple word preceding marker match
      // Should: matches word closest to marker
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">ekam bhikkhave, dhammasamādānaṃ paccuppannasukhaṃ āyatiṃ dukkhavipākaṃ; atthi, bhikkhave<a name="M1.0380"></a>, dhammasamādānaṃ paccuppannadukkhañceva</p>'),
          [
            '<p class="bodytext">ekam bhikkhave, dhammasamādānaṃ paccuppannasukhaṃ āyatiṃ dukkhavipākaṃ; atthi, </p>',
            '<p class="bodytext">bhikkhave<a name="M1.0380"></a>, dhammasamādānaṃ paccuppannadukkhañceva</p>',
          ]);
    }
    {
      // Given: myanmar page marker preceded by another page marker
      // Should: ignore the marker and include it in new page
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">Ekuttarikanaye <a name="V0.0505"></a><a name="M0.0552"></a> placeholder</p>'),
          [
            '<p class="bodytext">Ekuttarikanaye <a name="V0.0505"></a><a name="M0.0552"></a> placeholder</p>'
          ]);
    }
    {
      // Given: myanmar page marker preceded by multiple other page markers
      // Should: ignore the markers and include them in new page
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">Anuvijjake <a name="T0.0396"></a><a name="P5.0160"></a><a name="M0.0281"></a><a name="V0.0304"></a> codako</p>'),
          [
            '<p class="bodytext">Anuvijjake <a name="T0.0396"></a><a name="P5.0160"></a><a name="M0.0281"></a><a name="V0.0304"></a> codako</p>'
          ]);
    }
    {
      // Given: word preceding myanmar page marker partially wrapped in span with an `-` separataor
      // Should: grab whole word with the span
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext"><span class="bld">Ādi</span>-saddena <a name="M0.0089"></a> placeholder</p>'),
          [
            '<p class="bodytext"><span class="bld">Ādi</span>-saddena <a name="M0.0089"></a> placeholder</p>'
          ]);
    }
    {
      // Given: word preceding myanmar page marker partially wrapped in span with an `’’` separator
      // Should: grab whole word with the span
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">placeholder <span class="bld">‘‘Tenevā’’</span>tiādinā <a name="M0.0089"></a> placeholder</p>'),
          [
            '<p class="bodytext">placeholder </p>',
            '<p class="bodytext"><span class="bld">‘‘Tenevā’’</span>tiādinā <a name="M0.0089"></a> placeholder</p>'
          ]);
    }
    {
      // Given: word preceding myanmar page marker fully wrapped in span
      // Should: grab whole word with the span
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext"><span class="bld">Pīḷanasaṅkhatasantāpavipariṇāmaṭṭhena</span> <a name="M0.0042"></a> placeholder</p>'),
          [
            '<p class="bodytext"><span class="bld">Pīḷanasaṅkhatasantāpavipariṇāmaṭṭhena</span> <a name="M0.0042"></a> placeholder</p>'
          ]);
    }
    {
      // Given: word preceding myanmar page marker with quotes
      // Should: grab whole word
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext">upādāyā’’ti <a name="M0.0042"></a> placeholder</p>'),
          [
            '<p class="bodytext">upādāyā’’ti <a name="M0.0042"></a> placeholder</p>'
          ]);
    }
    {
      // Given: preceding word immediately following param number
      // Should: include param number
      expect(
          splitParagraphOnWordPrecedingMarker(
              '<p class="bodytext"><a name="para321"></a><span class="paranum">321</span>. Āpattikarā <a name="T0.0294"></a><a name="P5.0115"></a><a name="M0.0211"></a><a name="V0.0235"></a> dhammā <a name="M0.0042"></a> placeholder</p>'),
          [
            '<p class="bodytext"><a name="para321"></a><span class="paranum">321</span>. Āpattikarā <a name="T0.0294"></a><a name="P5.0115"></a><a name="M0.0211"></a><a name="V0.0235"></a> </p>',
            '<p class="bodytext">dhammā <a name="M0.0042"></a> placeholder</p>'
          ]);
    }
  });

  test('matchFirstPrecedingWord', () {
    {
      expect(matchFirstPrecedingWord('anekabhāvo veditabbo')?.group(1),
          'veditabbo');
      expect(matchFirstPrecedingWord('vādaṃ nissāya ')?.group(1), 'nissāya');
      expect(
          matchFirstPrecedingWord(
                  'placeholder Ekuttarikanaye <a name="V0.0505"></a>')
              ?.group(1),
          'Ekuttarikanaye');
      expect(
          matchFirstPrecedingWord(
                  'placeholder Anuvijjake <a name="T0.0396"></a><a name="P5.0160"></a>')
              ?.group(1),
          'Anuvijjake');
      expect(
          matchFirstPrecedingWord(
                  'placeholder <span class="bld">Ādi</span>-saddena ')
              ?.group(1),
          '<span class="bld">Ādi</span>-saddena');
      expect(
          matchFirstPrecedingWord(
                  'placeholder <span class="bld">‘‘Tenevā’’</span>tiādinā ')
              ?.group(1),
          '<span class="bld">‘‘Tenevā’’</span>tiādinā');
      expect(
          matchFirstPrecedingWord(
                  'placeholder <span class="bld">Pīḷanasaṅkhatasantāpavipariṇāmaṭṭhena</span> ')
              ?.group(1),
          '<span class="bld">Pīḷanasaṅkhatasantāpavipariṇāmaṭṭhena</span>');
      expect(
          matchFirstPrecedingWord(
                  '<a name="para325"></a><span class="paranum">325</span>. Pañca ')
              ?.group(1),
          '<a name="para325"></a><span class="paranum">325</span>. Pañca');
      expect(
          matchFirstPrecedingWord(
                  '<a name="para321"></a><span class="paranum">321</span>. Āpattikarā <a name="T0.0294"></a><a name="P5.0115"></a>')
              ?.group(1),
          '<a name="para321"></a><span class="paranum">321</span>. Āpattikarā');
    }
  });
}
