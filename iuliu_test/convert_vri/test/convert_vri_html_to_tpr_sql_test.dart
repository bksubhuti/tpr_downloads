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
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            readFile('e0401n-partial.nrf.html')),
        [
          {'number': 1, 'content': readFile("page1.html")},
          {'number': 2, 'content': readFile("page2.html")},
          {'number': 3, 'content': readFile("page3.html")}
        ]);

    // Given: a text where a new page immediately follows a chapter and subhead heading
    // Should: include the chapter and subhead heading in new page not previous page
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            readFile('e0201n-partial.nrf.html')),
        [
          {'number': 1, 'content': readFile("page1-mulapannasapali.html")},
          {'number': 2, 'content': readFile("page2-mulapannasapali.html")},
        ]);

    // Given: a text where there are three new pages on the same line
    // Expect: split the first new page on the line to it's own paragraph, split the second then page to it's own paragraph, start a new page for the third one
    expect(
        extractMyanmarEditionPagesFromVriHtml(
            readFile('e0803n-multiple-pages-same-line-case.html')),
        [
          {'number': 1, 'content': '<p></p>'},
          {
            'number': 136,
            'content':
                '<p class="unindented"><span class="bld">Ettha mano</span>saddena samānādhikaraṇo ‘‘patita’’nti saddo kasmā sannihito. Yasmā ca samānādhikaraṇapadaṃ napuṃsakaliṅgabhāvena sannihitaṃ, tasmā saddantarasannidhānavasena <span class="bld">mano</span>saddo napuṃsakaliṅgoti ñāyatīti? Tanna, samānādhikaraṇapadassa sabbattha liṅgavisesājotanato. Yadi hi samānādhikaraṇapadaṃ sabbattha liṅgavisesaṃ joteyya, ‘‘cattāro indriyānī’’ti etthāpi ‘‘cattāro’’ti <a name="M0.0136"></a> padaṃ <span class="bld">indriya</span>saddassa pulliṅgattaṃ kareyya, na ca kātuṃ sakkoti. <span class="bld">Indriya</span>saddo hi ekantena napuṃsakaliṅgo. Yadi tumhe ‘‘patita’’nti samānādhikaraṇapadaṃ nissāya <span class="bld">mano</span>saddassa napuṃsakaliṅgattamicchatha, ‘‘cattāro indriyānī’’ti etthapi ‘‘cattāro’’ti samānādhikaraṇapadaṃ nissāya <span class="bld">indriya</span>saddassa pulliṅgattaṃ icchathāti. Na mayaṃ bho <span class="bld">indriya</span>saddassa pulliṅgattaṃ icchāma, atha kho napuṃsakaliṅgattaṃyeva icchāma, ‘‘cattāro’’ti padaṃ liṅgavipallāsavasena ṭhitattā ‘‘cattārī’’ti gaṇhāma, tasmā ‘‘cattāri indriyānī’’ti atthaṃ dhāremāti. Yadi evaṃ ‘‘patitaṃ asubhesu munissa mano’’ti etthāpi ‘‘patita’’nti padaṃ liṅgavipallāsavasena ṭhitanti mantvā ‘‘patito’’ti atthaṃ dhārethāti. Na dhārema ettha liṅgavipallāsassa anicchitabbato. Yadi hi <span class="bld">mano</span>saddo pulliṅgo siyā, taṃsamānādhikaraṇapadaṃ ‘‘patito’’ti vattabbaṃ siyā. Kimācariyo evaṃ vattuṃ na jāni, jānamāno eva so ‘‘patito’’ti nāvoca, ‘‘patita’’nti panāvoca, tena ñāyati <span class="bld">‘‘mano</span>saddo napuṃsakaliṅgo’’ti. Mā tumhe evaṃ vadetha, samānādhikaraṇapadaṃ nāma katthaci padhānaliṅgamanuvattati, katthaci nānuvattati, tasmā na taṃ liṅgavisesajotane ekantato pamāṇaṃ. ‘‘Mātugāmo, orodho, āvuso visākha, ehi visākhe, cittāni aṭṭhīnī’’ti evamādirūpavisesoyeva pamāṇaṃ. Yadi samānādhikaraṇapadeyeva liṅgaviseso adhigantabbo siyā, ‘‘cattāro ca mahābhūtā’’tiādīsu liṅgavavatthānaṃ na siyā. Yasmā evamādīsupi ṭhānesu liṅgavavatthānaṃ hotiyeva. Kathaṃ? ‘‘Cattāro’’ti pulliṅgaṃ ‘‘mahābhūtā’’ti napuṃsakanti, tasmā ‘‘patitaṃ asubhesu munissa mano’’ti etthāpi ‘‘patita’’nti napuṃsakaliṅgaṃ ‘‘mano’’ti pulliṅganti vavatthānaṃ bhavatīti. Idaṃ sutvā te tuṇhī bhavissanti. </p>'
          },
          {
            'number': 137,
            'content':
                '<p class="unindented">Tato <a name="M0.0137"></a> tesaṃ tuṇhībhūtānaṃ idaṃ vattabbaṃ – yasmā <span class="bld">mano</span>gaṇe pavattānaṃ padānaṃ samānādhikaraṇapadāni katthaci napuṃsakavasena yojetabbāni, tasmā <span class="bld">mano</span>gaṇe pamukhassa <span class="bld">mano</span>saddassapi samānādhikaraṇapadāni katthaci napuṃsakavasena yojitāni. Tathā hi pubbācariyā ‘‘saddhammatejavihataṃ vilayaṃ khaṇena, veneyyasattahadayesu tamo’payāti. Dukkhaṃ vaco etasminti dubbaco. Avanataṃ siro yassa soyaṃ avaṃsiro, appakaṃ rāgādi rajo yesaṃ paññāmaye akkhimhi te apparajakkhā’’tiādinā saddaracanaṃ kubbiṃsu, na pana tehi <span class="bld">vaco siro rajo</span>saddādīnaṃ napuṃsakaliṅgattaṃ vibhāvetuṃ īdisī saddaracanā katā, atha kho <span class="bld">siromano</span>saddānaṃ <span class="bld">mano</span>gaṇe pavattānaṃ pulliṅgasaddānaṃ katthacipi īdisānipi liṅgavipallāsavasena ṭhitāni samānādhikaraṇapadāni hontīti paresaṃ jānāpanādhippāyavatiyā anukampāya viracitā. Etthāpi tumhākaṃ matena <span class="bld">mano</span>saddassa napuṃsakaliṅgatte sati <span class="bld">vaco siro</span> iccādayopi napuṃsakaliṅgattamāpajjanti napuṃsakaliṅgavasena samānādhikaraṇapadānaṃ niddiṭṭhattā. Kiṃ panetesampi napuṃsakaliṅgattaṃ icchathāti. Addhā te idampi sutvā nibbeṭhetumasakkontā tuṇhī bhavissanti. Kiñcāpi te aññaṃ gahetabbakāraṇaṃ apassantā evaṃ vadeyyuṃ ‘‘yadi bho <span class="bld">mano</span> saddo napuṃsakaliṅgona hoti, kasmā veyyākaraṇā <span class="bld">‘mano</span>saddo napuṃsakaliṅgo’ti vadantī’’ti? Te vattabbā – yadi tumhe veyyākaraṇamataṃ gahetvā <span class="bld">mano</span>saddassa napuṃsakaliṅgattaṃ rocetha, nanu bhagavāyeva loke asadiso mahāveyyākaraṇo mahāpuriso visārado parappavādamaddano. Bhagavantañhi padakā veyyākaraṇā ambaṭṭhamāṇavapokkharasātisoṇadaṇḍādayo ca brāhmaṇā saccakanigaṇṭhādayo ca </p>'
          },
          {
            'number': 138,
            'content':
                """<p class="unindented">paribbājakā <a name="M0.0138"></a> vādena na sampāpuṇiṃsu, aññadatthu bhagavāyeva mattavāraṇagaṇamajjhe kesarasīho viya asambhīto nesaṃ nesaṃ vādaṃ maddesi, mahante ca ne atthe patiṭṭhāpesi, evaṃvidhena bhagavatā vohārakusalena yasmā ‘‘kāyo anicco’’ti ca ‘‘kāyo dukkho, mano anicco, mano dukkho’’ti ca evamādinā vuttā <span class="bld">mano</span>saddassa pulliṅgabhāvasūcanikā bahū pāḷiyo dissanti, tasmā <span class="bld">mano</span>saddo pulliṅgoyevāti sārato paccetabboti. Evaṃ vuttā te niruttarā appaṭibhānā maṅkubhūtā pattakkhandhā adhomukhā pajjhāyissanti.</p>
<p class="bodytext">Idāni <span class="bld">sara</span>saddādīnaṃ nāmikapadamālā visesato vuccate –</p>"""
          },
          {
            'number': 139,
            'content':
                '<p class="bodytext">Ayaṃ <a name="M0.0139"></a> pana <span class="bld">purisa</span>naye ekadesena paviṭṭhassa <span class="bld">mano</span>gaṇapakkhikassa āyukoṭṭhāsavācakassa <span class="bld">vaya</span>saddassa nāmikapadamālā – vayo, vayā. Vayaṃ, vayo, vaye. Vayasā, vayena, vayehi, vayebhīti <span class="bld">mana</span>nayena ñeyyo. Tassa ceto paṭissosi, araññe luddagocaro. Cetā haniṃsu vedabbaṃ.</p>'
          }
        ]);

    var originalList =
        extractMyanmarEditionPagesFromVriHtml(readFile('e0401n.nrf.html'));

    var modifiedList = originalList.map((page) {
      var newPage = Map.from(page);
      newPage.remove('content');
      return newPage;
    }).toList();

    List<Map<String, int>> numberList = [];

    for (int i = 1; i <= 324; i++) {
      numberList.add({'number': i});
    }

    // Given: a full book
    // Expect: every page in the book
    expect(modifiedList, numberList);
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
          {'number': 1, 'content': 'x'},
          {'number': 2, 'content': 'x'},
          {'number': 3, 'content': 'x'},
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
            'content': 'x',
            'paragraphs': [1]
          },
          {'number': 2, 'content': 'x', 'paragraphs': []},
          {
            'number': 3,
            'content': 'x',
            'paragraphs': [1, 2]
          },
        ]);
  });

  test('createPageSQLImportStatements', () {
    expect(
        createPageSQLImportStatements('annya_sadda_18', [
          {
            'number': 1,
            'content': 'x\nx',
            'paragraphs': [1]
          },
          {'number': 2, 'content': 'x', 'paragraphs': []},
          {
            'number': 3,
            'content': 'x',
            'paragraphs': [1, 2]
          }
        ]),
        [
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',1,'xx','-1-');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',2,'x','');",
          "INSERT INTO pages (bookid, page, content, paranum) VALUES('annya_sadda_18',3,'x','-1-2-');",
        ]);
  });

  test('splitParagraphWithMultiplePages', () {
    String paragraphHtml =
        '<p class="unindented"> <span class="bld">Ettha mano</span><a name="M0.0136"></a>bhavissanti. Tato <a name="M0.0137"></a> tesaṃ tuṇhībhūtānaṃ <a name="para3"></a> saccakanigaṇṭhādayo ca paribbājakā <a name="M0.0138"></a> vādena na sampāpuṇiṃsu </p>';
   Document doc = parser.parse(paragraphHtml);
    Element paragraph = doc.querySelector('p')!;
    List<String> result = splitParagraphWithMultiplePages(paragraph);

    expect(result[0], ' <span class="bld">Ettha mano</span><a name="M0.0136"></a>bhavissanti. ');
    expect(result[1], 'Tato <a name="M0.0137"></a> tesaṃ tuṇhībhūtānaṃ <a name="para3"></a> saccakanigaṇṭhādayo ca ');
    expect(
        result[2], 'paribbājakā <a name="M0.0138"></a> vādena na sampāpuṇiṃsu ');
    expect(result.length, 3);
  });
}
