BEGIN TRANSACTION;
DELETE FROM "dictionary_books" WHERE id=51;
DELETE FROM "dictionary" WHERE book_id=51;
COMMIT;
BEGIN TRANSACTION;
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (51,'Pali Indonesian',15,0);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṃsa','<p class="definition">m.  bahu (aṃse karoti  meletakkan di bahu, menyandang, memanggul, memikul); bagian, hal berbagi; sudut, penjuru, ujung, tepi; ~kūṭa m. nt. pundak, bahu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akallaka','<p class="definition">a.  sakit, tak sehat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akāmaka','<p class="definition">a.  tak ingin, tak mau, tak sudi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akiriya','<p class="definition">a.  tidak praktis, tidak bijaksana, bodoh;  nt.  tanpa tindakan; non-aksi;  ~vāda a. yang berpaham (yang dikemukakan Pūraṇa-kassapa) bahwa semua perbuatan tidak menghasilkan ganjaran; yang menganut paham tanpa-tindakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akuppa','<p class="definition">a.  tak tergoyahkan, pasti, teguh, kokoh, aman, mantap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akusala','<p class="definition">a.  yang tidak bajik, buruk, jahat;  nt. keburukan, kejahatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkamati','<p class="definition">menginjak, menapaki, menghampiri, menyerang, menendang, menabrak, menerjang, melejang, bangkit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkosa','<p class="definition">m.  memarahi, mencerca, memaki, mencaci.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkosati','<p class="definition">memarahi, mencaci-maki, menghardik, mengomeli, mengutuk, mencerca.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkha','<p class="definition">1.  m. gandar atau as roda; 2. m. guli (kelereng, gundu); dadu; 3. a. bermata; ~dassa  m. seseorang yang mencermati (memeriksa) dadu; wasit; hakim; ~dhutta  m. pejudi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhaka','<p class="definition">m.  tulang leher.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhayita','<p class="definition">a.  tak rusak, belum rusak, belum membusuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhara','<p class="definition">a.  tetap, awet, tahan lama, abadi; nt. sg. suku kata, aksara, huruf; pl. suara, bunyi, nada, kata-kata, tulisan. [aksara ← Skt. akṣara]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkharikā','<p class="definition">f.  tebak huruf (aksara).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhāta','<p class="definition">(pp dari akkhāti ) diumumkan, dinyatakan, dimaklumkan, diberitahu, ditunjukkan; kata kerja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhāti','<p class="definition">menyatakan, memaklumkan, mengumumkan, memberitahukan, mengutarakan, mengemukakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhāna','<p class="definition">m.  hal mengisahkan, menceritakan; kisah, cerita, legenda, laporan, pemaparan, pengisahan; pengisah, pencerita, pemapar, pelapor.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhi','<p class="definition">nt.  mata; ~rogin  a. berpenyakit mata, menderita penyakit mata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agada','<p class="definition">m. obat, antidot.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agāra','<p class="definition">nt.  rumah atau pondok; (kehidupan be)rumah tangga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agāriya','<p class="definition">m.  umat awam, umat berumah tangga, perumah tangga; anagāriyā f. kehidupan tidak berumah tangga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agga','<p class="definition">a.  pertama, terdepan; tertinggi, terpuncak; terluhur; terbaik; termasyhur, terutama, kampiun; nt. puncak, titik, ujung; rumah (kecil), kediaman, naungan, pondok, ruang, aula; ~kārikā pencoba pertama, pencicip (pengecap) pertama, contoh (sampel), uji-coba pertama; ~mahesī f. permaisuri (istri raja yang utama).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aggañña','<p class="definition">a.  yang tertinggi, terkemuka, terpenting.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aggi','<p class="definition">m.  api, nyala api, lidah api, percikan (bunga) api, lautan api, kobaran api; api persembahan; Dewa Api Agni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aggha','<p class="definition">m.  harga, nilai. [harga/argo ← Skt. argha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agghanaka','<p class="definition">a.  bernilai, sama dengan, senilai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('agghāpeti','<p class="definition">(kaus. dari agghati )  menilai, memberi harga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅga','<p class="definition">nt.  tungkai, anggota tubuh; bagian, anggota, unsur, faktor; tanda, ciri, atribut, kualitas, hal (iminā p’aṅgena karena inilah); urusan, kepentingan, minat; ~jāta m.  “bagian pembeda”, diri pria atau wanita, alat kelamin; ~maṅgāni semua anggota tubuh, sekujur badan..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgaṇa','<p class="definition">nt.  lapangan, halaman, pelataran, alun-alun, medan, arena, gelanggang; noda, noda batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgāra','<p class="definition">m. nt.  arang, bara (api); ~kaṭāha  m. nt. wadah bara api, anglo.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgāraka','<p class="definition">a.  seperti bara, berwarna merah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅguṭṭha','<p class="definition">m.  ibu jari, jempol.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgula','<p class="definition">m.  jari tangan atau jari kaki; ukuran satu jari (menurut Bhikkhu Thanissaro 1 sugataṅgula  = 2,08 cm).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgulī  (aṅguli)','<p class="definition">f.  jari; ~patodaka  menggamit (nudging with the fingers), menggelitik, menggilik-gilik; ~poṭha  snapping or cracking the fingers, memetik jari, menjentikkan jari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('accaya','<p class="definition">m.  hal berlalu, lewat, hal melewati atau melampaui, mengatasi, menaklukkan; hal melanggar, pelanggaran; meninggal dunia, berakhir, mati; accayena setelah lewat, setelah meninggal dunia, setelah berakhir, setelah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('acci (accī)','<p class="definition">f.  nyala api, pijar, cahaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('accha','<p class="definition">1. a. jernih, bening, tembus pandang, transparan; 2. m. beruang; 3. = akkha ; 4. a. merusak, menyakitkan, jahat, buruk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('acchati','<p class="definition">duduk, duduk diam; berdiam, tinggal menyendiri; berada, hidup.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('accharā','<p class="definition">1.  f.  bidadari (yang melayani dewa dengan tarian dan nyanyian); 2.ujung jari dipertemukan, penjentikan jari, sekejap; ekaccharakkhaṇe  dalam seketika; ~saṅghāta  memetik jari, menjentikkan jari (= aṅgulipoṭhana ). [apsara ← Skt. apsarā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('acchariya','<p class="definition">a. nt.  mengagumkan, luar biasa, hebat, mengherankan, aneh, dahsyat, mencengangkan, menakjubkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('acchādeti','<p class="definition">menutupi, mengenakan (busana), melingkupi, mengisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aja','<p class="definition">m.  kambing (jantan);  ~pāla  penggembala kambing.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajaka','<p class="definition">m. kambing jantan; f.  ajikā, ajiyā .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajātabuddhi','<p class="definition">f.  hal masih lugu, belum memiliki kebijaksanaan intelektual.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajina','<p class="definition">nt.  kulit atau jangat antelop hitam yang dikenakan para petapa sebagai pakaian; ~kkhipa nt.  jubah yang terbuat dari jalinan potongan/setrip kulit antelop hitam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajja','<p class="definition">adv. hari ini, sekarang; ~tagge  adv.  mulai hari ini, sejak sekarang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhatta','<p class="definition">a.  yang bersifat pribadi, yang berhubungan dengan diri sendiri, yang muncul dari dalam, batiniah;  ajjhattaṃ adv. secara pribadi, dari dalam, ke dalam (lawan dari lahiriah, ke luar).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhācarati','<p class="definition">berperilaku sesuai dengan, mencumbui, melanggar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhācāra','<p class="definition">m.  perilaku atau tata laku remeh (sepele) (di luar parajika dan sangghadisesa); pelanggaran; cumbu-cumbuan; hubungan seksual.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhāpajjati','<p class="definition">melakukan pelanggaran, melanggar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhāvasati','<p class="definition">menghuni, hidup dalam, tinggal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhāsaya','<p class="definition">m.  niat, keinginan, dambaan, angan-angan, tekad, watak, pembawaan, kecenderungan, kecondongan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhupagacchati','<p class="definition">mendatangi, tiba pada, memperoleh, menyetujui, menerima; rela berkeliling.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhupagata','<p class="definition">(pp dari ajjhupagacchati )  telah datang pada, memperoleh, mencapai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhupekkhati','<p class="definition">melihat, meyaksikan, mengamati, memandang dengan penuh perhatian, mengawasi, menjaga; mengabaikan, tidak peduli, acuh tak acuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhesanā','<p class="definition">f.  permohonan, permintaan, hal mengundang, mempersilakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhokāsa','<p class="definition">m.  udara terbuka, ruang terbuka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjhogāhati  (ajjhogāheti)','<p class="definition">terjun ke dalam, memasuki, masuk ke dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('añjali','<p class="definition">m. perentangan, penangkupan kedua tapak tangan di depan dada sebagai tanda penghormatan; añjaliṃ paṇāmeti memberi hormat dengan merangkapkan tangan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('añña','<p class="definition">a.  yang lain, lain; aññamaññaṃ saling, satu sama lain; aññena aññaṃ menjawab dengan jawaban lain (lain pertanyaan lain jawaban); yāyaññaṃ  yang lain.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññatara','<p class="definition">a.  suatu, tertentu. (→ eka)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññattha','<p class="definition">☞  aññatra</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññatra','<p class="definition">adv.  di tempat lain, di suatu tempat lain; lain; tetapi, selain, kecuali; kiṃ aññatra siapa lagi selain, di luar; nāññatra  walaupun … tidak …, terlepas dari apakah … atau tidak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññathatta','<p class="definition">nt.  perubahan, pengubahan, perpindahan, pemindahan; perbedaan; kesalahan, kekeliruan, pengandaian; plin-plan, perubahan pikiran, kebimbangan, keragu-raguan, terombang-ambing.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññathā','<p class="definition">adv.  dengan cara yang berbeda, sebaliknya, secara lain.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aññā','<p class="definition">f.  pengetahuan, pemahaman, pengertian, pengetahuan sempurna, pengetahuan tertinggi;  aññāya saṇṭhaheyya dapat meraih pengetahuan tertinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭa','<p class="definition">1. m. menara pengintai; menara; podium, panggung; 2. m. perkara hukum, kasus, sebab atau alasan; 3. a. menderita, tersiksa, dilanda, dianiaya, diganggu, disakiti; ~ssara  m. suara mengerang atau merintih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭaka','<p class="definition">m.  panggung yang dipasang di atas tiang-tiang atau pohon, perancah, tangga-tangga; podium.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭiyati','<p class="definition">berada dalam kesulitan atau kecemasan, cemas, risau, merasa canggung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭha','<p class="definition">1. a.  delapan [asta ← Skt. aṣṭa]; 2. = attha  makna, arti.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭhama','<p class="definition">kedelapan, ke-8, VIII.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭhi','<p class="definition">1. tujuan, arti, makna, hakikat; 2.  nt. tulang; biji (buah).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭhika','<p class="definition">nt.  tulang; biji (buah).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aḍḍha','<p class="definition">1. (= addha ) setengah; 2. a. kaya, makmur; ~yoga m. bangunan yang atapnya seperti lengkungan sayap burung garuda, bangunan yang atapnya miring ke satu sisi; ~sāra a.  bernilai setengah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṇḍa','<p class="definition">nt.  telur; buah zakar/pelir; ~kosa m.  cangkang telur; ~ūpaka  nt.  kumparan, bantalan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ataccha','<p class="definition">nt.  tidak benar, salah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atikaḍḍhati','<p class="definition">menghela kuat, sulit, sukar, bersusah payah; menyinggung perasaan, melukai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atikkanta','<p class="definition">(pp dari atikkamati )  a. melewati, melebihi, melampaui, mengatasi; ~mānusaka melebihi manusia biasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atikkamati','<p class="definition">melewati, melampaui, mengatasi, melebihi, mengalahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aticārin','<p class="definition">a.  berbuat serong, berzina, menyeleweng, berselingkuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atithi','<p class="definition">m.  tamu, orang asing, pendatang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atipāta','<p class="definition">m.  penyerangan, pembunuhan, penghancuran, pembinasaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atibhuñjati','<p class="definition">makan berlebihan, makan terlalu banyak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atimaññati','<p class="definition">memandang rendah, meremehkan, mengabaikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atimāna','<p class="definition">m.  keangkuhan, kecongkakan, tinggi hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atireka','<p class="definition">a.  berlebihan, kebanyakan, melebihi, ekstra;  ~cīvara jubah ekstra;  ~pāda lebih dari satu pāda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ativatta','<p class="definition">(pp dari ativattati ) terlewat, terlampau, lampau, teratasi, takluk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ativattati','<p class="definition">melewati, melampaui, mengarungi, menguasai, menaklukkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ativiya','<p class="definition">sangat, amat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atiharati','<p class="definition">membawa, memindahkan, menarik menuju; kaus. atiharāpeti  membuat membawa menuju, merenggut, membawa masuk, memperoleh, memanen, mengumpulkan, mengambil alih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atīta','<p class="definition">a. yang lampau, yang telah lewat; nt. masa lampau; atīte  di zaman lampau.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atta','<p class="definition">1. (pp dari ādadāti ) yang telah diambil atau digenggam, yang telah diterima atau dianggap; ~daṇḍa  dia yang memegang sebuah tongkat di tangan, orang yang ganas; ~ñjaha  meninggalkan apa yang telah diterima (dianggap) atau diasumsikan; Mahāniddesa menjelaskan attaṃ  pahāya sebagai attadiṭṭhiṃ pahāya yakni melepaskan 62 pandangan salah; 2. (pp dari añjati ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attan (atta)','<p class="definition">m.  jiwa, diri yang hakiki; sendiri, diri sendiri (attānaṃ sukheti pīṇeti  ia membuat dirinya bahagia dan puas); ~ūpanāyika a.  berkenaan dengan diri sendiri, ada pada dirinya, dengan merujuk ke dirinya; ~kilamatha  m. penyiksaan diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attabhāva','<p class="definition">m.  sifat pribadi; pribadi, individu, kepribadian, orang, oknum, makhluk hidup, wujud, penampakan, sifat, tabiat, kualitas batin; sosok individu; kehidupan, kelahiran kembali; ~paṭilābha  m. penjelmaan menjadi sesosok makhluk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attamana','<p class="definition">a. gembira, suka cita, riang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attha','<p class="definition">1. m.  kesejahteraan, keuntungan (attadattho  kepentingan diri sendiri), berkah; harta kekayaan, kebutuhan, keperluan; kebajikan, kebaikan, kegunaan, manfaat; keinginan, tujuan, objek, akibat, arti, makna, alasan; untuk; hal, perkara, kejadian, kasus; atthena  oleh karena; ~uppatti  makna situasional; ~kara  a. bermanfaat, berfaedah, berguna; ~cariyā  f. perbuatan atau tindakan yang bermanfaat, yang mendatangkan kemaslahatan atau kesejahteraan; ~vasa kemasukakalan, alasan, akibat, sebab; ~saṃhita  a. bermanfaat, membawa manfaat, menguntungkan, mendatangkan kemaslahatan; 2. nt. rumah, kediaman, peristirahatan. [harta/ arti/arta ← Skt. artha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthaṃgama','<p class="definition">m.  hal musnah, lenyap, enyah, hilang, terbenam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attharaṇa','<p class="definition">nt.  penutup, seprai, kain alas, pengalas, pelapik, permadani, babut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthi','<p class="definition">ada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthika','<p class="definition">a.  bermanfaat, baik, pantas, cocok; yang dikehendaki, yang diperlukan, yang diharapkan, yang dicari, yang dimaksudkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atra','<p class="definition">adv.  di sini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atha','<p class="definition">dan, dan juga, kemudian, lantas, lalu, maka; atha kho waktu itu, lalu, lantas, sekarang, sementara itu, sebaliknya, di satu pihak, tetapi, namun, arkian  (maka) (sesudah itu, kemudian dari itu) adapun, akan hal, mengenai, dalam pada itu, alkisah (maka), sebermula, syahdan (maka), kalakian, hatta (maka);  atha kho pana namun; atha kho so  lantas ia benar-benar; atha ca pana  di pihak lain, sebaliknya;  atha vā  atau [atau ← Skt. atha vā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addha','<p class="definition">1. (= aḍḍha )  setengah; 2.  (= adda ) kotor, basah, melekat pada, kecanduan terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addhagata','<p class="definition">a.  berusia lanjut. (addhānaṃ gate dve tayo rājaparivatte atīte, maggapaṭipanne brāhmaṇānaṃ vatacariyādimariyādaṃ avītikkamma)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addhan','<p class="definition">m.  jalan, perjalanan; lintasan; jangka waktu (dīghaṃ addhānaṃ  jangka waktu sangat lama), periode, masa (tayo addhā tiga masa).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addhā','<p class="definition">adv. tentu saja, pasti, sungguh; m. jalan; waktu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addhāna','<p class="definition">nt.  jalan, perjalanan, lintasan; jangka waktu; masa; ~magga  m. jalan raya, jalan lintasan, perjalanan jauh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhakkhaka','<p class="definition">m.  di bawah tulang leher.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhi','<p class="definition">(menunjukkan arah gerakan ke suatu sasaran) ke, kepada, terhadap, menuju, pada, ke atas; (menunjukkan lokasi) di atas, di, pada, sini (adhi  + atta  = ajjhatta  pada diri sini)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhikaraṇa','<p class="definition">nt.  pendampingan, penjagaan, pengawasan, pengelolaaan, administrasi; hubungan, rujukan, alasan, sebab, akibat; kasus, perkara, masalah, pokok soal, topik pembahasan, perselisihan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhikāra','<p class="definition">m. pelayanan, pengawasan, pengelolaan, bantuan; niat, harapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhigacchati','<p class="definition">mencapai, meraih, menemukan, menyelami, memahami, mewujudkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhigaṇhāti','<p class="definition">melampaui, melebihi, melewati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhigata','<p class="definition">a.  dikuasai, dicapai, dimiliki, ditemukan, diwujudkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhigama','<p class="definition">m.  pencapaian, perolehan, pengetahuan, informasi, hasil belajar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhiṭṭhāti (adhiṭṭhahati)','<p class="definition">berdiri (di atas), bersikukuh; memusatkan perhatian pada, mengarahkan pikiran seseorang pada, berketetapan hati, bertekad, mengharapkan, melakukan, menjalankan, mempraktikkan, memelihara, menyelenggarkan, menjaga, berkemauan, menentukan, memastikan, menetapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhiṭṭhāna','<p class="definition">nt.  pijakan yang kokoh; tekad, ketetapan hati, kekukuhan pada; a. yang sudah ditetapkan atau ditekadkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhiṭṭhita','<p class="definition">(pp dari adhiṭṭhāti )  berdiri di atas, bersikukuh atas; dipelihara atau dijaga, dilakukan, dikerjakan, diurus; bertekad.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhipati','<p class="definition">m.  1. penguasa, adipati, tuan; 2. berkuasa atas, berdaulat atas, dikuasai oleh; attādhipati memiliki harga diri; lokādhipati  menghargai orang lain. [adipati ← Skt. adhipati]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhippāya','<p class="definition">m.  niat, maksud, keinginan, tujuan, hasrat, kehendak; makna, arti, titik tolak, kesimpulan; adhippāyena dengan cara, seperti.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhippeta','<p class="definition">a.  yang diinginkan atau dikehendaki, yang berkenan di hati; yang dimaksudkan, yang dipahami, yang bermakna.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhibhāsati','<p class="definition">berkata kepada, bertutur kepada, berucap kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhimāna','<p class="definition">m.  penilaian berlebihan (terhadap diri sendiri), keangkuhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhimuccati','<p class="definition">tertarik pada, terpikat pada, condong pada, hanyut dalam; memutuskan, bertekad untuk, menjadi jelas (paham) atas; berkeyakinan, tak goyah terhadap; merasuki; kaus. adhimoceti condong pada, mengarahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhimutta','<p class="definition">(pp dari adhimuccati ) mendambakan, menghasratkan, mengerahkan diri pada, tertarik pada, condong pada, cenderung, menjadi terpikat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhivacana','<p class="definition">nt.  istilah, sebutan, atribut, kiasan, metafora, ungkapan metafora; (urena gacchati ti urago sappass’etaṃ adhivacanaṃ ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhivattha','<p class="definition">(pp dari adhivasati )  mendiami, tinggal, bersemayam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhivāsana','<p class="definition">nt. persetujuan, izin atau perkenan, kesabaran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhivāseti','<p class="definition">menunggui, bersabar menerima, menyetujui, berkenan, memperturutkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhisayita','<p class="definition">(pp dari adhiseti ) diduduki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhisīla','<p class="definition">nt.  moralitas yang lebih tinggi, sila nan luhur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adhiseti','<p class="definition">berbaring di atas, duduk di atas, hidup dalam, mengikuti.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('adho','<p class="definition">adv.  di bawah; adhakkhaka m.  di bawah tulang leher.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anattā','<p class="definition">nt.  tiada aku, bukan diri, tiada suatu inti atau substansi yang kekal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anatthika','<p class="definition">a.  yang tidak peduli terhadap, yang tidak puas dengan, yang tidak baik; tidak bermaksud apa-apa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anabhāva','<p class="definition">m. lenyap sama sekali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anavaya','<p class="definition">a.  tidak kekurangan, penuh dengan, sempurna dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anassāsaka','<p class="definition">a.  tidak dapat bernapas, sesak napas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anāgata','<p class="definition">a.  belum datang, kelak, di kemudian hari, di masa mendatang, belum terjadi, belum sampai, belum berhasil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anāgāmin','<p class="definition">a. m.  yang takkan kembali lagi, yang telah mencapai tingkat kesucian ketiga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anācāra','<p class="definition">m.  perilaku buruk, kebiasaan buruk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anātha','<p class="definition">a.  tiada pelindung (perlindungan), miskin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anārambha','<p class="definition">m.  yang tidak merepotkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anicca','<p class="definition">a. nt.  tak langgeng, tak kekal, sementara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aniṭṭhita','<p class="definition">a.  belum selesai, belum lengkap, belum habis, belum kelar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('animitta','<p class="definition">n.  tanpa tanda, tanpa atribut, tak tercemar, tak terpengaruh, tidak berkondisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anissita','<p class="definition">a. tidak ditopang oleh, tidak menempel pada, bebas, terbebas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anītika','<p class="definition">a.  bebas dari cedera, bebas dari bahaya, sehat, aman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anukantati','<p class="definition">memopong, menyobek, mengiris.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anukampā','<p class="definition">f.  kasihan, sayang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anugacchati','<p class="definition">mengikuti, membuntuti, memasuki, termasuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anugata','<p class="definition">(pp dari anugacchati ) diikuti, disertai, tiba pada, mengikuti; termasuk dalam, terpaut dengan; menjadi korban dari, menderita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuggaha','<p class="definition">a.  tidak mengambil;  m.  pengambilan, belas kasih, cinta kasih, bantuan, manfaat, kemaslahatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anucinteti','<p class="definition">memikirkan, merenungkan, mempertimbangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anucchavika','<p class="definition">a.  “sesuai dengan kulit seseorang”, cocok, pantas, sesuai, patut, layak, serasi, seiring, selaras, sepadan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anujānāti','<p class="definition">mengizinkan, memperkenankan, membolehkan, menasihati, menentukan, memformulasikan (merumuskan); anuññeyya  yang dibolehkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuññāta','<p class="definition">(pp dari anujānāti ) diizinkan, diperbolehkan, disetujui, didukung, diperkenankan, ditahbiskan, dinobatkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuttara','<p class="definition">a.  tiada yang melebihinya, tiada banding, tiada taranya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuddayā (anudayā)','<p class="definition">rasa belas, rasa kasihan, rasa iba, sayang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuddhaṃseti','<p class="definition">menggerogoti, mengganggu, menjerumuskan, melanda, merusak, menghina, mengutuk, menghujat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anunaya','<p class="definition">“menuntun menyusuri”, keramahtamahan, kesopanan, kasih sayang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuneti','<p class="definition">membuat bersahabat, mengambil hati, memperlakukan dengan baik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupagacchati','<p class="definition">pergi atau kembali ke.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupatati','<p class="definition">mengikuti, menyusuli, menguntit; menyerang, menyerbu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupatta','<p class="definition">(pp dari anupāpuṇāti )  telah mencapai, meraih, menggapai, mendapatkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupadesa','<p class="definition">m.  pedesaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuparigacchati','<p class="definition">(berjalan) mengitari, berkeliling, berputar-putar, mengelilingi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupassati','<p class="definition">melihat, menilik; merenungkan, mengamati, mencermati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupassin','<p class="definition">a.  melihat, memandang, mengamati, menyadari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupādā','<p class="definition">adv.  tidak lagi mengambil (bahan bakar untuk mempertahankan api kelahiran kembali), tidak melekat pada kerinduan terhadap dunia ini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupādāya','<p class="definition">adv.  tidak melekat pada, bebas, tidak berkondisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupāpuṇāti','<p class="definition">mencapai, tiba pada, sampai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupubba','<p class="definition">a.  secara berturut-turut, secara beruntun, secara bertahap, secara teratur, secara berangsur-angsur; segera;  anupubbena  segera, akhirnya, belakangan, secara bertahap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anupekkhati','<p class="definition">merenungkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuppatta (anupatta)','<p class="definition">(pp dari anupāpuṇāti ) dicapai, diterima, tiba, sampai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubandhati','<p class="definition">mengikuti, menguntit, mengejar, menyusuli.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubuddha','<p class="definition">(pp dari anubodhati ) telah mengalami pencerahan, sadar, mengenali, melihat, mengetahui; buddhānubuddha  mengalami pencerahan oleh (bimbingan dari) ia yang telah mengalami pencerahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubhavati','<p class="definition">datang ke; mengalami, menderita; melakukan, mengambil bagian dalam; makan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubhavana','<p class="definition">nt.  hal mengalami, menderita, sensasi atau kemampuan tubuh untuk merasakan; menghayati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubhāva','<p class="definition">m.  “pengalaman, hal yang bersamaan”, mengalami sensasi dari, milik dari, sesuai dengan; kekuatan, keagungan, kegemilangan, daya, kehebatan, keperkasaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anubhoti (anubhavati)','<p class="definition">lantas menjadi, sampai pada, menjalani, ikut serta atau mengambil bagian dalam, mengalami, makan, mengalami.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anumati','<p class="definition">f.  persetujuan, izin, perkenan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anummatta','<p class="definition">a. tidak gila, waras.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuyāyin','<p class="definition">a.  mengikuti.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuyuñjati','<p class="definition">mempraktikkan, melakukan, melibatkan diri, mengurus, menindaklanjuti; menanyakan, menyidik, menginterogasi, menegus; kaus. anuyojeti mewejang, menasihati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuyutta','<p class="definition">(pp dari anuyuñjati )  mengupayakan, mengamalkan; mengikuti, mengurusi;  m.  pelayan, hamba, pengiring.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuyoga','<p class="definition">m.  pengamalan, pelaksanaan, praktik; anuyogaṃ anuyutta  pengamalan;  a.  melakukan, melaksanakan, mengamalkan, menuruti.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anurakkhaṇa','<p class="definition">nt. hal melindungi, menjaga, melestarikan, mengayomi (?).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anulepa','<p class="definition">m. pengolesan, pelumuran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anulomika','<p class="definition">a.  cocok, pantas, sesuai, serasi; dengan urutan yang tepat, disesuaikan terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuvattaka','<p class="definition">a.  yang melanjutkan (suatu kekuasaan), ahli waris, mengikuti, berpihak pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuvāda','<p class="definition">m.  celaan, kecaman, teguran, tuduhan, dakwaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anuvicarati','<p class="definition">berkeliling meninjau, berkelana.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusaññāti','<p class="definition">pergi ke, mengunjungi, menginspeksi, meninjau, mengawasi, memeriksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusaya','<p class="definition">m.  kecondongan, kecenderungan, sifat laten, tendensi, obsesi, nafsu laten.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusāra','<p class="definition">m.  hal mengikuti atau bersesuaian dengan; anusārena  bersesuaian dengan, akibat dari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusārin','<p class="definition">a.  berusaha sejalan dengan, mengikuti, bertindak sesuai dengan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusārī','<p class="definition">a.  berjuang, berupaya; bertindak sesuai dengan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusāsati','<p class="definition">menasihati, memberi wejangan; memerintah, mengurusi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusāsana','<p class="definition">nt.  nasihat, wejangan, petuah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anusāsanī','<p class="definition">f.  wejangan, nasihat, anjuran, instruksi, ajaran, perintah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anussati','<p class="definition">f.  ingatan, hal mengingat atau mengenang, perenungan, hal menyadari, hal mengarahkan pikiran pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anussarati','<p class="definition">mengingat-ingat, mengenang, merenungkan, menyadari, mencamkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anussāveti','<p class="definition">memperdengarkan, mengumandangkan, menyiarkan, mengabarkan, berseru.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anussuta','<p class="definition">1. a. bebas dari nafsu, tanpa nafsu; 2. terdengar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aneka','<p class="definition">a.  banyak, berbagai, jamak, aneka, tak terbilang; ~pariyāyena  dengan berbagai cara, dengan beragam cara;  ~vihita aneka macam, beragam. [aneka ← Skt. aneka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anokāsa','<p class="definition">m.  tanpa kesempatan; ~kata  tanpa mendapatkan izin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anodissa','<p class="definition">adv.  tanpa sasaran, tanpa batas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anodissaka','<p class="definition">a.  tanpa batas, tanpa kecuali, umum, universal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anta','<p class="definition">1. m. ujung, penghujung, tamat, akhir, penghabisan, tujuan, sasaran; batas, perbatasan, sempadan, tepi, pinggir, susur; sisi, hadapan, sisi atau pihak lawan, ekstrem, bagian, pihak; 2. a. berujung, ujung, akhir, ekstrem, terakhir, ter, terburuk; 3. nt. usus.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antamaso','<p class="definition">adv.  bahkan, sekalipun, walaupun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antara','<p class="definition">a.  di dalam, di antara, dalam, ada di dalamnya, mengandung (āmisantara  ketamakan ada di dalamnya, tamak); berjarak; nt. bagian dalam, ruang antara, pertengahan, jeda, rintangan (yang ada di antara), jangka waktu, waktu (etasmiṃ antare  pada waktu itu), kesempatan, waktu antara, sela waktu, antara, selang waktu (buddhantaraṃ  selang waktu antara dua Buddha); perbedaan; antaraṃ karoti menjauhi, menjaga jarak dengan, menyingkirkan, menghancurkan; memusnahkan; antarantare  tepat di tengah-tengah, tepat di dalam; antarantarā  dari waktu ke waktu, ada kalanya, berturut-turut; antarā  (abl.) adv. di antara. [antara ← Skt. antara]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antaradhāna','<p class="definition">nt.  hal lenyap˴ hilang˴ musnah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antaradhāpeti','<p class="definition">(kaus. dari antaradhāyati ) melenyapkan, menghancurkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antaradhāyati','<p class="definition">lenyap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antarabhogika','<p class="definition">m.  seseorang yang memiliki daya pengaruh di bawah kekuasaan raja atau kerajaan; hulubalang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antaravāsaka','<p class="definition">m.  jubah bawah (busana bhikkhu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antarahita','<p class="definition">(pp dari antaradhāyati )  lenyap, enyah; benda pengantara, pelapik; anantara-hitāya bhūmiyā di atas tanah polos tanpa lapik atau alas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antarāyika','<p class="definition">a.  menjadi rintangan atau hambatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antarika','<p class="definition">a.  tengah, berikut, selanjutnya; jauh, di antara, di dalam; anantarika  tanpa sela, langsung, segera.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antarikā','<p class="definition">f.  yang terletak di antara atau dekat, bagian dalam, lingkungan, daerah di seputar, wilayah; sela, celah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antima','<p class="definition">a. terakhir, terbuntut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ante','<p class="definition">dekat, di dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antevāsika','<p class="definition">m.  seseorang yang berdiam atau menginap di dalam; seseorang yang hidup bersama gurunya; siswa (dari ācariya), murid cantrik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anto','<p class="definition">dalam, di dalam, bagian dalam, ke dalam; ~mano  murung, sayu, sedih, muram.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('andu','<p class="definition">m.  rantai, belenggu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('andha','<p class="definition">a.  buta, gelap; kabur, tumpul; ~kāra m.  kegelapan, kebingungan, kebutaan, kedunguan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anna','<p class="definition">nt. makanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anvaddhamāsaṃ','<p class="definition">adv. setiap setengah bulan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anvaya','<p class="definition">m.  kesesuaian, kecocokan; proses; a. mengikuti, dengan jalur yang sama, bersesuaian dengan; setelah (mengikuti).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anvāya','<p class="definition">setelah mengikuti, mengalami, mencapai; akibat dari, karena, setelah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apakaroti','<p class="definition">mencampakkan, menghilangkan, melukai, menyerang, mengabaikan, menggempur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apagata','<p class="definition">(pp dari apagacchati ) pergi, pergi meninggalkan, pergi menjauhi, pindah, meninggal dunia; tanpa, bebas dari, lenyap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apagabbha','<p class="definition">a.  takkan muncul lagi dalam kandungan/rahim; takkan dikandung lagi, takkan dilahirkan kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apacaya','<p class="definition">m.  penanggalan, pengikisan, peluluhan, penciutan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apacāyati','<p class="definition">menghormati, respek terhadap, memuja-muja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apacita','<p class="definition">(pp dari apacāyati  atau apacināti ) dihormati, disembah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apadisati','<p class="definition">memanggil menyaksikan, merujuk ke, mengutip.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apaneti','<p class="definition">membawa pergi, mengambil pergi, memindahkan (=harati ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apara','<p class="definition">a.  yang lain, yang berikut; barat; aparaṃ divasaṃ  di suatu hari setelah ini; apare divare  pada hari lainnya; apare tayo sahāyā  tiga (se)kawan; aparaṃ  adv. selanjutnya, di samping itu, juga; athāparaṃ  selanjutnya, lagi pula; aparena di masa mendatang; aparāparaṃ ke sana sini, berulang-ulang, berkali-kali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparajjhati','<p class="definition">bersalah atau melakukan kesalahan kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparaṇṇa','<p class="definition">nt.  serealia lain, serealia matang; kacang-kacangan, palawija (?).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparaṇha','<p class="definition">m.  sore hari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparaddha','<p class="definition">(pp dari aparajjhati ) meleset, salah jalan, nyasar, bersalah, gagal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparādha','<p class="definition">m. dosa, kesalahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aparādhika','<p class="definition">a. berdosa, bersalah, kriminal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apalokita','<p class="definition">(pp dari apaloketi )  minta izin, berkonsultasi, minta pamit; nt. izin, persetujuan; sebutan untuk nibbana; cara berpandang (nāgāpalokitaṃ apalokesi memandang dengan cara berpandang gajah).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apaloketi','<p class="definition">memandang kemuka, berhati-hati, menjaga, memandang ke, mendapat izin dari, meminta izin, minta diri, minta pamit, berpamitan, memberitahu, memperingatkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apasādeti','<p class="definition">menolak, menyangkal; merendahkan, menistakan, meremehkan, menyanggah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apassaya','<p class="definition">m.  penopang, penyangga; pembaringan, rajang, bantal, tilam, kasur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apassāya','<p class="definition">bersandar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apassena','<p class="definition">nt.  sandaran, dudukan, penopang, kalang; ~phalaka papan penopang (kepala).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apaharati','<p class="definition">mengambil pergi, memindahkan, menyingkirkan, merampas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apāpuraṇa (avāpuraṇa)','<p class="definition">nt.  kunci (pintu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apāpurati (apāpuṇati)','<p class="definition">membuka (pintu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apāya','<p class="definition">pergi, hilang, musnah, bocor, kuras, tergelincir, merosot; ~mukha  nt. jalan menuju kehancuran atau pengurasan atau kemerosotan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('api','<p class="definition">juga, lagi, pula, dan juga; namun, bahkan, mungkin, walaupun; mungkin, bisa jadi; app eva nāma tentu saja, ya, saya pikir, saya kira, mungkin, bisa jadi, barangkali; api ca dan juga, lagi pula, selanjutnya, lebih lanjut, tetapi; api ca kho  namun, melainkan; apissu sampai-sampai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apuñña','<p class="definition">nt.  kemudaratan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apekkha (=apekkhā)','<p class="definition">a.  menantikan, mengharapkan, mencari, menginginkan, berniat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apekkhati','<p class="definition">mengharapkan, mengidamkan, menantikan, berhasyat akan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apekkhavant','<p class="definition">a.  penuh hasrat, penuh keinginan, mendambakan, berhasrat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appa','<p class="definition">a.  sedikit, kecil, secuil, sekelumit, sepele; pendek; nt. sedikit, secuil, sepele; ~āyuka  berusia pendek.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaka','<p class="definition">a.  sedikit, kecil, sepele; appakena  dengan mudah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaṭibhāṇa','<p class="definition">a. tak dapat menjawab atau membantah, tak berucap sepatah kata pun; menjadi bingung atau galau, tidak mantap (hati), kecut hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaṭivekkhiya','<p class="definition">(ger.) tanpa mengamati atau memperhatikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaṭisandhika','<p class="definition">m.  yang tak dapat disambung atau disatukan kembali, yang tak dapat dikembalikan ke keadaan semula, yang takkan terlahir kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaṇihita','<p class="definition">a.  tanpa tujuan, tidak condong pada apa pun, bebas dari (objek) keinginan, tanpa pamrih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appatīta','<p class="definition">a.  tidak puas, tidak senang, kecewa, kesal, tidak suka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appamatta','<p class="definition">a.  tidak lengah, awas, waspada, sadar, penuh perhatian; secuil, sepele, sedikit, sekelumit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appamattaka','<p class="definition">a. nt.  sedikit, sekelumit, secuil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appamāda','<p class="definition">m.  ketidaklengahan, kewaspadaan, hal penuh sadar, tak leka, keseriusan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appiya','<p class="definition">a. yang tidak disenangi˴ disukai˴ berkenan di hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appoṭheti (apphoṭeti)','<p class="definition">bertepuk tangan, memetik jari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbuda','<p class="definition">m.  janin 1-2 bulan setelah pembuahan; tahap kedua dari lima tahap perkembangan janin (kalala, abbuda, pesi, ghana, pasākha); tumor, bisul, seriawan; suatu bilangan yang sangat besar; neraka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbohārika','<p class="definition">a.  tidak dalam cakupan hukum atau peraturan, dapat diabaikan, merupakan pengecualian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhañjati','<p class="definition">meminyaki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhantara','<p class="definition">a.  di dalam, di antara; abbhantaraṃ nt.  bagian dalam, interior, interval; abbhantarena dalam waktu bersamaan, di antara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhantarima','<p class="definition">a.  bagian dalam, internal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhākuṭika','<p class="definition">a.  tidak mengernyitkan alis, peramah, tidak sombong.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhāghāta','<p class="definition">m.  pelaksanaan hukuman mati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhuggacchati','<p class="definition">mencuat, menyebar, muncul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbhuta','<p class="definition">1. a. nt.  menakutkan, mencengangkan, aneh, luar biasa, dahsyat, membingungkan atau menimbulkan teka teki, menakjubkan, ajaib atau supernormal, menawan hati; ~dhamma  fenomena misterius, sesuatu yang menawan hati, ajaib; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana); 2. nt. taruhan; abbhutaṃ karoti (sahassena) bertaruh (1000 kepeng).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abbheti','<p class="definition">merehabilitasi (seorang bhikkhu yang diskors atas pelanggarannya terhadap winaya).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abyākata','<p class="definition">a.  tidak  terjawab, tidak terputuskan, tidak terungkapkan; kamma yang tak dapat dikatakan kusala atau akusala; dalam Dhs.A. (p.261) dikatakan ada 4 hal yang dikategorikan sebagai abyākata yakni vipāka, kiriya, rūpa, dan nibbāna.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhabba','<p class="definition">a.  tak mungkin, mustahil, takkan, tak dapat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhaya','<p class="definition">a.  bebas dari ketakutan atau bahaya, tak gentar, aman, bebas dari ancaman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhāva','<p class="definition">m.  tidak ada, lenyap, sirna.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhikkanta','<p class="definition">(pp dari abhikkamati ) berjalan maju, meluncur pergi, melesat maju, memudar; bagus, hebat, unggul; menyenangkan, asyik, yahud, hebat, luar biasa; elok, indah sekali (abhikkanta saddo khayasundarābhirūpa abbhanumodanesu dissati).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhikkamati','<p class="definition">berjalan maju, menghampiri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhijāna','<p class="definition">m. nt.  hal mengetahui, menguasai, ingat, menyelami; pengetahuan mendalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhijānāti','<p class="definition">mengetahui sepenuhnya, mengetahui dengan mengalami, menyelami, mengenal, mengalami langsung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhijjamāna','<p class="definition">a.  yang tak tercerai-berai atau terbagi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhijjhā','<p class="definition">f.  kerinduan, dambaan, keserakahan, ketamakan, nafsu loba, tergiur akan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiññā','<p class="definition">(pp dari abhijānāti ) setelah menyelami, setelah memahami betul, setelah diselami dengan pengetahuan istimewa, setelah menyadari;  f.  pengetahuan istimewa, pengetahuan hasil penyelaman, pengetahuan hasil penembusan batin, pengetahuan langsung, kekuatan supranatural, kemampuan batin luar biasa, pengetahuan batin luar biasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhitāpa','<p class="definition">a.  panas sekali;  m. panas tinggi, memijar; sīsābhitāpa  kelengar matahari, sakit kepala.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhidosika','<p class="definition">semalam, malam sebelumnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinandati','<p class="definition">bersukacita, bergembira.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinandin','<p class="definition">a. senang dengan, suka terhadap, gemar akan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiniggaṇhanā','<p class="definition">f.  hal menahan, mencengkam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiniggaṇhāti','<p class="definition">menahan, mencengkam, mengendalikan, mencegah, melarang, menghalangi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhininnāmeti','<p class="definition">mengarahkan kepada, memalingkan kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinippīḷanā','<p class="definition">f.  hal menekan, memencet, menggencet, memeras, meremas, memegang, mencubit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinippīḷeti','<p class="definition">memencet, menggencet, memeras, menggilas, menaklukkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinibbatti','<p class="definition">f.  hal menjadi, mengada, terlahir, terlahir kembali, menelorkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinibbijjhati','<p class="definition">menerobos.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinibbidhā (abhinibbhidā)','<p class="definition">f.  penerobosan keluar (dari cangkang telor), penetasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinimmināti','<p class="definition">menciptakan (dengan kekuatan gaib), menghasilkan, membentuk, membuat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiniropana','<p class="definition">nt.  mengarahkan perhatian atau pikiran pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinivesa','<p class="definition">m.  “tiba di”, mengharapkan, mendalami, menguasai, kecondongan terhadap, kecenderungan, kesetiaan, ketaatan, mengambil kesimpulan, melakukan penafsiran; a. menyukai, menyenangi, condong terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinisīdati','<p class="definition">duduk dekat, duduk di atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhinīta','<p class="definition">(pp dari abhineti )  dituntun ke, dibawa ke, dibantu oleh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhipīḷeti','<p class="definition">menekan, menggilas; menyiksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhippamodati','<p class="definition">senang, merasa puas, girang, gembira.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhippasanna','<p class="definition">(pp dari abhippasīdati )  menemukan kedamaian batin dalam, mempercayai, meyakini, berkeyakinan penuh terhadap, berbakti kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhippasīdati','<p class="definition">memiliki keyakinan terhadap, mengagumi</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhibhūta','<p class="definition">(pp dari abhibhavati )  ditaklukkan, dikalahkan, diatasi, ditundukkan, dikuasai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhimaṅgala','<p class="definition">a.  (sangat) beruntung, mujur, penuh berkah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhimukha','<p class="definition">a.  menghadap, mengarahkan muka pada, menghampiri, berpaling kepada; adv. ke, menuju.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiyuñjati','<p class="definition">menuduh, mendakwa, mengadukan, menuntut, menjadi beban tanggung jawab seseorang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhirata','<p class="definition">(pp dari abhiramati ) gemar, merasa senang dalam, suka akan, betah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhirati','<p class="definition">f.  kesenangan, kegembiraan dalam (lok.).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiraddha','<p class="definition">a.  berkenan, puas, marem.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiramati','<p class="definition">bersenang-senang, berhiburan, betah; yathābhiranta  sekehendak hati, sesuka hati, sebagaimana yang diinginkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhirūpa','<p class="definition">a.  berwujud sempurna, (sangat) ganteng, cantik, elok, rupawan, jombang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhirūḷha','<p class="definition">(pp dari abhirūhati )  dipanjat, didaki, dinaiki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhirūhati','<p class="definition">menaiki, mendaki, memanjat, melanjutkan, memasuki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhivassati','<p class="definition">hujan, mengguyur, mencurah, turun hujan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhivādana','<p class="definition">nt.  penghormatan (dengan membungkuk), memberi salam dengan takzim.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhivādeti','<p class="definition">membungkuk, memberi hormat, menyalami, menyambut, hormat terhadap/kepada</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiviññāpeti','<p class="definition">membujuk, mengajak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhivitarati','<p class="definition">menyelami, memperhatikan, mengamati, memahami betul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisaṅkhārika','<p class="definition">a.  yang termasuk dalam atau dilakukan oleh saṅkhāra; terkumpul oleh atau pengumpulan jasa-jasa kebajikan; yang disiapkan secara khusus; istimewa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisanda','<p class="definition">m.  hal mengalir, meluber, menghasilkan, menelurkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisandahati','<p class="definition">meletakkan bersama, mengumpulkan, menggiring, menyiapkan; ger. abhisandhāya  disebabkan oleh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisanna','<p class="definition">a.  penuh dengan, kebanjiran, kepenuhan, menyesak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisamācārika','<p class="definition">a.  yang mengarah ke perilaku yang baik yang paling dasar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisameta','<p class="definition">(pp dari abhisameti )  dicapai atau diwujudkan sepenuhnya, dipahami, dimengerti, dikuasai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisameti','<p class="definition">mencapai, menggapai, mewujudkan, memperoleh; mengerti, memahami, menguasai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisambujjhati','<p class="definition">menyadari seutuhnya, menyelami pengetahuan tertinggi, meraih kebijaksanaan tertinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhisambuddha','<p class="definition">(pp dari abhisambujjhati )  a. terwujud atau diselami secara sempurna;  m. orang yang telah mewujudkan kebijaksaan tertinggi, yang telah sadar penuh, yang telah meraih kebuddhaan, yang telah mewujudkan pencerahan batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhiharati','<p class="definition">membawakan, mempersembahkan, mengambil(kan); mengutuk, memaki, mencaci.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('abhihāra','<p class="definition">m.  bawaan, persembahan, hadiah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('amacca','<p class="definition">m.  kawan, sahabat, rekan, penolong, teman karib, rekan penasihat, penasihat karib, rekan sekerja; teman karib Raja, rekan pendamping Raja, rekan kepercayaan Raja, penasihat khusus Raja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('amanussa','<p class="definition">m.  makhluk bukan manusia, peri, makhluk halus, hantu, yakkha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('amutra','<p class="definition">adv. di tempat anu, di situ, dalam kelahiran itu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('amba','<p class="definition">m.  mangga (Mangifera indica).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ambho','<p class="definition">he.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('amma','<p class="definition">mama, mami, bu, mak (panggilan sayang terhadap ibu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ammā','<p class="definition">f.  ibu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayo  (aya)','<p class="definition">nt. besi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayoniso','<p class="definition">secara tak teratur, secara tak bijaksana, tak patut; ~manasikaroti tanpa menghiraukan, tidak memperhatikan secara patut atau bijaksana, tidak mengindahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayya','<p class="definition">a.  mulia;  m.  tuanku, nyonya, yang mulia, panggilan terhadap seorang bhikkhu atau bhikkhuni; panggilan umat wanita terhadap bhikkhu; ~putta m. tuan muda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayyaka','<p class="definition">m. kakek.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayyakā (ayyikā)','<p class="definition">f. nenek.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('arañña','<p class="definition">nt.  hutan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('arasarūpa','<p class="definition">nt.  sosok tidak bercita-rasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('araha','<p class="definition">a.  layak atau patut menerima; cocok, sesuai; bernilai, berharga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('arahati','<p class="definition">patut, layak, pantas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('arahant','<p class="definition">a.  arahat (sebelum munculnya Buddhisme, digunakan sebagai sebutan hormat untuk pejabat tinggi. Saat Buddhisme sedang berkembang, diterapkan secara populer terhadap semua petapa. Juga diserap kaum Buddhis untuk seseorang yang telah meraih pencapaian tertinggi nibbana.)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ari','<p class="definition">m.  musuh, seteru.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ariṭṭha','<p class="definition">a. kejam, sial; m. burung gagak; pohon nimba.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aritta','<p class="definition">nt.  kemudi (kapal);  a. tidak kosong dari; tidak tanpa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ariya','<p class="definition">a.  mulia, unggul, berdarah mulia (ningrat); dari suku (ras) Aria; sesuai dengan adat, norma, idaman, yang dijunjung kaum Aria; benar, baik, elegan, sejati, ideal; Ariya;  m. seseorang yang mulia (batinnya), seseorang yang telah meraih pengetahuan tertinggi, orang suci (ariyānaṃ upavādaka). [arya ← Skt. ārya]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ariyaka','<p class="definition">m.  seseorang yang berasal dari kaum (suku) Ariya; bahasa kaum (suku) Ariya; bahasa Magadha; tutur kata yang pantas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alaṃ','<p class="definition">ungguh, betul-betul (alam antarāyāya  sungguh merupakan suatu rintangan); pantas, sesuai (alam eva kātuṃ  ini pantas untuk dilakukan; alaṃ hi te gāmaṇi kaṅkhituṃ, alaṃ vicikicchituṃ); cukup (alam ettāvatā mahārāja, kataṃ ettāvatā mahārājāti cukupkah segitu, Maharaja, bolehkah segitu?) awas, hati-hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alaṃkata','<p class="definition">(pp dari alaṃkaroti ) didandani, dihiasi, disiapkan, dipersolek; dibuat cukup, dibubuhi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alaṃkaroti','<p class="definition">menghiasi, mendekorasi, mendandani, membubuhi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alaṃkāra','<p class="definition">m.  persiapan, hiasan, dekorasi, dandanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alasa','<p class="definition">a. lamban, malas, kendur, lesu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('alika','<p class="definition">a.  berlawanan, salah, tidak betul; nt. bohong, keliru.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('allīyati','<p class="definition">melekat pada, menempel pada, mencantol pada, mematuhi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avakāsa','<p class="definition">(okāsa ) m.  penampakan; kesempatan, kemungkinan; anavakāsa m.  tidak mungkin, mustahil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avaca','<p class="definition">a.  rendah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avacara','<p class="definition">a.  hidup dalam atau dengan, bergerak dalam, berkecimpung dalam, akrab dengan, mahir dalam;  m. lingkup (aktivitas), ranah, dunia, alam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avajja','<p class="definition">a.  rendah, inferior, tercela, buruk; anavajja  (lawan dari sāvajja ) tiada cela, tiada cacat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avaṭṭhita','<p class="definition">a.  berdiri, diduduki, ditimpa, kokoh, dipatok, bersikukuh, abadi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avaṇṇa','<p class="definition">m.  hal mencela, menyalahkan, mengutuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avalitta','<p class="definition">a.  berturap atau berlepa luar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avasarati','<p class="definition">meluncur, pergi ke, akhirnya tiba di.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avasiṭṭha','<p class="definition">(pp dari avasissati ) yang tersisa, tertinggal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avasesa','<p class="definition">m.  sisa; anavasesa a.  tanpa sisa sedikit pun; sepenuhnya, seutuhnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avassakaṃ','<p class="definition">adv.  tak terhindarkan, perlu, mau tak mau.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avaharaṇa','<p class="definition">m.  hal membawa pergi, mencaplok, menyhingkirkan, mencuri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avaharati (oharati)','<p class="definition">mencuri, menyelewengkan, mencolong.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avahāraka','<p class="definition">m.  pencolong.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avikampana','<p class="definition">nt.  keikhlasan, kerelaan, ketaktergoyahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avijjā','<p class="definition">f.  ketidaktahuan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aviññū','<p class="definition">a.  bodoh, tidak tahu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avidūra','<p class="definition">a.  tak jauh, dekat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avinipāta','<p class="definition">m.  takkan terperosok  ke dalam alam celaka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avirodha','<p class="definition">m.  tanpa rintangan, tanpa halangan; santun, lembut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avivāda','<p class="definition">m.  tanpa pertentangan, tanpa percekcokan, akur, rukun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avihiṃsa (avihesa)','<p class="definition">f.  tiada kekejaman, belas kasih, manusiawi, cinta kasih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avecca','<p class="definition">1. adv.  pasti, absolut, tandas, niscaya, mantap, sempurna; 2. sudah tahu (paham).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avera','<p class="definition">a.  tidak bermusuhan, damai, lembut, bersahabat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('avyāvaṭa','<p class="definition">a.  tidak sibuk, cuek, tidak peduli.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asaññata','<p class="definition">a.  tak terkendali, tanpa pengendalian diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asaddhamma','<p class="definition">m.  kondisi (keadaan) jaht, berdosa, hubungan seksual.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asambhinna','<p class="definition">a.  tak dicampur, tak dipalsu; bening, jernih, jelas (tentang suara); sejenis salap (urap).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asammosa','<p class="definition">m. ketiadaan kebingungan atau kebuyaran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asallīna','<p class="definition">a.  aktif, tegak, tak tergoyahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asi','<p class="definition">m.  pedang, pisau besar, golok, parang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asita','<p class="definition">1. a. yang telah dimakan, makan; nt. makanan, yang dimakan atau disantap; 2. a. tidak melekat, bebas; 3. a. hitam kebiru-biruan; hitam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asuka (amuka)','<p class="definition">pron. a.  ini, itu, anu, suatu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asuci','<p class="definition">a.  tidak bersih, tidak murni, najis; air mani, asuci.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asubha','<p class="definition">a.  kotor, najis, buruk, jelek, keji, menjijikkan; nt. hal menjijikkan, memuakkan, tak menyenangkan; ~kathā wejangan perihal kenajisan, khotbah perihal kotor menjijikkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asura','<p class="definition">m.  bukan dewa, asura. (Sejenis makhluk halus yang senantiasa berseteru dengan para dewa. Acapkali disebutkan bersama garuḷa atau supaṇṇa, gandhabba, nāga, dan yakkha.)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asūra','<p class="definition">a.  pengecut;  lamban malas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asekha (asekkha)','<p class="definition">a. m.  tak perlu dilatih lagi, sudah sempurna, tak perlu berlatih lagi; Arahat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asecanaka','<p class="definition">a.  tak dicampur, tak disubal (dicampuri dengan barang yang kurang baik mutunya supaya kelihatan banyak, bertambah berat, dsb), tak dikotori atau dibumbui (dengan bahan lain), wantah, sempurna, murni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asmimāna','<p class="definition">m.  keangkuhan keakuan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assa','<p class="definition">1. bahu; ~puṭa tas/kantung yang disandang di pundak; 2. sudut, titik; caturassa segi empat; 3. kuda; [aswa ← Skt. aṡva] 4. gen. dat. sg. dari ayaṃ  (ini, nya); 5. sg. Pot. ketiga dari asmi  (atthi ) kalau saja, sekiranya, semoga. (pissa dia punya juga ….; tayassa tiga buah milik dia)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assattha','<p class="definition">1. m. pohon Bodhi, Ficus religiosa; 2. (pp dari assasati ) membesarkan hati, menghibur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assama','<p class="definition">m.  pertapaan, tempat bertapa. [asrama ← Skt. āṡrama]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assasati','<p class="definition">bernapas, menarik napas, bernapas bebas, bernapas dengan tenang, bernapas lega, merasa nyaman, menjadi lega; masuk melalui napas, memesonakan, merasuk, memikat, menawan hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assāda','<p class="definition">m.  rasa, manis, nikmat, puas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assāsaka','<p class="definition">a.  bernapas; m. nt. yang memberi kenyamanan dan kelegaan; kepercayaan, (peng)harapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ahaṅkāra','<p class="definition">m.  keakuan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ahi','<p class="definition">m.  ular.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ahirika (ahirīka)','<p class="definition">a.  tak tahu malu, tebal muka, tak cermat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aho','<p class="definition">(kata seru yang mengungkapkan keterkejutan, kekaguman, keheranan, kekagetan), aha, wah, oh, alamak; aho vata  oh kalau saja, oh alangkah bagusnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākaṅkhati','<p class="definition">menginginkan, menghendaki, mendambakan, berpikir, berniat, merencanakan, mengangankan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākaḍḍhati','<p class="definition">menyeret, menarik, menghela.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākaḍḍhana','<p class="definition">nt.  hal menyeret, menarik keluar, terbias.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākāra','<p class="definition">m.  cara, keadaan, kondisi; sifat, karakter, kualitas; ciri, tanda, corak, penampakan, wujud; alasan, dasar, dalih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākāsa','<p class="definition">m.  udara, langit, udara terbuka, angkasa, tawang, awang-awang. [angkasa ← Skt. ākāṡa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākiṇṇa','<p class="definition">(pp dari ākirati )  ditaburi, disesaki, dipenuhi, dikelilingi, dipadati (ākiṇṇaloma  berbulu lebat atau gimbal); penuh dengan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākirati','<p class="definition">menaburkan, menyebarkan, menebarkan, memercikkan, menghamburkan, membubuhkan, mengisi, menumpuk, menimbun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ākoṭita','<p class="definition">(pp dari ākoṭeti ) telah diperas, dipukul, dibenturkan, diketuk, ditekan, dipalu, diratakan, disaring.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āgacchati','<p class="definition">datang ke, mendekati, pulang atau kembali, tiba, datang kembali; mencapai, menghasilkan, pantas menerima; mampir, dipahami sebagai, merujuk atau dirujuk oleh, dipahami, dimaksudkan; kaus. āgameti  membuat seseorang atau sesuatu datang; tunggu, berhenti; menunggui, menyambut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āgata','<p class="definition">(pp dari āgacchati ) datang, tiba, mencapai, sampai, berhasil, terjadi; memahami; yang diwariskan secara turun temurun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āgantuka','<p class="definition">a.  datang, tiba, pendatang (baru), tamu, pengunjung; kebetulan, tak tetap, kadang-kadang; aksesori, tambahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āgama','<p class="definition">m.  kedatangan, pendekatan, hasil; yang telah datang secara turun-temurun, sumber, acuan, sumber acuan, naskah, kitab suci; peraturan, praktik, tata krama, pematuhan; makna, pemahaman; pembayaran kembali; sisipan atau imbuhan. [agama ← Skt. āgama]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āgamma','<p class="definition">adv.  setelah datang pada, sehubungan dengan, berdasarkan pada, berkat (Bhagavantaṃ āgamma mahāpajāpati gotamī buddhaṃ saraṇaṃ gatā berkat Sang Bhagawan [karena Sang Bhagawanlah], Mahapajapati Gotami berlindung kepada Buddha), dikarenakan, melalui, berkaitan dengan, dengan memakai, melalui, terhadap. ( = ārabbha, sandhāya, paṭicca )</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āghāta','<p class="definition">m.  kemarahan, niat jahat, kebencian, kedengkian, dendam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āghātana','<p class="definition">nt.  pembunuhan, pembantaian, pemukulan, penghancuran, pemusnahan; kematian; keadaan kacau berantakan; rumah jagal; tempat pembantaian, tempat pelaksanaan hukuman mati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācamati','<p class="definition">menyerap air, mencuci; kaus. ācameti  berkumur, mencuci mulut; membersihkan dari, mencebok; menghisap (kembali); ācamāpeti  membuat seseorang membersihkan diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācarati','<p class="definition">mempraktikkan, melakukan, berbuat, bertindak, biasa; menginjaki, menapaki, melewati, melalui.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācariya','<p class="definition">m. guru, pakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācariyaka','<p class="definition">m.  guru.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācāra','<p class="definition">m.  perilaku, tingkah laku, tindak-tanduk, praktik, perilaku yang baik (pantas), kelakuan yang patut, tata krama yang baik, perangai, tingkah langkah, tingkah perangai, perbuatan, sepak terjang, sopan-santun, etiket;  a. bertindak, bertingkah, berperilaku, berbuat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācikkhati','<p class="definition">menceritakan, memberitahu, menguraikan, memaparkan, menjelaskan, menuturkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ācikkhana','<p class="definition">a.  memberi tahu, memaklumkan, mengumumkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āciṇṇa','<p class="definition">(pp dari ācarati ) dipraktikkan, dilakukan, terbiasa, lazim.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ājānāti','<p class="definition">paham, memahami, mengetahui, mempelajari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ājīva','<p class="definition">m.  mata pencaharian, penghidupan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ājīvaka (ājīvika)','<p class="definition">m.  petapa telanjang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āṇattika','<p class="definition">a.  berdasarkan perintah atau suruhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āṇā','<p class="definition">f.  perintah, titah, otoritas, kekuasaan, wewenang, kewibawaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āṇāpeti','<p class="definition">memerintahkan, memberi perintah, memerintahkan seseorang untuk menghadap, memanggil menghadap, memesan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ātāpin','<p class="definition">a.  semangat, menggebu-gebu, gigih, antusias, tekun berupaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ātura','<p class="definition">a. sakit, berpenyakit, gering, tidak enak badan; malang, sengsara, menderita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādāti','<p class="definition">mengambil (untuk diri sendiri).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādāna','<p class="definition">nt.  pengambilan, penggenggaman, kemelekatan (terhadap dunia), penyantapan (makanan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādāya','<p class="definition">setelah mengambil atau menerima atau melakukan; sambil membawa, mengusung, mengambil, menggunakan, menerima; termasuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādi','<p class="definition">a.  pertama, utama, mulai dengan;  nt. dan seterusnya;  m.  awal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āditta','<p class="definition">m.  menyala, membara, terbakar, berpijar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādibrahmacariyaka','<p class="definition">a.  kehidupan luhur yang unggul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādiyati','<p class="definition">mengambil, menggenggam, mencengkam, mengambil untuk diri sendiri, memperhatikan, mengindahkan; terbelah, tercerai-berai, pecah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādisati','<p class="definition">memaklumkan, memberi tahu, menunjukkan, perihal, merujuk ke; mempersembahkan; ger. ādissa .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādīnava','<p class="definition">m.  keadaan merugikan, bahaya, ketidakberdayaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādeyya','<p class="definition">a.  diterima; anādeyyavācā ucapannya tidak dihiraukan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādhāra','<p class="definition">m.  wadah, penampung, “pemegang”, penopang, tumpuan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādhāvati','<p class="definition">berlari menuju, berlari mndekat, berlari mengejar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ādhipateyya (ādhipacca)','<p class="definition">nt.  kekuasaan, kedaulatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānañja','<p class="definition">(ānejja, āneñja ) a.  kokoh, kukuh, tak tergoyahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānaya','<p class="definition">a.  dibawa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānāpāna','<p class="definition">nt.  (āna + apāna)  napas masuk dan keluar; ~sati  penegakan satu atau penyadaran terhadap napas masuk dan napas keluar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānisaṃsa','<p class="definition">m.  terpuji, manfaat, faedah, guna, hasil, kemaslahatan, berkah, keuntungan, bonus.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānubhāva','<p class="definition">m.  = anubhāva</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āneti','<p class="definition">membawa, membawa menuju, mengambil, meraih, menyampaikan, membawa kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpajjati','<p class="definition">mencapai, tiba di, bertemu dengan, mengalami, membuat, menghasilkan, menunjukkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpaṇa','<p class="definition">m.  pasar, toko, kedai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpaṇika','<p class="definition">m.  penjaga toko, pedagang, pemilik toko.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpatti','<p class="definition">f.  pelanggaran (winaya).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpadā','<p class="definition">f.  musibah, malapetaka, bencana, kemalangan, kesukaran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpanna','<p class="definition">(pp dari āpajjati ) dimasuki, dimulai, terjerumus ke dalam, dipenuhi dengan, telah melakukan (pelanggaran); tak beruntung, malang, menyedihkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpātha','<p class="definition">m.  lingkup, cakupan, jangkauan, rentang, fokus, medan (kesadaran atau persepsi), bidikan, penampakan; ~gata  masuk dalam lingkup atau fokus (bidikan), tampak, muncul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpādikā','<p class="definition">f.  perawat, pengasuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpādeti','<p class="definition">(kaus. dari āpajjati ) menghasilkan, menelurkan, mengakibatkan, menimbulkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ābādha','<p class="definition">m.  sakit, penyakit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ābharaṇa','<p class="definition">nt. yang dipakai atau dikenakan yakni hiasan atau dandanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ābhidosika = abhidosika','<p class="definition">n/a</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ābhujati','<p class="definition">menekuk, melipat, condong terhadap, mengerut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ābhoga','<p class="definition">m.  ide, pikiran, suasana batin, kecondongan batin, sangkaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āma','<p class="definition">1. ya, tentu saja; 2.  a.  mentah, belum diolah, belum dibakar, belum dimasak;  nt.  daging mentah; ~gandha  bau bangkai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmaṭṭha','<p class="definition">(pp dari āmasati ) disentuh, diraba, dijamah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmanteti','<p class="definition">memanggil, menyapa, berbicara, menegur, berkata, berucap, berujar, mengundang, berkonsultasi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmalaka','<p class="definition">m.  (buah) malaka, kemloko (Phyllanthus emblica). [malaka ← Skt. āmalaka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmasati','<p class="definition">menyentuh, menyinggung, memegang, meraba, menjamah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmasana','<p class="definition">nt.  penyentuhan, pemegangan, sentuhan, penjamahan, perabaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmisa','<p class="definition">nt.  daging mentah; sesuatu yang mentah atau belum diolah; jasmaniah, material, fisik, materi; makanan, makanan untuk kenikmatan, makanan lezat; umpan; keuntungan, perolehan, pendapatan, imbalan, uang, tip (persen); kenikmatan; keserakahan, nafsu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āya','<p class="definition">m.  pintu masuk; pemasukan, perolehan; lotere.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyati','<p class="definition">f.  masa mendatang, kelak kemudian hari; itonāyati   sejak kini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyasa','<p class="definition">a.  terbuat dari besi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyasmant','<p class="definition">a.  yang telah berusia, yang sepuh; Yang Mulia.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyācati','<p class="definition">memohon, meminta, memohon dengan sangat; meminta berulang-ulang, mendesak; berjanji, berkaul, bersumpah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyāti','<p class="definition">datang ke sini, datang mendekat, menghampiri, datang pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyāma','<p class="definition">m.  membentang, merentang, menjangkau; panjang; hidup, vitalitas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyu','<p class="definition">nt.  usia, umur; umur panjang, daya hidup.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyudha (āvudha)','<p class="definition">nt.  senjata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyūhati','<p class="definition">memajukan, mendorong, mengarah pada, menuju, , berusaha, berupaya, berjuang, tertarik untuk, memupuk, mengerahkan, mengejar, melakukan, menggiatkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āyūhana','<p class="definition">a. nt.  berupaya, berjuang, berusaha, mengerahkan, memobilisasi, memajukan, mendorong, mengejar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārakkha','<p class="definition">m.  menjaga, melindungi, merawat, berjaga-jaga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āraññika','<p class="definition">(= araññaka, āraññāka, āraññaka ) a.  terpencil, di hutan, terasing, hidup di hutan, gemar menyendiri, hidup sebagai petapa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āraddha','<p class="definition">(pp dari ārabhati ) yang telah dimulai, diawali, mulai melakukan, berketetapan hati, bertekad, kukuh, mengusahakan, gigih; ~viriya  nt. gigih penuh semangat, penuh semangat..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārabbha','<p class="definition">(ger. dari ārabhati )  mengawali, memulai; berawal dengan, bertitik-tolak dari, dengan merujuk pada, berkenaan dengan, perihal; ~vatthu  kesempatan untuk berupaya, kewajiban, keprihatinan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārabhati (ārabbhati)','<p class="definition">1. memulai, mengawali, mulai melakukan, berusaha. (viriyam ārabhati  gigih berupaya/bersemangat); 2. membunuh, menghancurkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārambha','<p class="definition">m.  upaya, usaha, inisiatif, prakarsa, mulai; sokongan, landasan, objek, hal, kerepotan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārammaṇa','<p class="definition">nt.  “landasan”, penopang, pembantu, pijakan, tumpuan, sarana, basis, sandaran, kesempatan; kondisi, sebab, penyebab; objek indriawi, objek pikiran atau kesadaran, objek; ditopang oleh, bersandar pada, terpusat, terfokus pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārādhanīya','<p class="definition">a.  dicapai, diraih, berhasil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārādheti','<p class="definition">membuat senang, mengambil hati, meyakinkan; mencapai, meraih, berhasil, mewujudkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārāma','<p class="definition">m.  kesenangan, kegembiraan; tempat bersenang-senang, taman, tempat hiburan, tempat pelesiran; wihara, tempat tinggal para bhikkhu (meliputi bangunan serta pekarangannya).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārāmika','<p class="definition">a.  gemar akan, suka akan; milik atau berkaitan dengan suatu ārāma, pelayan ārāma.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārūḷha','<p class="definition">(pp dari āruhati )  naik, terbit, lanjut sampai, muncul, ditimbulkan, terjadi, dibuat, dilakukan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āruhati','<p class="definition">memanjat, naik, terbit, menaiki, mendaki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārogya','<p class="definition">nt.  tiada sakit, sehat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārocāpeti','<p class="definition">(kaus. II dari āroceti )</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āroceti','<p class="definition">memberi tahu, menceritakan, mengumumkan, berbicara kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āropeti','<p class="definition">(āropeti+)  membantah, memperoleh yang lebih baik daripada (gen.).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālaggeti','<p class="definition">menggantungkan pada, menempelkan pada, mengikatkan pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālapati','<p class="definition">berkata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālapana','<p class="definition">nt.  hal bercakap-cakap, mengobrol, berbicara; sapaan, tegur-sapa, sebutan, panggilan, vokatif, percakapan, pembicaraan, seruan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālaya','<p class="definition">m. nt.  tempat tertengger, tenggeran; kediaman, hunian; kemelekatan, keinginan, kemelengketan, nafsu keinginan, hal menggelayuti; dalih, helat, kepura-puraan, tipu daya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āloka','<p class="definition">m.  penglihatan, pemandangan, pandangan; cahaya terang, benderang; penglihatan jelas, cahaya batin, celik batin; kecemerlangan; ~sandhi m. f.  lubang pengintip, jendela.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālokita','<p class="definition">(pp dari āloketi )  nt. memandangi, melihat pada, melihat ke depan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āḷavaka (āḷavika)','<p class="definition">a.  yang tinggal di hutan, penghuni hutan, yang tinggal di Kota Āḷavī.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āḷimpeti','<p class="definition">1. melumuri, mengolesi; 2. menyalakan (api), membakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āḷhaka','<p class="definition">m. nt.  ukuran volume (takaran) untuk cairan atau benda kering; = 4 pattha ; (Skt. āḍhaka ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvajjati','<p class="definition">merenungkan, memperhatikan, mengindahkan, memaling ke, menangkap (suara), mendengarkan; menyingkirkan, membalikkan, menumpahkan; kaus. āvajjeti .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvajjana','<p class="definition">nt.  hal memalingkan / memalis ke, memperhatikan, mengamati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvaṭa','<p class="definition">a.  tertutup, terselubung, terlarang, kedap terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvaṭṭa','<p class="definition">a. berputar, melingkar, berpelintir; diputar, diubah, digoda; pusaran air; keliling.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvaraṇa','<p class="definition">a. menutupi, menahan; nt. rintangan, halangan, hambatan, tirai; perintang, penghambat, penghalang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvali','<p class="definition">f.  baris, jajaran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvasati','<p class="definition">hidup di/dalam, menghuni, berdiam, menetap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvasatha','<p class="definition">m.  tempat tinggal, permukiman, kediaman, rumah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvaha','<p class="definition">a.  membawa, mendatangkan, menimbulkan, memunculkan, menghantarkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvāsa','<p class="definition">m.  persinggahan, kediaman (para bhikkhu), rumah, permukiman; kompleks bangunan yang terdiri dari balai uposatha, ruang makan, ruang sauna, kamar tinggal (wihara), bilik kediaman (tunggal atau sederet).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvāsika','<p class="definition">a.  berdiam di, menghuni di rumah, penghuni tetap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvāha','<p class="definition">mengambil sang gadis\'' (kaññā-gahaṇaṃ); perkawinan, pernikahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvi','<p class="definition">adv.  jelas, terungkap, nyata, terbuka, di depan mata, tampak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvikamma','<p class="definition">nt.  hal membuat jelas, mengungkapkan, menyingkapkan, menyatakan, menjelaskan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvikaroti','<p class="definition">memaklumkan, menunjukkan, menjelaskan, mengungkapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvijjhana (āviñjana, āviñchana)','a.  melingkupi, bergelayut, bergelantungan; bersentuhan dengan; menuju; menarik, menyeret, menghela.',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvuta','<p class="definition">1. (pp dari āvuṇāti ) terikat, ditenun, terpancang pada; disulakan, ditancap; 2. tertutup, tersumbat, terhalang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvudha (āyudha)','<p class="definition">nt.  senjata, alat untuk bertarung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvuso','<p class="definition">vok. pl. m. (bentuk ringkas dari āyusmanto ) yang terhormat, panggilan akrab sesama bhikkhu terutama bhikkhu senior terhadap bhikkhu junior, atau panggilan akrab bhikkhu terhadap umat awam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āvenika','<p class="definition">a.  spesial, khusus, istimewa, luar biasa, khas, unik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āveḷa','<p class="definition">a.  melingkar, memancar, mencuat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āveḷā','<p class="definition">f.  bunga  hiasan telinga, subang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsajja','<p class="definition">(grd. āsādeti )  duduk di, pergi ke, menghampiri, bertempatkan, termasuk ke, dekat; memasang pada, menghantam, menyerang, memukul, menongkrongi, berkutat pada, dengan gigih, secara spontan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsatti','<p class="definition">f.  kemelekatan, ketergantungan terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsana','<p class="definition">nt.  hal duduk, tempat duduk, bangku.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsanna','<p class="definition">a.  dekat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsaya','<p class="definition">m.  kediaman, tempat yang sering dikunjungi, jelajahan, naungan, penampung, sandaran, penyokong, penopang, kondisi; kecondongan, kecenderungan, niat, hasrat, harapan; leleran, eksresi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsava','<p class="definition">m.  yang mengalir masuk atau keluar; minuman keras (cairan memabukkan yang merupakan ekstrak atau sekresi dari suatu pohon atau bunga); leleran nanah; kotoran batin, leleran batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsādeti','<p class="definition">(kaus. dari āsādati )  menangkap, menyentuh, menghantam, menyerang; menghampiri, mendekati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsīvisa','<p class="definition">m.  ular.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsevati','<p class="definition">mengakrabi, mengunjungi, berlatih, mempraktikkan, mengikuti, menurutkan, menikmati, menggemari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āsevana','<p class="definition">nt.  1. praktik; hal mengikuti, menuruti, atau menggemari; 2. hal berulang-ulang, sambung-menyambung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āha','<p class="definition">ia berkata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhacca','<p class="definition">1. (ger. dari āhanati ); 2. (ger. dari āharati ) telah dilepas, dapat dilepas(kan); melantunkan, disitir, dikutip, dicuplik, pendarasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhaṭa','<p class="definition">(pp dari āharati )  dibawa, diperoleh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhata','<p class="definition">(pp dari āhanati )  dihantam, dipukul, didera, digebuk, dilanda, dipengaruhi oleh; ~citta  nt. batin yang dirundung kebencian, dendam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhanati','<p class="definition">memukul, menghantam, menggebuk, mendera, menyentuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āharaṇa','<p class="definition">nt.  hal membawa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āharati','<p class="definition">mengambil, menggenggam, mengeluarkan, membawa pergi, membawa, menangkap, menjatuhkan (menurunkan), memperoleh, menerima, mendapatkan, menimbulkan, mendatangkan, membawa menuju, melibatkan diri dalam, menyentuh, berpaling kepada; menyerang; mencuplik, menyitir, merujuk ke.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhāra','<p class="definition">m.  makanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhārūpahāra','<p class="definition">m.  konsumsi makanan, penyantapan makanan, hal makan; urusan serah terima, urusan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhiṇḍati','<p class="definition">berkelana, mengembara, dinas, sedang sibuk dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhita','<p class="definition">a.  yang telah dimasukkan˴ ditaruh; yang telah dimasukkan dengan bahan bakar, yang terbakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhuṇa','<p class="definition">nt.  penghormatan, persembahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhuneyya','<p class="definition">a.  layak/patut menerima persembahan atau buah tangan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ikkhaṇika','<p class="definition">m.  peramal, penujum, penilik, cenayang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iṅgha','<p class="definition">hayo, ayo, coba, tolong (partikel bernada mendesak, memperingati).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('icchatā','<p class="definition">f.  keinginan, pengharapan, hasrat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('icchati','<p class="definition">ingin, berniat, hendak, memohon, minta, mengharapkan, condong pada, menganut, bersikukuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('icchā','<p class="definition">f.  keinginan, pengharapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iṭṭha','<p class="definition">(pp dari icchati ) menyenangkan, berkenan di hati, sejahtera; nt. kesejahteraan, kondisi baik, kesenangan, kebahagiaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iṭṭhakā (itthakā)','<p class="definition">f.  batu bata, ubin (genteng).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itara','<p class="definition">a.  yang lain, yang kedua, yang berikut, yang berbeda; itarītara satu atau lainnya, apa pun, siapa pun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iti','<p class="definition">(=ti ) demikian(lah); iccādi dan sebagainya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itivuttaka','<p class="definition">nt.  ‘demikianlah yang diutarakan’, (kitab) kutipan; judul buku keempat dari Khuddaka-nikāya; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ito','<p class="definition">dari sini, dari ini; (di) sini; sejak sekarang, sejak dari, semenjak, dari sekarang, setelah ini, oleh karena itu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthatta','<p class="definition">nt. keadaan sekarang ini, hidup ini, keberadaan (eksistensi) ini; kewanitaan, kefeminian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthaṃ','<p class="definition">demikian, dengan cara ini; ~nama  bernama demikian, dipanggil demikian, disebut demikian, dinamai demikian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthi (itthī)','<p class="definition">f.  wanita, perempuan, istri;  ~dhana nt. harta istri, maskawin, mahar. [istri ← Skt. strī]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthikā','<p class="definition">f.  wanita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('idāni','<p class="definition">kini, sekarang, baru saja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddha','<p class="definition">(pp dari ijjhati )  berhasil, sukses, gemilang; kaya, makmur, berkecukupan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddhi','<p class="definition">m.  ‘daya’; kemampuan, kekuatan; daya gaib; kondisi, keadaan, posisi, pengaruh serta kekuatan yang unggul atau baik; keberhasilan; ~pāṭihāriya nt.  mukjizat kekuatan gaib;  ~pāda  m. nt. sarana keberhasilan, landasan kemampuan gaib, landasan daya batin; ~visaya m. rentang atau jangkauan daya (gaib).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddhimant','<p class="definition">a.  berkemampuan, berhasil, berjaya; memiliki daya gaib.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('idha','<p class="definition">adv.  di sini, di dunia ini, dalam kelahiran ini, dalam hubungan ini, dalam kaitan ini, sehubungan dengan ini, baru saja, sekarang, akhir-akhir ini; punar idhāgato  kembali ke dunia ini lagi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('inda','<p class="definition">(inda+)  gopaka m.  sejenis serangga berwarna merah, semacam belalang, kumbang kecil (lady-bird/bug) yang akan keluar dari tanah sehabis hujan, laron.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('indriya','<p class="definition">nt.  dasar pengendali, kekuatan pengarah; fungsi, kemampuan, kecakapan, daya, daya pengendali, indra (bukan organ); jenis, ciri, roman, azas penentu, tanda; jenis kelamin; kekuatan utama, kekuatan pengendali; kategori. [indra/indria ← Skt. indriya]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iriyā','<p class="definition">f.  gerakan, sikap badan, tingkah laku; ~patha  m. cara berperilaku, cara bertingkah laku, cara bergerak, tindak-tanduk, perilaku baik, gerakan, sepak terjang, gerak-gerik, sikap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('isi','<p class="definition">m.  orang suci, orang kudus, resi; sepuluh penggubah atau pelantun kidung Weda (Aṭṭhaka, Vāmaka, Vāmadeva, Vessāmitta, Yamataggi/ Yamadaggi, Aṅgirasa, Bhāradvāja, Vāseṭṭha, Kassapa, Bhagu); ~sattama  tujuh orang suci (Vipassin, Sikhin, Vessabhu, Kakusandha, Koṇāgamana, Kassapa, dan Gotama). [resi ← Skt. ṛṣi]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('issara','<p class="definition">m.  tuan, penguasa, juragan, majikan, bos, pemimpin; dewa pencipta, Tuhan, Sang Pencipta, Dewa Brahma.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('issariya','<p class="definition">m.  daya kekuasaan, kekuasaan; issariyaṃ kāreti  berkuasa atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('issā','<p class="definition">f.  iri hati; ~pakata a. diliputi iri hati, penuh iri hati, berwatak suka iri hati, dilanda iri hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('issukī','<p class="definition">a.  iri hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iha','<p class="definition">adv. sini; tasmātiha oleh karena itu di sini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('īti (ītī)','<p class="definition">f.  penyakit, malapetaka, bencana, wabah, gangguan, kesukaran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkaṇṭhati','<p class="definition">mendambakan, tak puas, cerewet.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkaṇṭhita','<p class="definition">(pp dari ukkaṇṭhati )  tidak puas, cemas, menyesal, mendambakan, cerewet, kesal, jengkel, dongkol.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkā','<p class="definition">f.  bara api, nyala api, obor; perbaraan, perapian, tungku, anglo.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkujjeti (ukkujjati)','<p class="definition">membalikkan kembali, menegakkan kembali, meluruskan kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkuṭika','<p class="definition">m.  sejenis cara jongkok; setengah jongkok; jongkok dengan tumit terangkat dari tanah dan kedua siku diletakkan di atas lutut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkhitta','<p class="definition">(pp dari ukkhipati )  diambil, diangkat, dibekukan (diskors), ditunda, ditangguhkan, digantungkan); diterbangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkhipati','<p class="definition">(ukkhipati+)   menganggukkan kepala.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ukkheṭita','<p class="definition">a.  diludahkan, disemburkan, dilontarkan, dibuang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uggacchati','<p class="definition">naik, terbit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uggaṇhāti','<p class="definition">mengambil, memperoleh, mempelajari, menguasai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ugghāṭeti','<p class="definition">mengambil, melepaskan, menghilangkan, mengakhiri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ucca','<p class="definition">a.  tinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāra','<p class="definition">m.  kotoran, berak, tahi, feses, tinja; uccāraṃ gacchati  berak, membuang air besar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāranā','<p class="definition">f. nt.  hal mengangkat naik, menerbitkan, mencetuskan; hal bersuara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāreti','<p class="definition">mengangkat, mengangkat tinggi-tinggi, menjunjung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāliṅga','<p class="definition">m.  cacing perut, ~pāṇaka  m. ulat bulu atau cacing-cacingan (= lomasapāṇaka ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāvaca','<p class="definition">a.  tinggi dan rendah, aneka, beragam, berbagai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccināti','<p class="definition">mengumpulkan, memilih, mencari, memungut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ucchindati','<p class="definition">menghancurkan, meluluhlantakkan, membinasakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ucchu','<p class="definition">m.  tebu (Saccharum officinarum).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccheda','<p class="definition">m.  penghancuran, pemotongan, pemutusan, pelenyapan, pencerai-beraian, kemusnahan/ pemusnahan; ~vāda a.  yang berpaham bahwa setelah seseorang meninggal segalanya pun tamat sudah (tiada kelahiran kembali), yang menganut paham kemusnahan, annihilasionis.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uju (ujju)','<p class="definition">a.  lurus, tegak, langsung; jujur, sadik, mustakim.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ujjalana','<p class="definition">nt.  hal menyalakan (pelita).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ujjhaggati (ujjagghati)','<p class="definition">menertawakan, terbahak-bahak, tergelak-gelak, mengejek, mencemoohkan, memperolok-olokkan, mempersendakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ujjhāpeti','<p class="definition">(kaus. dari ujjhāyati )  menggoda, mengganggu, mengusik, menyakitkan hati, menjengkelkan, mendongkolkan, mengesalkan, mengeluh, mengadu kepada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ujjhāyati','<p class="definition">terusik, terganggu, menjadi jengkel atau kesal, mendongkol, menggerutu; mencibir, mencemooh, memandang rendah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uñcha (uñchā)','<p class="definition">f.  apa saja yang dikumpulkan untuk dijadikan makanan, mengumpulkan sedikit demi sedikit; hal merapu makanan [memunguti (barang-barang yang terbuang atau tidak berguna); meminta sedekah].</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uṭṭhahati (uṭṭhāti)','<p class="definition">berdiri, bangkit, bangun, muncul, mencuat, dihasilkan, bangkit berupaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uṭṭhāpeti','<p class="definition">(kaus. dari uṭṭhahati )  membuat naik (terbit, bangun); menaikkan; menyiapkan atau memperlengkapi (dengan); menyanjung, memuji; mengusir (seseorang), mengangkat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uṇha','<p class="definition">a.  panas, hangat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('utu','<p class="definition">m. nt.  waktu (yang baik atau sesuai), musim, iklim; panas, suhu, kalori; masa subur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttanta','<p class="definition">ketakutan, pingsan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttama','<p class="definition">a.  “yang ter”, tertinggi, terbesar, terbaik, adiluhung, utama. [utama ← Skt. uttama]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttara','<p class="definition">a.  lebih tinggi, tinggi, atas, superior; utara; berikut, selanjutnya; lebih. [utara ← Skt. uttara]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttarati','<p class="definition">keluar dari (air), melintasi, mengalir, meluap, menjelajahi, menyebar, mendidihkan, menyeberangi, mengarungi, melampaui, membentangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttarattharaṇa','<p class="definition">nt.  kain penutup/alas ranjang atau kursi, seprai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttarāsaṅga','<p class="definition">m.  jubah atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttari (uttariṃ)','<p class="definition">melebihi, unggul, tambahan, lanjut; ~bhaṅga nt. jatah (bagian) ekstra, kudapan, makanan kecil; ~manussadhamma m.  kualitas yang mengungguli manusia biasa, kemampuan lebih terhadap manusia awam; pencapaian daya supramanusia.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttasati','<p class="definition">membuat takut, diperingati atau ditakuti, menjadi ketakutan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttāna','<p class="definition">a.  terentang, terjengkang; jelas, terbuka, nyata; dangkal; ~mukha  berbicara jelas, mudah dipahami, berwajah terbuka; ~seyyaka  “berbaring telentang”, bayi..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttāreti','<p class="definition">(kaus. dari uttarati )  mengeluarkan, mengangkat keluar, mengentas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udaka','<p class="definition">nt.  air, perairan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udagga','<p class="definition">a.  tertinggi, tinggi; sangat gembira, agung, mulia, bahagia, melonjak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udañjala~ṃ kīḷati','<p class="definition">bermain air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udadhi','<p class="definition">m.  samudra, lautan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udapādi','<p class="definition">(aor. 3rd sg. dari uppajjati )  muncul, menjadi, terlahir, terbit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udapāna','<p class="definition">m. sumur, telaga, waduk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udara','<p class="definition">nt.  perut; ruang, lubang, rongga, bagian dalam;  ~vaṭṭi kantung perut, perut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udāna','<p class="definition">nt.  ungkapan suasana hati dalam wujud sajak, ungkapan ketergugahan hati, ungkapan sukacita; judul kitab ketiga dari Khuddaka -nikāya; salah satu ragam kitab suci (▶ navaṅgabuddha-sāsana ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udāneti','<p class="definition">mencetuskan, mengungkapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udāharaṇa','<p class="definition">nt.  contoh, misal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udāhāra','<p class="definition">m.  ungkapan, ucapan, tuturan, khotbah, wejangan, pernyataan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udukkhala','<p class="definition">m. nt.  lesung, lumpang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddasseti','<p class="definition">memperlihatkan, menampakkan, mempertunjukkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddāna','<p class="definition">nt.  rangkuman, ringkasan, ikhtisar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddiṭṭha','<p class="definition">(pp dari uddisati ) telah ditunjukkan, ditunjuk, dipaparkan, dibabarkan, diajukan, dikemukakan, , digariskan, dirumuskan; ditujukan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddisati','<p class="definition">mengajukan, menunjukkan, menunjuk, membagikan; menetapkan, melimpahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddissa','<p class="definition">setelah ditunjukkan oleh, dengan tanda-tanda atau indikasi (petunjuk); menunjuk pada, mengarah pada, ditujukan kepada; terhadap, kepada; dengan mengacu pada, karena, sehubungan dengan, berkaitan dengan, atas nama; dengan tujuan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddesa','<p class="definition">m.  pemaparan, penguraian, pelantunan, pengulasan, penjelasan, rincian, seluk-beluk; acuan; pendarasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddhaṃ','<p class="definition">tinggi, di atas, atas, di puncak; mendatang, di masa depan, karena itu, dari itu; ~mukha  adv. menghadap ke atas/hulu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddhacca','<p class="definition">nt. kegelisahan, agitasi, gangguan, batin yang meluap-luap, hal terangsang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddhana','<p class="definition">nt.  tungku, anglo, tanur, perapian, perbaraan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddharaṇa','<p class="definition">nt.  pengambilan, pengangkatan, penaikan, penarikan (keluar).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddharati','<p class="definition">menaikkan, terbit, mengangkat; terlampau naik, mengguncang; mengambil, mencabut, menyingkirkan; menarik keluar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('undura','<p class="definition">m. tikus.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('unnamati','<p class="definition">naik, menaik, menegakkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('unnāmin','<p class="definition">a.  naik, menaik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakacchaka','<p class="definition">m.  seperti sebuah cekungan atau lekukan, seperti ketiak, seperti lubang, ketiak, pangkal paha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakaṭṭha','<p class="definition">a.  mendekati, hampir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakaḍḍhati','<p class="definition">menyeret, menghela, menarik (menuju), menjerumuskan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakappati','<p class="definition">bermanfaat untuk, (bisa) sampai pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakaraṇa','<p class="definition">nt.  bantuan, layanan, dukungan, sarana mempertahankan hidup, penghidupan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakāra','<p class="definition">m.  pelayanan, bantuan, manfaat, kewajiban, pertolongan, kemurahan hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakkama','<p class="definition">m.  hal menuju, pergi ke, mendekati, menghampiri, menyerang, menerapkan, mengenakan; melakukan, bertindak, melangsungkan, tindakan; cara, sarana, upaya, jalan, jalan yang bijaksana, jalan keluar, muslihat, cara jahat, persekongkolan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakkamati','<p class="definition">mengawali, memulai, menyerang, melakukan, berupaya, berusaha, berikhtiar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upakkilesa','<p class="definition">m.  kotoran batin, cemaran batin, noda batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaga','<p class="definition">a. mencapai, sampai pada, mengalami, yang dihasilkan, yang dimiliki, berada dalam (yathā-kammūpaga keberadaan yang sesuai dengan perbuatan; berada dalam kondisi sesuai perbuatan (lampau) mereka).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upagacchati','<p class="definition">datang ke, pergi ke, menghampiri, mengalir ke; menjalani, mengalami, memulai, melangsungkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upagata','<p class="definition">(pp dari upagacchati ) pergi ke, datang, menghampiri; mengalami, menjalani, menderita, dilanda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upacāra','<p class="definition">m.  mendekati, jalan masuk; daerah seputar; kebiasaan, praktik, perilaku; jalan, cara penerapan, penggunaan; perhatian, kehadiran, kesopanan, perilaku sopan; hampir, menuju.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upacikā','<p class="definition">f.  rayap, anai-anai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upacita','<p class="definition">(pp dari upacināti )  tertumpuk, terkumpul, dihasilkan, dilestarikan, disimpan, dibangun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upacitatta','<p class="definition">nt.  penimbunan, pengumpulan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upacchindati','<p class="definition">memutuskan, memotong, memisahkan, menceraikan, menghancurkan, menyela, menghentikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaccheda','<p class="definition">m.  pemutusan, penghancuran, pengakhiran, penghentian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upajīvin','<p class="definition">a. hidup mengandalkan, bertahan hidup dengan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upajjha= upajjhāya','<p class="definition">n/a</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upajjhāya','<p class="definition">m.  guru spiritual, guru pelantik (menjadi bhikkhu), guru pemberi sila, guru pembimbing setelah diterima sebagai seorang bhikkhu (ke dalam Sanggha), mentor.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhapana','<p class="definition">nt.  hal menyediakan, menyiapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhapeti (upaṭṭhāpeti)','<p class="definition">(kaus. dari upaṭṭhahati )  menyediakan, memperoleh, mendapat, menyiapkan, menawarkan, memberi; menghadirkan, menyuruh dilayani atau dirawat; menggaji, mengupahi (seorang pelayan)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhahati (upaṭṭhāti)','<p class="definition">berdiri dekat, menunggui, melayani, merawat, menyokong, menopang; muncul, mencuat, terjadi, hadir; memahami.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhāka','<p class="definition">m.  pelayan (pribadi), abdi; ~kula  nt. keluarga pelayan, keluarga pengabdi, keluarga penyokong (penopang), dayaka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhāna','<p class="definition">nt.  pelayanan, pengabdian, perawatan, pemeliharaan, peladenan, hal menyertai; sembahyang; balairung, balai besar; pemahaman, pengertian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhita','<p class="definition">(pp dari upaṭṭhahati ) yang telah disiapkan, dilayani, disediakan; siap; yang dihormati dengan; tiba, mencapai, muncul, hadir, ada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭheti','<p class="definition">(kaus. dari upaṭṭhahati ) menyuruh melayani, menyokong; upaṭṭhessati menempatkan, memasang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upatiṭṭhati','<p class="definition">berdiri dekat, merawat, mengagungkan, memuliakan, menjunjung tinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upatta','<p class="definition">a.  berlumuran, bergelimang, teroles.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upatthaddha','<p class="definition">(pp dari upatthambhati )  kaku, tegang, mengeras; ditopang, disangga, bertumpu pada, bersandar pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upatthambha','<p class="definition">m.  penyokong, penguat, penopang, sangga, tiang, saka (guru); ereksi; kelegaan, peredaan; dorongan (semangat).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upatthambheti','<p class="definition">(kaus. dari upatthambhati ) memperkokoh, menopang, memperkuat, menyokong, menyangga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upadesa','<p class="definition">m.  hal menunjukkan, instruksi, nasihat, uraian, penjelasan, wejangan, penuntun, tuntunan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaddava','<p class="definition">m.  ‘melanda’; musibah, geruh(-gerah), kegeruhan, malapetaka, kesusahan, rintangan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaddavati','<p class="definition">mengganggu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upadduta','<p class="definition">(pp dari upaddavati )  dilanda, diserbu, diserang, ditindas, diganggu, diusik, ditaklukkan, menderita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upadhāraṇa','<p class="definition">nt.  “penampung”, ember susu, kokoh, mantap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upadhi','<p class="definition">m.  meletakkan (di bawah), landasan, substansi, materi, bahan dasar (baku), fondasi (kelahiran kembali); kemelekatan terhadap kelahiran kembali; objek kemelekatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanāmeti','<p class="definition">membungkuk terhadap, menempatkan berlawanan atau dekat dengan, menghampiri, membawa dekat; mempersembahkan, memberikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanāyika','<p class="definition">a.  menunjuk ke, berkenaan dengan, mengenai; menjelang (memasuki).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanāha','<p class="definition">m.  niat jahat, dendam, kebencian, rasa permusuhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanikkhitta','<p class="definition">a.  ditaruh (secara sembunyi-sembunyi), ditempatkan dekat atau di atas;  m. mata-mata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanikkhipati','<p class="definition">menyimpan dekat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanijjhāyati','<p class="definition">merenungkan, mengingat-ingat, memenungkan, memandangi, mengkhayalkan, mengenang-ngenangkan, membayang-bayangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanidhi','<p class="definition">f.  timbunan, simpanan; cagar, benda tanggungan, jaminan; perbandingan;  upanidhiṃ na upeti tak dapat diperbandingkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanipajjati','<p class="definition">berbaring dekat dengan, berbaring di atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanisīdati','<p class="definition">duduk dekat dengan atau pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upanissāya','<p class="definition">(ger. dari upanissayati ) adv.  dekat, bergantung pada, dengan atau melalui.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaneti','<p class="definition">membawa menuju, menimbulkan, mengakibatkan, menyodorkan, memberikan, menghadirkan; diakhiri; dibawa serta, dibawa pergi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upapajjati','<p class="definition">membawa ke, terlahir di, berasal, muncul, mencapai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upapatti','<p class="definition">f.  kelahiran, kelahiran kembali; kesempatan; objek yang sesuai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaparikkhati','<p class="definition">mencermati, menyelidiki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upapāta','<p class="definition">m.  kelahiran; kelahiran kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upabrūhaṇa','<p class="definition">nt.  ekspansi, perluasan, pertambahan, pengembangan, tambahan, penguatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upabhoga','<p class="definition">m.  kenikmatan, keuntungan, kebutuhan, kegunaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upama','<p class="definition">a.  “hampir”, seperti, mirip, sama (dengan). [umpama Ü Skt. upama]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uparamati','<p class="definition">berhenti, mereda, tenang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upari','<p class="definition">di atas, di bagian atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uparima','<p class="definition">a.  di puncak, di (bagian) atas, (tingkat) yang lebih tinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uparodheti','<p class="definition">(kaus. dari uparundhati )  menghentikan, merintangi, menyetop, menghancurkan, membinasakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upalāpeti','<p class="definition">membujuk, merayu, memikat, mengambil hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upavāda','<p class="definition">m.  hal mencela, mencari-cari kesalahan, menghina.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upavādaka','<p class="definition">a.  mencela, mencari-cari kesalahan, berbicara buruk terhadap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasaṃharati','<p class="definition">mengumpulkan, menyatukan, mengonggokkan; mengatur, memusatkan, memfokuskan; menggenggam, menghadirkan, menjaga, menyediakan, melayani, merawat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasaṃhita','<p class="definition">a.  ditemani oleh, disuguhi, berkaitan dengan, ditawari, diajak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasagga','<p class="definition">m.  1. serangan, gempuran, gangguan, bahaya; 2. prefiks, preposisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasaṅkamati','<p class="definition">mendekati, menghampiri, pergi menuju, mendatangi, memasuki; merawat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasama','<p class="definition">m. kekaleman, ketenangan, keheningan, kedamaian, keredaan, ketenteraman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasampajjati','<p class="definition">mencapai, memasuki, memperoleh, ditahbiskan menjadi seorang bhikkhu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasampadā','<p class="definition">f.  pengambilan, penerimaan, perolehan, pelaksanaan; pengambilan kebhikkhuan, penahbisan menjadi bhikkhu, penerimaan menjadi bhikkhu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upasampanna','<p class="definition">(pp dari upasampajjati ) diperoleh, didapatkan, diterima, diperoleh kebhikkhuan, diterima sebagai bhikkhu, ditahbiskan menjadi bhikkhu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upassaya','<p class="definition">m. kediaman, peristirahatan (pesanggrahan), perlindungan, suaka, perteduhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upahata','<p class="definition">(pp dari upahanti ) cedera, rusak, musnah, hancur, terganggu, terhambat, terhalang; ~indriya  cacat indra.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upahanti (upahanati)','<p class="definition">menghambat, mencederai, mengurangi, menghalangi, merusak, menghancurkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upahāra','<p class="definition">m.  pengajuan, penawaran, pemberian, persembahan, hadiah, penghadiran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upādā','<p class="definition">adv. bergantung pada sesuatu; bukan asli, turunan, wujud sekunder (dari rūpa).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upādāna','<p class="definition">nt.  bahan bakar, pasokan, persediaan, bekal; kemelekatan; hal menggenggam, mencengkeram.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upādāya','<p class="definition">adv. berdasarkan atas, dibandingkan dengan, dengan mengacu pada, menurut, demi, selaras dengan; karena, disebabkan oleh; bergantung pada, dengan melekat pada, dengan berpegangan pada; turunan, wujud sekunder (dari rūpa).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upādiṇṇa','<p class="definition">(pp dari upādiyati )  digenggam, ditangkap, diambil, digunakan; hasil (akibat) penggenggaman yakni materi, turunan, sekunder; bernyawa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upādiyati','<p class="definition">menggenggam, memegang, menempel pada, melekat pada.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upāyāsa','<p class="definition">m.  kekecewaan, keputusasaan, gejolak, kehilangan harapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upāsaka','<p class="definition">m.  umat berumah tangga, umat awam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upāsikā','<p class="definition">f.  umat awam wanita, umat berumah tangga wanita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upekkhaka','<p class="definition">a.  ketidakacuhan, kecuekan, keseimbangan batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upekkhā (upekhā, upekkhanā)','f.  keseimbangan batin, ketidakacuhan; perasaan netral (= <i>adukkhamasukhaṃ</i>  tidak menderita pun tidak bahagia).',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upeta','<p class="definition">(pp dari upeti )  memiliki, dianugerahi, ber…..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upeti','<p class="definition">pergi ke, datang pada, menghampiri, mencapai, mengalami.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uposatha','<p class="definition">m.  hari Uposatha, ibadat Uposatha, sila Uposatha; ~agga  (uposathāgāra ) tempat penyelenggaraan Uposatha, tempat pelantunan patimokkha; ~kamma  pertemuan atau upacara yang berhubungan dengan hari Uposatha; uposathaṃ karoti  melakukan ibadat Uposatha; uposathaṃ upavasati  mengamalkan Uposatha, menjalani ibadat Uposatha, melakukan puasa Uposatha (dengan menjalankan delapan sila); uposathaṃ samādiyati  mengambil sila Uposatha (delapan sila). [puasa/upawasa ← Skt. upavasa(tha)]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppakka (upakka)','<p class="definition">a.  terpanggang, hangus, gosong, terbakar, menyelara (mengering), melayu, mengisut, mengeriput, mengerut, melisut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppajjati','<p class="definition">lahir, muncul, hadir, terbentuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppajjanaka','<p class="definition">a. muncul, timbul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppaṇḍuppaṇḍukajāta','<p class="definition">a.  pucat pasi, kekuning-kuningan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppaṇḍeti','<p class="definition">menertawai, mengejek, berolok-olok, mencemoohkan, memperolok-olokkan, menggoda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppatati','<p class="definition">terbang ke atas, loncat ke atas, terlontar ke atas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppatti','<p class="definition">f.  kemunculan, hasil, kelahiran, kejadian, pemerolehan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppatana','<p class="definition">nt. terbang, naik, loncat, lompat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppanna','<p class="definition">a.  (pp dari uppajjati ) terlahir kembali, muncul, terbentuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppala','<p class="definition">m.  teratai (biru), bunga teratai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppāda','<p class="definition">m.  hal muncul, mengada, lahir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppādeti','<p class="definition">(kaus. dari uppajjati ) memunculkan, menimbulkan, menerbitkan,menghasilkan, melahirkan, mencetuskan, memperlihatkan, membuat; memperoleh, mendapatkan; mengeluarkan (darah).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uppilavati (uplavati)','<p class="definition">muncul (dari air), terbit, terapung; melonjak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbaṭṭeti','<p class="definition">melumuri, melumangkan, melumas, memolesi, mengolesi, memulas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbandhati','<p class="definition">menggantung (diri), mencekik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbāḷha','<p class="definition">a.  tertekan, terganggu, terusik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbijjati','<p class="definition">menjadi terganggu atau terusik, menjadi ketakutan atau kecut hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbedha','<p class="definition">m.  ketinggian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbhaṃ','<p class="definition">di atas; ubbhajānumaṇḍalaṃ  di atas lutut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubbhujati','<p class="definition">berbungkuk, mengangkat (secara paksa); ubbhujitvā secara paksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubhato','<p class="definition">adv.  kedua, dua; ~vyañjanaka  berkelamin ganda; hermafrodit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ubho','<p class="definition">a.  keduanya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ummattaka','<p class="definition">a.  gila, tidak waras.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ummasati','<p class="definition">menyentuh, memegang, mengangkat, meraba naik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ummasanā','<p class="definition">f.  hal mengangkat naik, meraba naik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ummujjati','<p class="definition">muncul dari, menyembul dari, keluar dari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uyyāna','<p class="definition">nt.  taman, kebun raya, taman hiburan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uyyojeti','<p class="definition">(kaus. dari uyyuñjati ) mengupayakan, menghasut, membujuk, memecat, berpamitan kepada, mengirim, melepaskan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ura','<p class="definition">m. nt.  dada, payudara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uracchada','<p class="definition">m.  (hiasan) penutup payudara, perisai payudara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ulūka','<p class="definition">m.  burung hantu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ullaṅghati','<p class="definition">meloncat, bangkit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ullaṅghanā','<p class="definition">f.  hal meloncat naik, melonjak, naik, berbangkit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ullapati','<p class="definition">berseru, berbicara kepada, mengajukan tuntutan atas, menyerukan, mengklaim, menyatakan, berkoar tentang, menjerit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ullapana','<p class="definition">nt.  hal menyatakan, menyerukan, mengklaim, mengajak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ullitta','<p class="definition">a.  berturap atau berlepa dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uḷāra','<p class="definition">a.  besar, agung, mulia, luhur, bagus, kaya, hebat, ulung, unggul, baik sekali; nyata mewujud (physically actualized). (Menurut Dhammapāla, kata ini mengandung tiga makna : paṇītaṃ, seṭṭhaṃ, dan mahantaṃ.)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uḷāratta','<p class="definition">nt.  kehebatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uḷumpa','<p class="definition">m.  rakit, pengapung, pelampung, getek.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('usabha','<p class="definition">m.  sapi jantan (acapkali sebagai simbol kejantanan dan kekuatan); puris~  pria perkasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('usu','<p class="definition">m. f.  panah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('usmā','<p class="definition">f. panas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussakkati','<p class="definition">1. merangkak keluar atau ke atas, naik; 2. berusaha, mencoba, berupaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussanna','<p class="definition">a.  meluber, berlimpah, menumpuk, banyak, penuh dengan; dinobatkan; meluas, terhampar luas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussarati','<p class="definition">berlari keluar, melarikan diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussava','<p class="definition">m.  pesta, kenduri, pesta pora, hari raya, perayaan, festival.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussahati','<p class="definition">mampu, cocok, berani, sanggup, kuasa, dapat; menggiatkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussāpeti','<p class="definition">mengangkat, menegakkan, menaikkan, mengagungkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussāreti','<p class="definition">1. (kaus. dari ussarati ) membuat pindah kembali, membuat pergi, menyurut; 2. ( = ussādeti ) membuat berkibar, membuat terbang, mengangkat, menerbangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussāhita','<p class="definition">(pp dari ussāheti )  ditetapkan, dihasut, didorong, didesak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ussita','<p class="definition">(pp dari ussāpeti )  ditegakkan, tinggi, diangkat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('usseḷi','<p class="definition">bersuit-suitan, bersorak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūna','<p class="definition">a.  kurang, tak cukup, kekurangan; ekūna  kurang satu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūmī (ūmi)','<p class="definition">f. gelombang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūru','<p class="definition">m.  paha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūsa','<p class="definition">m.  garam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūsara','<p class="definition">a.  asin, bergaram; nt.  tanah yang asin atau bergaram.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūhata','<p class="definition">a.  terangkat; dikeluarkan, keluar; rusak, hancur; tercemar kotoran, terganggu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūhanati','<p class="definition">memotong, memancarkan, mengganggu, menghantam, mengeluarkan, berak; menaikkan, mengambil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ūhasati','<p class="definition">menertawai, mengejek, mencemoohkan, memeperolok-olokkan, terkikih-kikih, tertawa genit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('eka','<p class="definition">a.  satu, tunggal, sendirian, masing-masing (Ye samaṇa-brāhmaṇā ekam attānaṃ damenti  para pertapa dan brahmana itu menjinakkan diri masing-masing), sama (ekadivasena pada hari yang sama); suatu (ekadivasaṃ suatu hari), sesuatu; ekaṃ ekaṃ  satu per satu; eke  sejumlah (pahūta-jivhe eke kumāre passāmi  saya melihat sejumlah anak yang berlidah panjang besar); eko ekāya  seorang pria dan seorang wanita, satu lawan satu; ~uddesa m. kompak dalam satu Patimokkha, berada dalam satu pelantunan Patimokkha; ~eka  a. satu per satu, masing-masing, setiap; ~pahārena  secara serentak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekaṃsa','<p class="definition">1. a. berkaitan dengan satu bahu, di atas atau dengan satu bahu (ekaṃsaṃ uttarāsaṅgaṃ karoti  menata jubah atas menutupi satu bahu); 2. “satu bagian atau titik”, terfokus, tertentu; penegasan, kepastian, kemutlakan; ekaṃsena  adv. pasti(nya), secara mutlak, tak terelakkan, selalu demikian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekagga','<p class="definition">a.  tenang, damai, hening; terpusat, menunggal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekacca','<p class="definition">suatu, tertentu, sebagian; ekacce   (pl.) sejumlah, beberapa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekajjhaṃ','<p class="definition">adv.  ditempat yang sama, bersama-sama.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekato','<p class="definition">(ekato+)  hutvā  “menjadi satu”, bersepakat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekattha','<p class="definition">adv.  di suatu tempat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekatra','<p class="definition">☞  ekattha</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekadā','<p class="definition">adv.  sekali, pada suatu kali, sekali waktu, pada waktu bersamaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekanta','<p class="definition">a.  satu sisi, di satu ekstrem (ujung); terujung; cukup, amat sangat, sekali, sama sekali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekamantaṃ','<p class="definition">di satu sisi, di satu sudut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekāyana','<p class="definition">nt.  langsung, menuju satu arah, mengarah satu tujuan (bukan : satu-satunya jalan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekāha','<p class="definition">adv.  satu hari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekodi','<p class="definition">a.  terfokus, terpusat, terpancang, terarah, menunggal;  ~bhāva m.  hal atau keadaan terpusat, terkonsentrasi; kemenunggalan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('eta(d)','<p class="definition">ini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('etarahi','<p class="definition">adv.  sekarang, saat ini, dewasa ini, kini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('eti','<p class="definition">pergi (ke), mencapai; datang kembali, balik kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ettaka','<p class="definition">a.  sekian, sebesar ini, sebanyak itu, sebegitu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ettāvata','<p class="definition">dengan sebegitu (sebegini).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ettha','<p class="definition">adv. di sini, di tempat ini, sekarang; dalam hal ini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('edhati','<p class="definition">makmur, sejahtera, sukses, berkembang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('eḷaka','<p class="definition">m.  biri-biri (domba) jantan, kambing (bandot liar).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('eva','<p class="definition">(kata penegas)  lah, tuh (kiṃ evidaṃ apa ini), begitu, hanya ….. saja (aṭṭhikāneva  hanya (tinggal) tulang saja); nih; betapa; nian; pula, masih; (naheva  sungguh tidak); ternyata; yaññad eva (yaṃ yad eva)  apa pun; ~rūpa  seperti itu, sedemikian, berwujud seperti itu, cantik, bajik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('evaṃ','<p class="definition">adv.  demikian(lah), begitu, ya, dengan cara demikian, maka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('esa','<p class="definition">bentuk m. sg. dari etad .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('esā','<p class="definition">bentuk f. sg. dari etad .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okappeti','<p class="definition">meletakkan pikiran pada, mempercayai, meyakini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okassati','<p class="definition">menyeret, menarik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okāsa','<p class="definition">(okāsa+)   tak ada kesempatan untuk melakukannya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okirati','<p class="definition">menuang, menumpahkan; mencampakkan, membuang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okirinī','<p class="definition">a.  terbuang, buangan; bergelimangan (bara api).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okilinī','<p class="definition">a.  meniris.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okkamati','<p class="definition">masuk, masuk ke dalam, jatuh ke dalam, tiba pada, mengembangkan, muncul dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('okkhitta','<p class="definition">(pp dari okkhipati )  melontar ke bawah, jatuh ke bawah, mengarah ke bawah, tercampak ke bawah, memandang ke bawah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ogāhati (ogāheti)','<p class="definition">masuk ke dalam, cemplung ke dalam, terjun ke dalam, terserap dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ocaraka','<p class="definition">m.  penyidik, informan, mata-mata, pengintai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ocarati','<p class="definition">mencari, menyelami, menyelidiki, menyidik, mengintip, mengintai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ocita','<p class="definition">(pp dari ocināti )  dikumpulkan, dipetik, digentas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ocināti (ocinati)','<p class="definition">mengumpulkan, memetik, menggentas; menghina, meremehkan, diabaikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ojā','<p class="definition">f.  kekuatan, sari nutrisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oṭṭha','<p class="definition">m.  1. bibir; 2. unta. [unta ← Skt. oṣṭra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oḍḍeti','<p class="definition">(uḍḍeti ) melemparkan (jaring), memasang jerat, mengikat, membuang; menunggingkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oṇirakkha','<p class="definition">m.  penjaga benda-benda jaminan atau tanggungan, penjaga barang titipan atau simpanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('otarati','<p class="definition">turun, menuruni; kaus.  otāreti  menyuruh (menyebabkan) turun, membawa turun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('otiṇṇa','<p class="definition">(pp dari otarati )  ke bawah, turun, merosot, tenggelam, hanyut; ditimpa, dipengaruhi, menjadi korban dari, dihampiri, dilanda, ditanggulangi, dikuasai; dilanda atau dikuasai nafsu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ottappa','<p class="definition">nt.  takut diasingkan, takut berbuat jahat, segan, sungkan, menyesal. (Vism 464 kāyaduccaritādīhi yeva ottappatī ti ottappaṃ; pāpato ubbegassetaṃ adhivacanaṃ.)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ottharati','<p class="definition">menutupi, melindas, menerjang, membentang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odaka','<p class="definition">nt.  air; ~antika tempat di seputar air, tempat dekat air, “berakhir dengan air”, pembilasan akhir, pembilasan dengan air, pembilasan setelah bersenggama, berakhir dengan pembasuhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odana','<p class="definition">m. nt.  nasi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odaniya','<p class="definition">a.  nasi, terbuat dari nasi; ~ghara  dapur nasi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odapattakinī','<p class="definition">f. a.  istri mangkuk air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odāta','<p class="definition">a.  bersih, putih, putih keperakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('onamati','<p class="definition">menekuk ke bawah, membungkuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('onamana','<p class="definition">nt.  hal menekuk kebawah, membungkuk, merunduk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('onītapattapāṇi','<p class="definition">m.  setelah memindahkan atau menggeser atau menyingkirkan tangannya dari patta.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('opakkamika','<p class="definition">a.  deraan sakit, serangan mendadak, kejang, akut; cedera.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('opāta','<p class="definition">m.  jatuh, terjun, kejatuhan, turun; lubang perangkap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('opuñjāpeti','<p class="definition">melumuri, mengolesi, menimbuni, menaburi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('opuñjeti','<p class="definition">menumpuk,mengonggok, menimbun, membuat suatu onggokan, menutupi dengan; kaus. puñjāpeti melumuri, mengolesi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('obhata','<p class="definition">(pp dari obharati )  setelah diambil pergi; dicopot.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('obhāsa','<p class="definition">m.  cahaya, sinar, kirana, binar, kecemerlangan, kegemerlapan, kilauan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('obhāsati','<p class="definition">1. bersinar, cemerlang; 2. mencerca, menistakan, melecehkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('omasati','<p class="definition">menyentuh, menyenggol (seseorang), menyinggung, mencela, menghina.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('omasanā','<p class="definition">f.  hal menyentuh, meraba turun; sentuhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('omuñcati','<p class="definition">melepaskan, mencopot; kaus. omuṇcāpeti .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oyācati','<p class="definition">mengutuk, menyumpahi, menyeranahi, melaknati, menyerapahi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ora','<p class="definition">a.  di bawah, rendah, yang buntut, di bagian sini, dunia ini, di dalam; orato  dari sisi ini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('orabbhika','<p class="definition">m.  penyembelih atau penjagal domba (biri-biri).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oramati','<p class="definition">berdiam atau berada di sisi ini, berdiri diam, berhenti tidak melanjutkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oropaṇa','<p class="definition">nt.  hal menurunkan, memindahkan, menghilangkan, memangkas (rambut), memelorotkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oropeti','<p class="definition">menurunkan, membawa turun, mencabut, menghilangkan, menyisihkan, membawa pergi, memotong (rambut).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('orohati','<p class="definition">menuruni; kaus. oropeti .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('olaṅghanā','<p class="definition">f.  hal menekuk ke bawah, membungkuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('olaṅgheti','<p class="definition">membuat loncat turun, membungkuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('olambaka','<p class="definition">a.  menggelantung; penyangga, tongkat jalan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('olokana','<p class="definition">nt.  melihat, memandang, menatap, menginspeksi, meninjau, menilik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ovadati','<p class="definition">menasihati, mewejang (memberi wejangan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ovaraka','<p class="definition">nt.  kamar (dalam).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ovāda','<p class="definition">m.  nasihat, wejangan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('osarati','<p class="definition">mengalir, pergi, berangkat, mendatangi, mengunjungi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('osāreti','<p class="definition">menyimpan, menaruh, menempatkan, menyisihkan; mengeluarkan, menguraikan, memaparkan, menjelaskan, melakukan rehabilitasi (setelah seseorang bhikkhu telah menjalani penebusan kesalahan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('osiñcati','<p class="definition">menuangkan, menuangi, memerciki, meletis, menyirami.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('osīdana','<p class="definition">nt.  tenggelam, terjun, turun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ossajjana','<p class="definition">nt.  pembebasan, pencampakan, pengeluaran, penanggalan, penyerahan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('oharati','<p class="definition">mengambil pergi, merenggut, melepaskan; kaus. ohāreti  menyerahkan, meninggalkan, menanggalkan, melepaskan, memangkas, memotong, mencukur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kakka','<p class="definition">nt.  keladak, ampas, endap-endap, sempelah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kakkasa','<p class="definition">a.  kasar, keras, kesat. [kasar ← Skt. karkaṡa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṅkhati','<p class="definition">1. meragukan, bingung atas, merasa sangsi; 2. mengharapkan, mengidamkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṅkhā','<p class="definition">f.  keraguan, ketidakpastian; pengharapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṅgu','<p class="definition">f.  (millet) sekoi (Panicum italicum).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kacci (kaccid)','<p class="definition">mungkinkah, saya kira, saya pikir mungkin; …., bukan? kacci te  sungguhkah engkau; kacci nu kho  mungkinkah, bisa jadi, jangan-jangan, barangkali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kacchapa','<p class="definition">m.  kura-kura, penyu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kañcuka','<p class="definition">m.  baju (yang ketat membalut badan), korset; lungsungan ular, selumur (kulit ular yang lepas dari tubuh sesudah bertukar kulit); baju baja; baju besi, lemena, baju lamina; ponco; rompi, baju kodok, baju basterop; kelongsong; selubung, selongsong. [kacut ← Skt. kañcuka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaññā','<p class="definition">f.  gadis, wanita muda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭāha','<p class="definition">m. nt.  pot, bejana, jambangan, wadah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭi','<p class="definition">m.  pinggul, pinggang; ~suttaka   nt. ikat pinggang, pelilit pinggul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭikā','<p class="definition">f.  persetujuan, kesepakatan; pembicaraan, percakapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭuka','<p class="definition">a. tajam, pedas, perih; pahit, hebat; nt. tajam, menusuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭula','<p class="definition">a.  (PED: mengandung rempah-rempah); bahan bubur; tekaṭula tiga bahan bubur yakni tila (wijen), taṇḍula (beras), dan kacang-kacangan (misalnya mugga kacang merah, māsa kacang hijau, kulattha … dan sebagainya). [katul ← Skt. kaṭula]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭṭha','<p class="definition">1. (pp dari kasati )  dibajak, digarap; 2. a.  buruk, tak berguna; 3. nt.  potongan kayu, balok, kayu bakar; dahan kayu;  ~hāraka pengumpul kayu bakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaḍḍhana','<p class="definition">nt.  hal menarik, menghela; menolak, menampik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭhina','<p class="definition">a.  keras, kuat, kokoh; nt. kerangka untuk membuat jubah (bagi para bhikkhu), kain yang dipersembahkan umat kepada bhikkhu untuk membuat jubah tahunan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇājaka','<p class="definition">nt.  bubur menir, bubur beras pecah, bubur hancuran beras, bubur yang tercampur dengan sekam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇiṭṭha','<p class="definition">a.  yang termuda, bungsu, yang terjunior.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṭaka','<p class="definition">nt.  duri, alat yang runcing; tulang; rintangan, gangguan, musuh, pengganggu, pencuri, perampok; ~āpassaya  pembaringan berduri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṭha','<p class="definition">m.  kerongkongan, tenggorokan; leher;  ~suttaka  nt. kalung manik-manik, hiasan kalung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇḍa  (khaṇḍa)','<p class="definition">m. nt. bagian di antara dua ruas dari suatu batang tanaman; batang, tangkai, gagang panah, panah; bagian (dari suatu buku); bagian kecil, sekelumit atau sepotong; sepenggal waktu, sesaat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇḍuvati (kandūvati)','<p class="definition">gatal, merasa gatal; menggaruk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṇa','<p class="definition">m.  sudut; telinga; ujung sendok; kaṇṇe  dengan suara berbisik;  ~chidda nt.  lubang telinga;  ~suttaka nt.  benang dari sudut ke sudut; garis kain, untaian hiasan telinga..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṇikā','<p class="definition">f.  lempengan/plat (penutup) atap; kaṇṇika-maṇḍala m. lempengan bulat (penutup atap).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇha','<p class="definition">a.  gelap, hitam, berbisa (ular);  f. kaṇhā  ular.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kata','<p class="definition">(pp dari karoti ) telah dilakukan, dibuat, diselesaikan, dipenuhi, dikerjakan; diputuskan. [karta/kerta (Jayakarta, Surakarta Yogyakarta, Kertajaya, Kertasura) ← Skt. kṛta]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katatta','<p class="definition">nt.  perbuatan, laku, tindakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katama','<p class="definition">a.  yang mana, apa saja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katara','<p class="definition">a.  yang manakah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katādhikāra','<p class="definition">a.  yang telah merumuskan sebuah tekad atau niat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kati','<p class="definition">berapa (banyak)?</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katikā','<p class="definition">f.  persetujuan, kontrak, perjanjian, kesepakatan; pembicaraan, perbincangan, percakapan; ~saṇṭhāna nt. formulir (surat) perjanjian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katipāhan','<p class="definition">adv.  (untuk) beberapa hari; katipāhena dalam beberapa hari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kattar','<p class="definition">m.  pembuat, pelaku, pencipta, pegawa raja, pekerja, utusan raja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kattaradaṇḍa','<p class="definition">m.  tongkat (jalan atau petapa).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kattha','<p class="definition">adv.  di mana, yang mana, ke mana; ~ci(d) di suatu tempat, di mana pun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katra','<p class="definition">☞  kattha</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kathaṃ','<p class="definition">adv.  bagaimana, mengapa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kathana','<p class="definition">nt.  percakapan, pembicaraan, jawaban, wejangan, pendarasan, pelantunan, penuturan, pemaparan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kathā','<p class="definition">f.  pembicaraan, perbincangan, percakapan, khotbah, wejangan, ceramah, pidato, pembahasan; kisah, cerita, kata, ucapan, kata-kata, nasihat; penjelasan, pemaparan, diskusi. [kata ← Skt. kathā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kathika','<p class="definition">a.  membicarakan, membabarkan, mengkhotbahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katheti','<p class="definition">berkata, mengatakan, memberi tahu, menceritakan, mengisahkan, berbicara dengan, bercakap-cakap dengan, melaporkan, membacakan, melantunkan, mendaras, membabarkan, memaparkan, menjelaskan, mengulas, menguraikan, mengkhotbahkan, berbicara tentang, mengacu pada, merujuk pada, menjawab atau memecahkan (persoalan); kaus. kathāpeti ; pass. kathīyati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kadalī','<p class="definition">f.  1. pisang raja (Musa sapientium); 2. panji (seperti daun pisang); 3. sejenis rusa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kadā','<p class="definition">kapan, bilamana; kadāci suatu waktu, kadang kala, suatu ketika, mungkin, bisa jadi; na kadāci tak pernah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaddama','<p class="definition">m.  lumpur, luluk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kanta','<p class="definition">1. (pp dari kāmeti ) a. nikmat, menyenangkan, yang disukai, yang dicintai; 2. (pp dari kantati ) terpotong; dipintal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kantati','<p class="definition">1. memotong; 2. memintal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kantāra','<p class="definition">a.  sulit dilalui; gurun, hutan belantara, rimba, jenggala.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kandara','<p class="definition">m.  1. gua atau ngalau yang umumnya terletak di lereng atau kaki gunung (digunakan sebagai tempat tinggal); 2. lembah kecil, celah-celah gunung, selokan, serokan, ceruk, lekuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kapiñjara (kapiñjala)','<p class="definition">m.  sejenis burung liar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappa','<p class="definition">a.  disiapkan, diatur; sesuai, layak, pantas; seperti, sebagai, layaknya;  m. peraturan, tata krama, laku; siklus dunia, kalpa, seperentang waktu, kurun waktu; pikiran;  kappaṃ  adv.  dalam jangka waktu lama atau panjang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappati','<p class="definition">sesuai, pantas, patut, diperkenankan; kappāpehi suruhlah orang menyiapkan; kappāpetu suruhlah dia menyuruh orang menyiapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappara','<p class="definition">m.  siku.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappāsa','<p class="definition">m.  kapas, pohon kapas (Gossypium). [kapas ← Skt. karpāsa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappāsika','<p class="definition">a.  dari kapas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappiya','<p class="definition">1. a.  sesuai peraturan, benar, cocok, layak, pantas, sesuai; nt. yang sesuai, pantas; 2. berkaitan dengan waktu, tunduk terhadap kappa , sementara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kappeti','<p class="definition">membuat pas, menciptakan, membangun, mendirikan, menyusun, mengatur, menyiapkan, membereskan, memasang, merapikan, membuat, mengadakan, membentuk opini, menerka, berpikir; menakdirkan, menentukan; kaus. kappāpeti ; pass. kappiyati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kabala (kabaḷa)','<p class="definition">m. nt.  satu suapan makanan (padat atau cair).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kabaliṅkāra (kabalīkāra)','<p class="definition">a.  “yang dibuat dalam suapan bulat”, yang dapat dimakan, makanan materi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kamaṇḍalu','<p class="definition">m. nt.  kendi (= kuṇḍikā ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kamati','<p class="definition">berjalan, melangkah, melewati, melintasi, mengarungi, memjelajahi, menapaki, mencapai, sampai, memasuki, berhasil, mempengaruhi, masuk ke dalam, menembusi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kampati','<p class="definition">mengguncang, gemetar, bergetar, menggegar, menggeletar, bergoyang, bergoyah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kambala','<p class="definition">m. nt.  bahan wol (bulu domba); laken (sekelat; kain wol; kain tenun dari bulu domba); selimut atau pakaian wol, selimut kambeli (kain selubung dari bulu domba); selimut atau kain selubung; bahan rajutan bulu; benang wol. [kambeli ← Skt. kambala]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kamma','<p class="definition">nt.  perbuatan, tindakan, yang dilakukan, usaha, kegiatan, pekerjaan, profesi; persidangan (rapat) Sanggha; proses persidangan Sanggha; niat (cetanā; AN 6:63; A 3:415; A 5:292); kammaṃ karoti  menyidangkan; ~pathā modus perbuatan; ~vācā f. resolusi; ~vācāriya m.  pimpinan rapat Sanggha. (Cetanāhaṃ bhikkhave kammaṃ vadāmi cetayitvā kammaṃ karoti kāyena vācāya manasā A. 3:415) [karma ← Skt. karma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kammanīya (kammaṇiya, kammañña)','a. ‘yang dapat bekerja’, terampil, lincah, gesit, cekatan; lentur.',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kammanta','<p class="definition">m.  perbuatan, tindakan, pekerjaan, pengerjaan, urusan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kara','<p class="definition">a.  membuat, menghasilkan, membentuk, melakukan, mengerjakan;  m.  tangan (“yang membuat”).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karaṇa','<p class="definition">a.  melakukan, membuat, menyebabkan, menimbulkan, menghasilkan;  nt.  pembuatan, penghasilan, pelaksanaan, hal melakukan; penyiapan; keadaan, kondisi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karaṇīya','<p class="definition">a.  yang seyogianya dilakukan, dikerjakan; nt. tugas, kewajiban, urusan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karamara','<p class="definition">“yang seharusnya mati di tangan (musuh)” namun dibiarkan hidup untuk dijadikan budak; budak (tawanan perang); ~ānītā  budak wanita (tawanan perang) yang kemudian dijadikan sebagai istri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karaḷa (karala)','<p class="definition">m.  utas, gumpal, jurai, jumbai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karin','<p class="definition">a.  ‘yang mempunyai tangan’; gajah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karuṇā','<p class="definition">f.  belas kasih, kasih sayang. (Sn.A. ahita-dukkhā-panaya-kāmatā : keinginan untuk mengenyahkan kemudaratan dan penderitaan pihak lain; atau Vism 318 paradukkhe sati sādhūnaṃ  hadayakampanaṃ  karoti)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karoti','<p class="definition">melakukan, bertindak, membuat, berbuat, membangun, mengerjakan, mendirikan, menyelenggarakan, melangsungkan, mengadakan, mewujudkan, menghasilkan, mengenakan; menulis; menyusun; mengenakan (busana, hukuman);  mengubah menjadi, menggunakan sebagai, menjadikan, menempatkan; menetapkan, memutuskan; kārāpesi ia (waktu itu) menyuruh orang membangun; kāressati ia akan menyuruh orang membuat, ia akan memerintah; kāriyati ia disuruh membuat; kārento  (=kārayato ) (tatkala ia) menyuruh orang membuat; kārita sudah menyuruh orang membuat, disuruh membuat; kārāpita sudah menyuruh orang membangun, disuruh membangun; kārāpetvā  setelah menyuruh orang membangun; pass. karīyati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karoto','<p class="definition">bentuk genitif atau datif dari “present participle” (karonto ) kata kerja karoti .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kalaha','<p class="definition">m.  pertengkaran, percekcokan, perseteruan, perselisihan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kalyāṇa','<p class="definition">a.  baik, bagus, bajik, menawan hati (mālā kalyāṇā) nt.  kebajikan, kebaikan, kesejahteraan; ~dhamma a.  penuh kebajikan; m. kebajikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kavandha','<p class="definition">m. nt.  badan (tanpa kepala), togok; katai (cebol) tak berkepala (karena kepalanya telah dijebloskan ke dalam badan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kavāṭa','<p class="definition">m. nt.  daun pintu; tiang pintu; jendela; kavāṭaṃ paṇāmeti  membuka pintu; kavāṭaṃ ākoṭeti  mengetuk pintu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kavi','<p class="definition">m.  penyair, sastrawan, penulis sajak; (Dalam A. 2:230 dan DA. 1:95 disebutkan ada empat jenis : cintā, suta, attha, paṭibhāṇa).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kasaṭa','<p class="definition">a.  buruk, najis, pahit, sengit (tajam), memuakkan, menjijikkan; hambar, tawar, cabar, boyak; m. cacat, kesalahan, noda; remah(-remah), repih-repih (sisa-sisa makanan dsb yang ketinggalan di tempat makan); serpihan; ampas, sampah; sesuatu yang pahit atau berasa tajam; jus pahit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kasā','<p class="definition">f.  cemeti, cambuk, pecut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kasmā','<p class="definition">mengapa, karena apa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kassaka','<p class="definition">m. petani, peladang, pecocok tanam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kahaṃ','<p class="definition">di mana, ke mana.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kahāpana','<p class="definition">m.  koin tembaga persegi, uang logam; uang; hadiah atau imbalan uang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāka','<p class="definition">m.  burung gagak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kākī','<p class="definition">f.  burung gagak betina.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāma','<p class="definition">(kāma+)  nafsu kotoran batin. [kama ← skt. kāma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāya','<p class="definition">m.  onggokan, kumpulan, badan, jasmani (mencakup pula tindak-tanduk darinya), batang tubuh, sosok, kelompok; ( = deha, sarīra, nikāya); ~daḷhībahula a.  gemar mengekarkan tubuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāyika','<p class="definition">a.  milik tubuh, jasmani, berhubungan dengan tubuh; termasuk dalam kelompok atau rombongan, pengikut, pengiring, kawanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāra','<p class="definition">m.  perbuatan, laku, tindakan, pelaksanaan, perilaku; pelaku; pembuatan, pembentukan, keadaan, penerapan, perlakuan; huruf, suku kata, fonem; pembuat, pekerja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāraka','<p class="definition">(kāraka+)   kalimat bentuk pasif.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāraṇa','<p class="definition">nt.  perbuatan, tindakan, pekerjaan, tugas, kewajiban (kāraṇaṃ kārāpeti ia menyuruh seseorang melakukan (suatu) pekerjaan; kiṃ kāraṇaṃ ajja kāressati  pekerjaan apa yang akan dia tugaskan hari ini?); alasan, sebab;  kāraṇā  (abl.) dengan, melalui; kāraṇaṭṭhā   demi, untuk, dengan tujuan, dengan pamrih; nikkāraṇā tanpa pamrih. [karena ← Skt. kāraṇa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāraṇika','<p class="definition">m.  pembuat, pembuat panah; pemanah, eksekutor.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kārī','<p class="definition">m. pelaku, pelaksana.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāruñña','<p class="definition">nt.  belas kasih, kasihan. [karunia ← Skt. kāruṇya]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāla','<p class="definition">m. waktu; kālaṃ karoti  meninggal, menemui ajal; kālena kālaṃ  dari waktu ke waktu, secara teratur, secara berkala (periodik), terus menerus; ~kaṇṇī  m. yang bertelinga hitam, orang sial. [kala ← Skt. kāla]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāḷa','<p class="definition">m.  gelap, hitam; ~kaṇṇī bertelinga hitam, sial, tak beruntung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāḷaka','<p class="definition">a.  hitam, bernoda;  nt. noda hitam; noda; butiran hitam dalam beras; apagatakāḷaka tanpa cacat atau noda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāsāya (kāsāva)','<p class="definition">a.  kuning; jubah berpewarna, jubah kekuning-kuningan para bhikkhu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāsika','<p class="definition">a.  yang berasal atau berhubungan dengan negeri Kāsī atau Benares.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāsu','<p class="definition">(kāsu+)  lubang api.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiṃ','<p class="definition">apa? kiṃ tava patthanāya  untuk apa pengharapan (doa) Anda? kiṃ idaṃ  inilah, inilah sebabnya, oleh sebab itu; kiṃ sūdha vittaṃ purisassa seṭṭhaṃ  kalau begitu apa harta manusia yang terbaik di dunia ini? kiṃ nu kho  mengapa? apakah? kissa hetu  apa sebabnya? kiṃ kahāsi  apa yang akan Anda lakukan? (Anda akan melakukan apa?) kiṃ āgamma kiṃ ārabbha  apa dasarnya apa alasannya? kiṃ nissita  apa tujuannya? kismiṃ vivādo  pertengkaran dalam hal apa? kimhi sikkhamāno  dilatih dalam hal apa? kiṃ idāni pi dinne te labheyyuṃ  apakah mereka akan menerima apa yang diberikan sekarang? kiṃ imasmiṃ attabhāve pitaraṃ pucchasi udāhu atīte ? apakah Anda menanyakan ayah Anda dalam kelahiran ini atau kelahiran lampau? kiñcāpi  walaupun; kiṃ nakkhattaṃ kīḷissasi udāhu bhatiṃ karissasi  apakah Anda mau berlibur atau bekerja? kimo nu  lantas mengapa? kiṃ pana  apalagi; kiṃ pana bhante addasa  tidakkah Bhante melihat? kiṃ pana tvaṃ maññasi  tidakkah Anda berpikir demikian? kin ti  bagaimana? kin ti te sutaṃ  tidakkah Anda dengar? kiñ cāpi te tattha yatā caranti  betapa pun mereka berupaya di sana.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiṅkiṇika','<p class="definition">m. nt.  lonceng kecil, giring-giring, kelinting(an).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kicca','<p class="definition">a.  yang harus dilakukan atau dikerjakan; nt. sesuatu yang dilakukan; tugas, kewajiban, urusan, kesibukan, perhatian, pelayanan, upacara, pelaksanaan, perbuatan, pekerjaan atau fungsi, peran, aktivitas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiñci','<p class="definition">apa pun, suatu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiñcikkha','<p class="definition">nt.  sepele, urusan kecil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiṇāti','<p class="definition">membeli.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kita','<p class="definition">(pp dari kṛ )  dihiasi, dilumuri, dikotori, bergelimang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kitava (kitavā)','<p class="definition">m.  penipu; a. dengan menipu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kittaka','<p class="definition">seberapa besar, seberapa banyak; sedikit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kitti','<p class="definition">f.  kemasyhuran, reputasi, nama baik, kegemilangan; ~sadda  m. reputasi, nama harum.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kipillikā','<p class="definition">f.  (kipillaka  nt.) semut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kibbisa','<p class="definition">nt.  kesalahan, kekhilafan, kekeliruan, kekurangan, cela, dosa; kejahatan, kekejaman, kekerasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kira (kila)','<p class="definition">adv.  sungguh, betul; sekarang, lantas, Anda tahu, konon, katanya, kiranya, sebagaimana diceritakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiriyā (kriyā)','<p class="definition">f.  tindakan, perbuatan, kinerja; ~vibhatti f.  konjugasi kata kerja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilañjā','<p class="definition">f.  tikar, kerai, bidai, sekat; berkas kayu, peti kayu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilanta','<p class="definition">(pp dari kilamati )  lelah, capai, lesu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilamati','<p class="definition">kekurangan; lelah, letih, capai, berada dalam kesulitan atau kesengsaraan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilamatha','<p class="definition">m.  kelelahan, keletihan, kepenatan, kepayahan, hal menyengsarakan, menyiksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilameti','<p class="definition">lelah, menyengsarakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilāsu','<p class="definition">m.  terkuras habis, lelah, lesu, pasif; akilāsu  aktif tanpa kenal lelah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilijjati','<p class="definition">menjadi panas, meradang, menjadi radang, bernanah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiliṭṭha','<p class="definition">(pp dari kilissati ) bernoda, tercemar, terkotori, kotor, tidak bersih, bobrok, bejat, penuh nafsu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilinna','<p class="definition">(pp dari kilijjati )  basah (oleh ludah, peluh dsb), bercucuran, menjadi radang, meradang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kilesa','<p class="definition">m.  kotoran (batin); noda (batin); nafsu; bejat moral.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kisa','<p class="definition">a.  kurus, ceking, kurus kering, kurus mering, kerempeng (sangat kurus sehingga tulang rusuk tampak menonjol).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīta','<p class="definition">(pp dari kiṇāti )  dibeli.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīdisa','<p class="definition">seperti apa, macam apa, yang bagaimanakah, yang manakah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīḷati','<p class="definition">bermain, menghibur diri, berhibur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīḷā','<p class="definition">f.  permainan, olahraga, hiburan; nakkhatta-kīḷaṃ kīḷati  merayakan suatu festival (saat bulan purnama sedang berada dalam suatu gugus bintang tertentu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīḷita','<p class="definition">(pp dari kīḷati ) bermain, dirayakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kīvant (kīva)','<p class="definition">berapa besar? berapa banyak? bagaimana? seberapa?</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkucca','<p class="definition">m.  perbuatan buruk (jahat), perilaku bobrok; sesal, penyesalan, perasaan bersalah, kecemasan, kekhawatiran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkuccaka','<p class="definition">a.  cermat, berhati-hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkuccāyati','<p class="definition">merasa menyesal, menyesali, cemas, kuatir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkuṭa','<p class="definition">m. ayam jantan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkuṭī','<p class="definition">f.  ayam betina.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kukkura','<p class="definition">m.  anjing, anjing pemburu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kucchi','<p class="definition">m.  rongga, perut atau rahim; bagian dalam, internal. [koci ← Skt. kukṣi]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kujjhati','<p class="definition">marah terhadap (dat.).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭaja','<p class="definition">m.  sejenis akar-akaran (Wrightia antidysenterica atau Nericum antidysentericum).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭikā','<p class="definition">f.  pondok atau gubuk kecil (biasanya terbuat dari tangkai pohon, rumput dan lempung); kuti, bilik kediaman bhikkhu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭī','<p class="definition">f.  kediaman berkamar tunggal, pondok, gubuk, kamar, bilik, ruang, pernaungan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭumba','<p class="definition">nt.  harta milik keluarga; kuṭumbaṃ saṇṭhapeti  membangun usaha, mendirikan perusahaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭṭha','<p class="definition">nt.  1. penyakit kusta; 2. sejenis tanaman wewangian atau rempah-rempah (Costus speciosus). [kusta ← Skt. kuṣṭhā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṭhāri','<p class="definition">f.  kapak, beliung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuḍḍa','<p class="definition">m.  dinding yang terbuat dari bilah-bilah berlapis tanah, bidai berlapis tanah, pagar jaro berlapis tanah; dinding kajang berlapis tanah; dinding, ada tiga macam: dari batu bata, batu dan kayu (Vin.).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṇa','<p class="definition">a.  bengkok, melengkung, pincang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṇapa','<p class="definition">m.  mayat, bangkai, jenazah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṇī','<p class="definition">nt.  yang bertangan bengkok.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuṇḍikā','<p class="definition">f.  kendi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuto','<p class="definition">dari mana; mengapa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuttaka','<p class="definition">nt.  karpet (permadani) wol;  a. “rekayasa”, dibuat-buat, pura-pura, palsu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuthati','<p class="definition">memasak, mendidihkan, merebus.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuthita','<p class="definition">(pp dari kuthati )  dididihkan, dimasak; dicerna; disiksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kudassu','<p class="definition">(kata seru)  pasti, tentu saja, sungguh, niscaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuddāla','<p class="definition">m.  sekop, cangkul, pacul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuddha','<p class="definition">a.  marah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kupita','<p class="definition">(pp dari kuppati )  diguncang, diganggu, terusik, marah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumāra','<p class="definition">m.  remaja, bocah, putra.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumāraka','<p class="definition">m.  bocah, remaja, pemuda; nt.  hal-hal yang berbau kekanak-kanakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumārī','<p class="definition">f.  gadis, perawan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumina','<p class="definition">nt.  jala ikan, jaring ikan; bubu, lukah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumbha','<p class="definition">m.  belanga, buyung, kumba, tempayan, pasu, jambangan, kendi, buli-buli, guli; bonggol (ponok) pada dahi gajah; ~kāra pembuat (barang-barang) tembikar; kundi (pengrajin barang yang terbuat dari tanah liat). [kumba ← Skt. kumbha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumbhaṇḍa','<p class="definition">m.  sejenis peri atau jin yang sekelompok dengan yakkha, rakkhasa (raksasa) dan asura; jin berbuah pelir besar (seperti kumba); sejenis labu (pumpkin, labu merah?).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumbhimukha','<p class="definition">nt.  bibir tong atau pasu, mulut bejana atau belanga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumbhī','<p class="definition">f.  tong besar, bejana atau jambangan besar, pasu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kummāsa','<p class="definition">m.  bubur barli; terdiri dari campuran tepung, rempah-rempah, dsb.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kula','<p class="definition">nt.  keluarga (umat), kaum; perumah tangga; ~putta  m. putra berbudi, putra keluarga terpandang. [keluarga ← Skt. kulavarga]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kulattha','<p class="definition">m.  sejenis vetch (ye wan dou); miju-miju (lentil).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kulala','<p class="definition">m.  burung hering (Gyps indicus nudiceps), burung elang, falkon (Falconidae).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kulāvaka','<p class="definition">nt.  sarang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kulūpaka','<p class="definition">a.  yang kerap mengunjungi keluarga (umat).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kusa','<p class="definition">m.  rumput kusa (PED: Poa cynosuroides; KBBI: Echionochloa colona); sehelai rumput yang dipakai sebagai tanda atau alat undian; ~cīra  rajutan rumput kusa. [kusa ← Skt. kuṡa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kusala','<p class="definition">a. pandai, tangkas, terampil, ahli, baik, benar, bajik; nt. kebaikan, kebajikan, perbuatan bajik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kuhiṃ','<p class="definition">adv.  di mana?</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūjati','<p class="definition">berkicau.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūjavāra','<p class="definition">m.  Hari Selasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūṭa','<p class="definition">1. a.  salah, keliru, palsu, menipu, membohongi;  nt. perangkap, jerat; kesalahan, kekeliruan, kebohongan, penipuan; 2. m. nt.  tonjolan, jendul, puncak; atap, puncak suatu rumah, bubungan; pucuk; onggokan; timbunan; titik tertinggi; 3. nt. palu; 4. a.  tanpa tanduk, tidak bertanduk, dogol, dongkol; ~āgāra nt. bangunan beratap runcing, bangunan bermenara, bangunan bertingkat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūpa','<p class="definition">m.  lubang, rongga; tiang (kapal).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūla','<p class="definition">nt. lereng, tepian, pematang atau tanggul (penahan air sungai).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kevala','<p class="definition">a.  hanya, sendirian; seluruh, semua (~paripuṇṇa  utuh menyeluruh, lengkap mencakup semuanya); namun; kevalaṃ  adv. hanya (na kevalañ ca viriyam eva sati pi me ārammaṇābhi-mukhībhāvena upaṭṭhitā ahosi)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kesa','<p class="definition">m.  rambut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koka','<p class="definition">m.  1. serigala, anjing hutan (Canis rutilans); 2. sejenis pohon (Phoenix sylvestris).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koccha','<p class="definition">nt.  bangku tak bersandaran, kursi rotan; sisir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koñca','<p class="definition">m.  bangau; raungan gajah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭi','<p class="definition">(koṭi+)   masa mendatang); bilangan besar, biasanya merujuk ke angka sepuluh juta, kadang-kadang seratus ribu (keti). [keti ← skt. koṭi]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭṭana','<p class="definition">m.  penggerusan, penghancuran, penumbukan; penebasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭṭeti','<p class="definition">memukul, menghantam, meremukkan, menghancurkan, menumbuk; meratakan (lantai); memotong, membunuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭṭha','<p class="definition">1.  m. nt.  ruang, kamar, bilik; perut; kamar kecil, kamar bhikkhu, kamar gudang; sarung (parang); 2. m. sejenis burung; 3. m. sejenis tanaman (Costus speciosus?).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭṭhaka','<p class="definition">(koṭṭhaka+)   kamar belakang), ruang, bilik; 2. m. paddy-bird.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('koṭṭhāsa','<p class="definition">m.  bagian, bilik, porsi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kotthalī (koṭṭhalī)','<p class="definition">karung (?), kantung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kopa','<p class="definition">m.  kemarahan, dendam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kopīna','<p class="definition">nt.  kemaluan, yang memalukan; cawat, kain pinggang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kovida','<p class="definition">m.  orang yang unggul memiliki kebijaksanaan (dalam hal Dhamma, magga, atau ariyasacca) [Mirip dengan medhāvin dan paṇḍita.]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kosa','<p class="definition">m.  ruang yang berisikan sesuatu; ruang penyimpanan, gudang; tempat penyimpanan harta benda, lumbung, sarung atau selongsong, kepompong, kulit pembalut penis; bagian dalam. [kosa ← Skt. koṡa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kosajja','<p class="definition">.  nt.  kelambanan, ketidakcekatan, kelesuan, kemalasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaṇa','<p class="definition">m.  ketika, saat, momen.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaṇati','<p class="definition">menggali, menumbangkan, menghancurkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaṇika','<p class="definition">a.  tak stabil, sementara, sejenak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaṇḍa','<p class="definition">a.  patah, pecah, hancur, compeng, compes, cuil, gempil, rempak, rompeng, rompes, serpih, sumbing, cacat;  m. nt. pas (jalan pintas sempit di daerah pegunungan); pecahan, potongan, cuil, serpih; camilan; ~ākhaṇḍika potong demi potong, pecahan belaka, hancur berkeping-keping.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khattiya','<p class="definition">m.  orang keturunan kaum Arya, orang yang berkasta kesatria (Status sosialnya tertinggi, selalu disebut paling awal. Semua raja atau kepala suku masuk dalam golongan ini.) [kesatria ← Skt. kṣatriya]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khanti (khantī)','<p class="definition">f.  kesabaran, ketabahan, perkenan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khandha','<p class="definition">m.  sosok tubuh, terutama bagian punggung; pundak, punggung; batang tubuh; batang pohon; bagian, bab; kumpulan, pumpunan, gugus(an); massa; semua bagian-bagian dari; faktor atau unsur pembentuk; agregat, kelompok (kehidupan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khama','<p class="definition">a.  sabar, siap memaafkan, menerima, menurut, mengeras, membeku, bertahan, tahan terhadap, cocok untuk, tabah (akkosantaṃ na paccakosati), toleran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khamati','<p class="definition">bersabar, menerima, tabah, memaafkan; sesuai, tampak baik, berkenan (yathā te khameyya tathā taṃ byākareyyāsi jawablah bila Anda berkenan); grd. khamanīya  menjadi reda, menjadi sembuh (dari suatu penyakit); kaus. khamāpeti menenangkan, minta maaf.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khamana','<p class="definition">nt.  hal bersabar atau tabah menahan penderitaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khamā','<p class="definition">f.  kesabaran, ketabahan, toleransi; bumi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaya','<p class="definition">m.  habis, lebur, enyah, lenyap, berakhir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khayita','<p class="definition">a.  membusuk, rusak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khara','<p class="definition">a.  kasar, keras, kaku, tajam, sakit; acak-acakan; m. keledai; gergaji.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khalika (khalikā f.)','<p class="definition">m.  papan dadu; khalikāya kīḷati  bermain dadu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khalu','<p class="definition">sungguh, betul, begitulah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khallāṭiya','<p class="definition">nt.  gundul, botak, plontos.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khādati','<p class="definition">mengunyah, menggigit, makan, menelan, menghancurkan, menyantap, menikmati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khādaniya','<p class="definition">m.  makanan pendamping/ sekunder/ sampingan/ pelengkap/  tambahan, makanan ringan, makanan keras.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khāyita','<p class="definition">= khādita  (pp dari khādati )</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khāra','<p class="definition">m.  soda, senyawa alkalin/kaustik; a.  basa, alkalin; ~udaka nt.  air kaustik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khiḍḍā','<p class="definition">m.  permainan, hiburan, kesenangan. [krida ← Skt. krīḍā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khitta','<p class="definition">(pp dari khipati )  dilemparkan, dibuang, dicampakkan;  ~citta nt.  pikiran yang kacau, bingung, gusar, kalut, kalap, hilang pikiran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khippa','<p class="definition">a.  cepat; sejenis jaring ikan atau keranjang belut;  khippaṃ adv. secara cepat, bergegas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khila','<p class="definition">m. nt.  tanah tandus, atau gersang; batin yang gersang; kila (pancang); ~jāta  geregetan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khīṇa','<p class="definition">(pp dari khīyati ) habis, tandas, berakhir, hancur, enyah, lenyap, terkikis habis, tanpa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khīyati','<p class="definition">(pass. dari khayati ) terkuras habis, habis, tandas, tanggal dari, menjadi sedih atau tertekan; mencela, mengkritik; menggerutu. (Tassa avaṇṇaṃ kathenti pakāsenti)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khīra','<p class="definition">nt.  susu, cairan seperti susu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khīla','<p class="definition">m.  tonggak, tiang, pancang, patokan, baut, pasak, kila. [kila ← Skt. kīla]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khuṃseti','<p class="definition">mencaci-maki, memarahi, mengutuk, menyumpahi, menyerapahi, menyeranah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khudda','<p class="definition">a.  kecil, rendah; sedikit, sepele; campuran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khuddaka','<p class="definition">=khudda</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khubhati (saṃkhubhati)','<p class="definition">mengguncang, mengaduk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khetta','<p class="definition">nt.  ladang, sawah, sebidang tanah, lokasi, domain, lahan, lapangan, padang, tapak (lahan tempat tumbuh tanaman hutan). [setra ← Skt. kṣetra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khema','<p class="definition">a.  penuh dengan kedamaian, aman, tenteram;  nt. tempat yang damai, aman, tenteram; pernaungan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kho','<p class="definition">(bentuk pendek dari khalu ) [avadhārana : kata penekan, penegas] sungguh, betul, lah, begitulah, sekarang, lantas, kah; sebaliknya, tetapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khobha','<p class="definition">m.  guncang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaccha','<p class="definition">m.  semak-semak, belukar, terna.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gacchati','<p class="definition">pergi, bergerak, berpindah, berjalan, menuju, tiba pada, menjadi tahu, mengalami, menyadari, akhirnya menjadi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇa','<p class="definition">m.  kelompok, kumpulan, gerombolan, himpunan, pumpunan; kelompok bhikkhu yang terdiri dari dua atau tiga orang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇaka','<p class="definition">m.  penghitung, penilai, penaksir, akuntan, pengawas, penjaga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇakī','<p class="definition">f.  pelacur; istri peramal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇanā','<p class="definition">f. perhitungan, aritmatika, angka; penghitungan, sensus, statistik; ilmu berhitung, ilmu aritmatika; ~patha  m. perhitungan waktu, jangka waktu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇikā','<p class="definition">f. 1. = gaṇakī  “milik orang banyak”; pelacur; 2. = gaṇanā</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇeti','<p class="definition">menghitung, membilang, menjumlahkan; memperhitungkan, mempertimbangkan, menganggap, memperhatikan; gaṇīyati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇhati (gaṇhāti)','<p class="definition">mengambil, menggenggam, memegang, mencengkeram, menangkap, mengulum, menguasai, menggunakan (mantra), mencaplok, menyebutkan satu per satu; gahetvā  dengan (tidaṇḍaṃ gahetvā caranto  satta bhikkhū gahetvā agamāsi).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gata','<p class="definition">(pp dari gacchati ) yang telah pergi, lewat, tiba pada, mencapai (tujuan); yang telah masuk dalam, yang berhubungan dengan; bernuansa, berperilaku (kāyagata sepak terjang jasmani), bergaya, menapaki, menempuh, bernasib, dalam keadaan (ye hi abhāvaṅgatā te puna kathaṃ uppajjissanti).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gati','<p class="definition">f.  tempuhan, hal pergi, arah, jalan, hal meninggal; alam kehidupan yang dituju setelah meninggal, alam kelahiran; nasib kelahiran (berikut), alam penjelajahan; alam penuh siksaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gatta','<p class="definition">nt.  badan; gattāni  (pl.) kaki dan tangan. [gatra ← Skt. gātra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gadrabha','<p class="definition">m.  keledai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gantha','<p class="definition">m.  ikatan, belenggu, kungkungan, belitan; komposisi, karya tulis, naskah, buku, kitab.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ganthati (gantheti)','<p class="definition">mengikat, membebat, menjalin, menyusun, menggubah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gandha','<p class="definition">m.  bau, aroma, parfum, wewangian. [ganda ← Skt. gandha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gandhabba','<p class="definition">m.  musisi, penyanyi; musisi surgawi di bawah kendali Dhataraṭṭha sebagai pelayan para dewa, masih terikat pada kesenangan indriawi; bakal makhluk hidup (yang harus hadir agar bisa terjadi kehamilan M. 38). [gandarwa /genderuwo ← Skt. gandharva]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gandhabbā','<p class="definition">f.  musik, nyanyian, lagu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gabbha','<p class="definition">m. rongga, ruang; rahim, peranakan (= mātukucchi ); kandungan, janin (=gabbhe nibbattanaka-satta), embryo, fetus; ~pātana  nt. pengguguran kandungan, aborsi, ramuan penggugur kandungan; ~seyyā  terbaring dalam rahim, dikandung. [garba ← Skt. garbha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gabbhinī','<p class="definition">f. a.  hamil, mengandung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gama','<p class="definition">a.  pergi, sanggup pergi, menuju, berjalan;  m.  jalan, kepergian ke, pulang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gamana','<p class="definition">a.  mengarah pada, menuju;  nt. hal pergi, berjalan, bergerak, menempuh, menuju, mengarah pada, menapaki jalan, pergi menuju; lintas(an).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gambhīra','<p class="definition">a.  dalam, tak terkirakan, sahih, sukar; nt. kedalaman, hal sangat mendalam, landasan nan dalam (landasan yang kokoh); ~sita  terletak amat dalam; sahih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gamma','<p class="definition">a.  yang bersifat seperti orang kampung, awam, kasar, tak tahu adat, kampungan, tidak beradab.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garahati','<p class="definition">mengecam, menyalahkan, mencerca, mencela.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garahā','<p class="definition">f.  kecaman, celaan, omelan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garahin','<p class="definition">a.  mencela, mengecam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garu','<p class="definition">a.  berat; penting, bermartabat, dihormati, dihargai, bernilai, mengikuti, menghormati, memuliakan, mengindahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garuka','<p class="definition">a.  agak berat; berat, serius, gawat, penting, mulia, patut dihormati, “berat pada”, condong (pada), gemar, menganggap penting, menghormati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garukata','<p class="definition">(pp dari garukaroti )  dihormati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garukaroti','<p class="definition">menghormati, menjunjung, memuliakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('garuḷa','<p class="definition">m.  nama sejenis burung gaib (raksasa) yang senantiasa bertarung dengan naga. Dalam legenda India, Wisnu mengendarai burung garuda. [garuda ← Skt. garuḍa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaḷagalāyati','<p class="definition">bergemuruh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaha','<p class="definition">m.  rumah, panti; ~kūṭa m. nt. balok nok (ridge-pole); ~ṭṭha m. perumah tangga; ~pati  m. pemilik rumah, kepala rumah tangga. [gerha ← Skt. gṛha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahaṇa','<p class="definition">a.  memegang, menggenggam, mengambil, menangkap, memperoleh, panen.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāthā','<p class="definition">f.  syair, bait, baris, larik; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāma','<p class="definition">m.  permukiman, dusun kecil; suatu wilayah atau kampung yang memiliki perbatasan dan berbeda dari lingkungan sekitarnya; kampung, desa, dusun, udik; ~kūṭa  nt. penipu, penjilat, peleceh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāmaka','<p class="definition">m.  perkampungan, dusun, desa; penduduk desa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāmanta','<p class="definition">m.  seputar kampung, pinggiran dusun, perkampungan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāmika','<p class="definition">m.  penduduk desa; penguasa desa, pengawas wilayah;  a.  pergi berkelana, bepergian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāmin','<p class="definition">( f. gāmiṇī ) a. berjalan, menapaki, menuju.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāyati','<p class="definition">bernyanyi, mengumandangkan, berdendang, melantunkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gārayha','<p class="definition">(grd. garahati )  a.  rendah, hina, terkutuk, dicela.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gārava','<p class="definition">m. nt.  penghormatan, penghargaan, respek, takzim.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāvī','<p class="definition">f.  sapi, lembu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāha','<p class="definition">m. hal menangkap, mencengkeram, menggenggam, memegang, mengambil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāhin','<p class="definition">a.  memegang, mengambil, berupaya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gijjha','<p class="definition">m.  burung hering, burung nasar (Gyps indicus nudiceps), burung pemakan bangkai;  a.  serakah, haus akan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gimha','<p class="definition">m.  panas, musim panas, musim kemarau.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gilati','<p class="definition">menelan; kaus. gilāpeti  membuat menelan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gilāna','<p class="definition">a.  sakit; ~paccayabhesajja  obat penyembuh sakit, obat-obatan. [gila/gulana ← Skt. glāna]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gilānālaya','<p class="definition">m. nt.  pura-pura sakit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('giri','<p class="definition">m.  gunung, giri. [giri ← Skt. giri]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gihin','<p class="definition">a.  berumah tangga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gīvā','<p class="definition">f.  leher.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guṇa','<p class="definition">m.  1. benang, tali, senar; unsur, bahan, komponen, faktor, bagian; kualitas, sifat, kualitas bagus, keuntungan, kebajikan; 2. bola, gumpalan, rangkaian, untaian; 3. ulat kayu. [guna ← Skt. guṇa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gutti','<p class="definition">f.  perlindungan, pertahanan, penjagaan, pengawalan; kesiagaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gumba','<p class="definition">m. pasukan, gerombolan, gundukan, pumpunan, kawanan; belukar, semak-semak, rimba, sarang, jerumun. [gulma ← Skt. gulma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guru','<p class="definition">a.  yang terhormat, yang mulia, guru; ~vāra m.  Hari Kamis. [guru ← Skt. guru]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guḷa','<p class="definition">m.  1. bola; 2. gula; 3. gerombol, kumpulan. [gula/guli ← Skt. guḷa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guḷā','<p class="definition">f.  bengkak, bincul, benjolan, bintil, bintul, bisul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guhā','<p class="definition">f.  tempat persembunyian, gua; (menurut Buddhaghosa)  pernaungan yang terbuat dari batu bata, batu (karang), kayu atau tanah; bungker. [gua ← Skt. guhā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gūtha','<p class="definition">m.  kotoran, tahi, berak, tinja, feses; ~kūpa  m. kakus, jamban, tandas, peturasan, tempat buang air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('geyya','<p class="definition">nt.  ragam kitab suci yang terdiri dari campuran prosa dan syair; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('geruka','<p class="definition">nt. f.  oker kuning, kapur merah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('geha','<p class="definition">nt.  kediaman, pondok, rumah, panti, rumah tangga. [gerha ← Skt. gṛha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('go','<p class="definition">m. f.  lembu, sapi; (pl.) ternak; ~maya m. nt  kotoran sapi; ~vikattana  nt. pisau penjagal sapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gocara','<p class="definition">m.  ‘padang rumput penggembalaan”, tanah penggembalaan sapi; wilayah penjelajahan, lingkup kegiatan; hal mencari makanan; makanan ternak; makanan;  a.  bergantung pada, hidup bersandar pada; bersekutu dengan;  m. nt.  medan, ruang lingkup, objek (indra),</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('goṇa','<p class="definition">m.  banteng, lembu atau sapi jantan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gotama','<p class="definition">marga atau nama keluarga (gotta) Sang Buddha sebelum meninggalkan kehidupan berumah tangga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gotta','<p class="definition">nt.  wangsa, silsilah keturunan, marga, suku, kaum.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('godhā','<p class="definition">f. 1. iguana, sejenis kadal berbadan besar; 2. senar (dawai) kecapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('godhūma','<p class="definition">m.  gandum (Triticum aestivum). [gandum ← Skt. godhūma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gopānasī','<p class="definition">f.  kasau, yang melengkung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gopālaka','<p class="definition">m.  penggembala sapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gopālikā','<p class="definition">f.  wanita penggembal sapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gopita','<p class="definition">(pp dari gopeti )  dilindungi, dijaga, diawasi, dirawat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gopeti','<p class="definition">mengawasi, melindungi, menjaga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gomaya','<p class="definition">(go+maya)  m. nt  kotoran sapi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('golikā','<p class="definition">f. sejenis kadal atau cecak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('goḷaka','<p class="definition">m.  bola, onde-onde.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ghaṃsati','<p class="definition">1. menggosok, meremukkan, melumatkan, menghancurkan, menggerus, menggilas, melindas; 2. merasa senang atau puas, gembira.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ghaṃsana','<p class="definition">m.  pengusapan, pengelapan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ghaṭa','<p class="definition">1. m. bejana berongga, mangkuk, jambangan, kendi, buyung, bocong; 2. m. f. kumpulan, onggokan, gumpalan, massa, pampat, padatan, tumpat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ghaṭikā','<p class="definition">f.  1. mangkuk kecil untuk meminta-minta; 2. tongkat kecil, ranting; permainan gatrik (tip-cat” sticks, memukul sebuah tongkat kecil dengan sebuah tongkat yang lebih panjang); longgokan ranting; (tangkai) gerendel.@51
ghaṭṭeti@memukul, menghantam, mengetok, membenturkan, menyenggol, menyentuh, menggesek, menggosok, mengurut, menggarap; menyerang, memperolok-olokkan, menolak, menampik.@51
ghana@1. a. padat (berisi), tebal; m. janin pada tahap terakhir (keempat) sebelum lahir (dari tahap-tahapan berikut kalala, abbuda, pesī, ghana); 2. tongkat, gada, palu.@51
ghara@nt.  rumah, bilik; ~āvāsa  kehidupan berumah tangga; ~bandhana  nt. ikatan rumah tangga; hal menikahkan.@51
ghāta@m.  pembunuhan, penghancuran, perampokan, algojo, pembunuh.@51
ghātaka@a.  yang bersifat membunuh, mematikan;  m.  pembunuh, algojo, penghancur;  nt.  pembantaian, perampokan, penyamunan, pembegalan.@51
ghāteti@membunuh, membantai, menyembelih, menjagal, memotong.@51
ghāyati@1. menghidu, membaui, mencium; 2.menjadi terkuras, kehausan.@51
ghora@a.  mengerikan, menakutkan, dahsyat.@51
ca@apa saja; siapa saja; dan, kemudian, maka, lantas (c’eva  juga, pun); tetapi (yadā ca  namun bila); jika (na ca  jika tidak; ahaṃ ca kho …. pavāremi na ca me bhagavā kiñci garahati jika Sang Bhagawan tidak menyalahkan saya.)@51
cakka@nt.  roda, jentera, cakram, cakra, diskus; bagian, kumpulan, lingkaran, putaran, daur, kalangan, wilayah, kelompok, daerah; kendaraan, sarana, cara, atribut, kualitas; keadaan, kondisi; wibawa, wewenang; ~bheda  m. menghancurkan kewibawaan atau kerukunan atau keharmonisan (keselarasan), menabur perselisihan atau perpecahan; pembangkangan; ~vāḷa  m. nt.  cakrawala, lingkaran (dunia), lengkungan, serangkaian penyangga yang melingkari dunia; pl. sistem dunia. [cakra/cakram Ü Skt. cakra]@51
cakkavattin@a.  kaisar agung. [cakrawati ← Skt. cakravartin]@51
cakkhu@nt.  mata; ~bhūta nt. bermata celik.@51
cakkhumant@a.  yang memiliki mata, yang celik (kelih), yang mampu melihat, berpenglihatan jernih, yang memiliki intuisi atau kebijaksanaan jernih; yang berpengetahuan.@51
caṅkamati@berjalan mondar-mandir, berjalan bolak-balik.@51
caccara@nt.  simpang jalan.@51
cajati@melepaskan, meninggalkan, menyerahkan, mengorbankan.@51
caṇḍa@a.  ganas, galak, garang, bengis, kejam, pemarah, emosional, bernafsu, penuh gairah.@51
catu(r@) a.  empat.@51
caturassa@a.  persegi, bersegi empat.@51
catuttha@a.  yang keempat; catutthaṃ adv.  untuk keempat kalinya.@51
catura@a.  pandai, cerdik, terampil.@51
catta@(pp dari cajati )  telah diserahkan, dikorbankan, dilepaskan, direlakan.@51
cattāri@nt.  empat.@51
cattārīsa@(cattāḷīsa ) empat puluh.@51
canda@m.  candra, bulan, rembulan;  ~vāra m.  Hari Senin. [candra Ü Skt. candra]@51
caraṇa@nt. pengembaraan, perilaku, tindakan, kelakuan, tindak-tanduk, langkah, kaki.@51
carati@berjalan-jalan, mengembara, menjelajahi, bergerak, berpindah, bepergian, pergi, pergi mencari makanan; bertindak, berperilaku, melakukan, melakoni, mempraktikkan, menjalankan, mengamalkan.@51
carita@(pp dari cāreti )  1. a. yang berlangsung, menyerupai, bertingkah seperti; 2. nt. tindakan, perilaku, kehidupan.@51
cariya@nt.  (cariyā  f.) tindakan, perbuatan, kehidupan, keadaan, kelakuan, perilaku.@51
calati@menggerakkan, mengaduk, menggetarkan, bingung, ragu-ragu, guncang.@51
cavati@berpindah, beranjak, meninggal.@51
cāga@m. hal meninggalkan˴ menanggalkan˴ melepas˴ merelakan˴ mengikhlaskan; kemurahan hati.@51
cāraka@(cārika ) a.  berkelana, hidup, pergi, berperilaku; cārikā  f. perjalanan, pengembaraan, penjelajahan.@51
cāritta@nt.  praktik, pelaksanaan, pengamalan, cara bertindak, tindak-tanduk; cārittaṃ āpajjati bercampur dengan, datang kepada, bersenggama dengan.@51
cārin@a.  berjalan, hidup, mengalami, bertindak, mengamalkan, mempraktikkan, melaksanakan.@51
cāleti@(kaus. dari calati ) menggerak-gerakkan, menggoyang-goyangkan, mengguncangkan, menghambur-hamburkan, mengayak.@51
cāvanā@f.  pemindahan, penggeseran, penyingkiran, kelenyapan.@51
cāveti@menjatuhkan, menggerakkan, mengusir, mengganggu, mengalihkan, memindahkan, menyingkirkan, menggeser.@51
cikkhala@a.  becek;  nt.  lumpur, luluk, rawa, paya, tanah becek.@51
cikkhalla@nt.  lumpur; rawa, paya; a. becek.@51
cikkhassati@mau menetes, mengalir keluar.@51
ciṅgulaka (ciṅgulika)@m. nt.  1. sejenis tanaman; 2. kincir (kitiran) angin mainan.@51
ciṇṇa@(pp dari carati ) telah dijalani, ditapaki, dilakukan, dilaksanakan, dipraktikkan, menjadi kebiasaan.@51
citta@nt. batin, pikiran, kesadaran, citta (faktor utama batin yang menyadari atau mengetahui suatu objek); niat (Ahosi te pubbe cittaṃ ‘ārāmaṃ gamissāmī’ti? Bukankah sebelumnya Anda ada niat pergi ke taman dulu?); [menurut Buddhaghosa citta mempunyai makna (1) Yang mengetahui, menyadari objek (Cintetīti cittaṃ,  ārammaṇaṃ vijānātīti attho)   sebagai aktor/agen; (2) Karena/melalui inilah dhamma-dhamma yang menyertainya mengetahui (Cintenti vā etena karaṇabhūtena sampayuttadhammāti cittaṃ)   sebagai perantara; (3) Atau sekadar ‘hal mengetahui’ saja (Atha vā cintanamattaṃ cittaṃ )   sebagai proses;] ~rūpaṃ  sebagaimana yang dipikirkan, sejauh yang diharapkan.@51
citta (citra)@a.  aneka ragam, bermacam-macam, bergambar, bercitra, elok, enak, manis, berbumbu; nt. lukisan, citra; m. nama bulan. [citra ← Skt. citra]@51
cinteti (ceteti)@menyadari, mengetahui; berpikir, merenung, berpendapat; memikirkan, membayangkan, merencanakan, merumuskan, mempunyai niat; (ceteti ) memikirkan, menghendaki, berniat untuk, berupaya, menginginkan.@51
cira@a.  lama, panjang; ~ṭṭhitika bertahan lama.@51
cīra@nt.  kulit kayu, serat, busana kulit kayu, rajutan; bilah.@51
cīvara@nt.  jubah, kain.@51
cuṇṇa@a.  yang hancur lebur; nt. bubuk, serbuk, debu, pasir, bedak, pupur.@51
cuta@(pp dari cavati )  berpindah, enyah, lenyap, meninggal.@51
cuti@f.  hal berpindah, meninggal; kelenyapan, kepudaran. [cuti ← Skt. cyuti]@51
cuddasa@a.  empat belas.@51
cumbaṭa@nt.  lilitan kain bantalan beban di kepala; gelung bantalan; karangan bunga, rangkaian bunga (berbentuk lingkaran).@51
ce@jika, tetapi.@51
cecca@= sañcicca@51
cetaṃ@1. ca etaṃ dan ini; 2. ce taṃ jika itu.@51
cetanā@f.  niat, pikiran, tujuan, kehendak, hasrat.@51
cetayati@ = cinteti@51
cetasā@bentuk instr. dari ceto.@51
cetasika@a.  mental, batiniah (cetasika-dukkha,  cetasika-sukha);  nt. yang tercakup dalam batin (ceto), yang dimiliki batin, faktor mental, corak batin, pengiring batin (citta).@51
cetaso@bentuk gen. dari ceto.@51
cetiya@nt.  tempat pemujaan; monumen berkubah sebagai tempat pemujaan (keramat); pagoda.@51
ceto@nt.  = citta@51
cetopaṇidhi@f.  = paṇidhi .@51
codeti@mendesak, mendorong, menghasut; memarahi, mengomeli, mencaci, mengumpat, mempertanyakan, menagih.@51
cora@m.  pencuri, maling, alap-alap, perampok, penyamun, garong, pencoleng, penjarah; ~ghāta  m. algojo pencuri. [curi ← Skt. √cur]@51
corī@f. pencuri atau maling wanita.@51
cola (coḷa)@m.  sepotong kain, perca, carik kain.@51
chakala@m.  kambing jantan; chakalī  (f.)@51
chaṭṭha@keenam, ke-6, VI.@51
chaḍḍeti@meludahkan, memuntahkan, mencampakkan.@51
chaṇa@m.  festival, perayaan, pesta, kenduri.@51
chatta@1. nt. sejenis payung tetapi gagangannya ada di tepi bukan di tengah; kanopi; 2. m. siswa (pemegang payung gurunya).@51
chanda@m.  hasrat, dororngan hati, niat, dambaan, kehendak, keinginan (untuk berbuat), impuls, antusiasme, minat, kegairahan, nafsu, kesukaan; persetujuan, perkenan; ikhlas, suka hati.@51
channa@a.  tertutup, diberi atap, disembunyikan, tersembunyi, rahasia; cocok, patut, pantas, sesuai.@51
chamā@f.  tanah, bumi; adv. di atas tanah, ke tanah.@51
chambhitatta@ (nt.) keadaan kaku, lumpuh, takut, gentar tak berdaya.@51
chavi@f.  kulit (tipis), pemalut.@51
chādeti@1. menutupi, menyembunyikan; (suara) memenuhi, merasuk; 2. tampak bagus, menyenangkan; senang dengan, suka akan.@51
chāpaka@m. anak kecil dari hewan, hewan belia.@51
chāyā@f.  bayangan; ~rūpa  nt. potret, foto. [cahaya ← Skt. chāyā]@51
chārikā@f.  abu.@51
chidda@a.  bercelah, berlubang-lubang; bercacat; nt.  celah, lubang; cacat.@51
chindati@memotong, mengudung (memotong ujungnya; mengerat tangan, jari dsb); menorehkan, memancung, memenggal, menghancurkan, menyingkirkan.@51
chinna@(pp dari chindati )  terpotong, terpancung, terpenggal, dihancurkan; ceruk.@51
chinnikā@f.  penipu, pendusta, pembohong, yang palsu, yang memperdayakan, yang curang, lihai, licik, culas; liar.@51
chupati@menyentuh, menyinggung, menyenggol.@51
chupana@nt.  sentuhan, singgungan, senggolan.@51
chupita@(pp dari chupati ) disentuh.@51
cheka@a.  pandai, terampil, mahir; asli.@51
chejjabhejja@a. penyiksaan dan pemuntungan.@51
cheppā@f.  ekor.@51
jaṅgala@nt.  tempat yang kasar, berpasir dan tidak berair, tanah tandus; hutan, rimba, jenggala. [jenggala ← Skt. jaṅgala]@51
jaṅghā@f.  tungkai bawah (antara lutut dan tumit); jaṅghapesanika m.  pesuruh (pengantar pesan) (yang berjalan kaki).@51
jacca@a.  kelahiran, darah keturunan, keturunan, strata sosial.@51
jaṭā@f. kekusutan, jalinan, anyaman, kepang, kelabangan; rambut beranyam, kusutan ranting pohon; kusutan nafsu.@51
jana@(jana+)   pelbagai makhluk hidup; keci janā  sejumlah orang.@51
janatā@f.  kumpulan orang, orang-orang, jemaah, orang banyak; publik, rakyat.@51
janati@kaus. janeti  (janayati ) atau jāneti menghasilkan, melahirkan, menyebabkan, menerbitkan, menimbulkan.@51
jananī@f.  ibu.@51
janapada@m.  negeri hunian, negara, benua, propinsi, daerah (pemerintahan), distrik, wilayah, udik; ~cārikā  penjelajahan negara.@51
janita@(pp dari janati )  dilahirkan, dihasilkan.@51
janettī@f.  ibu kandung.@51
jantāghara@m.  ruang atau kamar sauna, ruang tamu atau duduk.@51
jambu@f.  jambu (Eugenia jambolana); jambu mawar (KBBI: Syzygium jambos). [jambu ← Skt. jambu]@51
jayati@menaklukkan, mengalahkan, mengungguli; menjarah, merampas; pass. jīyati .@51
jarati@meluluh, menjadi tua.@51
jarā@f.  pelapukan, usia tua.@51
jalati@membakar, menyala, bercahaya; kaus. jaleti  (jāleti ) menyalakan.@51
jahati (jahāti)@meninggalkan, melepaskan, menanggalkan.@51
jāgara@a.  terjaga, sadar, awas, waspada.@51
jāgarati@terjaga, sadar, awas.@51
jāta@ (pp dari janati/janeti )  lahir, tumbuh, muncul, dihasilkan; yang dilahirkan; “asli”, alamiah, benar, bagus; menjadi, terjadi; setelah menjadi, seperti, sejenis; n. kumpulan, himpunan; ~rūpa m. logam murni, emas (yang belum diolah; yang sudah diolah ▶ suvaṇṇa ).@51
jātaka@nt.  kisah kelahiran lampau Sang Buddha; judul buku ke-13 dari Khuddaka-nikāya; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana )@51
jāti@f.  kelahiran, kelahiran kembali; suku bangsa; negara, silsilah keturunan, darah keturunan; status sosial, kasta; jenis, macam.@51
jātika@a.  seperti, dari, memiliki, bersifat, bertabiat, berwatak, yang; keturunan dari, berstatus sosial, tergolong kelas.@51
jāna@a.  mengetahui, dapat diketahui, dapat dipahami; secara sengaja.@51
jānāti@memahami, mengetahui, mencarikan, menemukan, menyadari; pass. jānīyati , ñāyati .@51
jānu@nt.  lutut, dengkul; ~maṇḍala tempurung lutut.@51
jāyati (jāyate) @ dilahirkan, dihasilkan, muncul, dilahirkan kembali.@51
jāyā@f.  istri.@51
jāra@m.  kekasih gelap, gundik, selir, pezina.@51
jāla@1. nt. jala, jaring-jaring, siratan, rajutan, jerat, perangkap, tipuan, maya (khayalan); 2. m. nyala (api), sinar, cahaya.@51
jālā@f.  nyala api.@51
jālin@a. berjala, terjalin, menjerat, memperdayakan; nelayan.@51
jigiṃsati@(desid. dari jayati )  menginginkan, menghendaki, mendambakan, ingin mendapatkan, berhasrat akan.@51
jiṇṇa@(pp dari jarati )  berusia renta, tua-renta; tua rapuh; dicerna. (jajjarībhūte jarāya khaddiccādi-bhāvaṃ āpādite; cirakālappavattakulanvaye)@51
jina@m.  pemenang, yang telah menaklukkan, Buddha.@51
jināti@☞  jayati@51
jīva@a.  jiwa, nyawa, roh; makhluk berjiwa; nt. burung jīvaka. [jiwa ← Skt. jīva]@51
jīvati@hidup, hidup dengan.@51
jīvikā@f. hidup, penghidupan.@51
jīvita@nt.  hidup, masa hidup, kehidupan, kelangsungan hidup, mata pencaharian, penghidupan, nyawa; jīvitaṃ kappeti menjalani hidup; ~indriya nt. daya hidup, daya pengendali kelangsungan hidup.@51
jivhā@f. lidah; pengecapan.@51
jūta@nt.  permainan, permainan dam, permainan dadu, perjudian.@51
je@(kata seru)  oh, ah, he, wah; panggilan terhadap budak wanita di Wesali kuno.@51
jigucchati@menghindari, merasa muak terhadap, takut terhadap, ogah terhadap, sebal terhadap.@51
jeguccha (jegucchiya)@a.  memuakkan, menyebalkan, menjijikkan.@51
jegucchin@m.  orang yang merasa muak, ogahan, sebal.@51
jeṭṭha@a.  yang tertua, sulung, yang tersenior, yang tertinggi, yang lebih baik, yang terbaik, yang pertama, yang jempolan.@51
jeti@☞  jayati@51
jotaka@.  a.  menjelaskan, menerangkan, mengungkapkan.@51
joti@m. nt.  cahaya, semarak, sinar, seri; bintang; api; sajotibhūta menyala, terbakar.@51
jhāna@nt.  meditasi; keadaan batin yang terserap (absorpsi); tingkatan atau taraf pencapaian meditasi; jhana.@51
jhāpeti@(kaus. dari jhāyati )  menyulut, membakar, memasak; menghancurkan, meruntuhkan, membunuh.@51
jhāyati@1. bermeditasi, berkontemplasi, merenungkan; memburu, mengincar, mencermati; 2. terbakar, aus, mengering; menyulut.@51
jhāyin@a.  merenung, bermenung, tepekur, bermeditasi.@51
ñatti@f.  pengumuman, pemakluman, pernyataan, mosi, usul, resolusi; ~catuttha   satu mosi + tiga resolusi.@51
ñāṇa@nt.  pemahaman, pengertian, pengetahuan, kebijaksanaan, pengetahuan hasil penilikan batin.@51
ñātaka@m.  sanak keluarga, famili, kerabat.@51
ñāti@m.  sanak famili, kerabat, keluarga; ~vyasana  nt.  musibah kehilangan sanak keluarga.@51
ñāpeti@(kaus. dari jānāti )  mempermaklumkan, menjelaskan, mengumumkan.@51
ñāya@m.  cara, metode, kebenaran, sistem, logika; cara atau perilaku yang benar/ sesuai.@51
ṭhapita@(pp dari ṭhapeti  atau ṭhapāpeti ) telah diletakkan, ditegakkan, dibangun, didirikan, ditaruh, ditempatkan.@51
ṭhapeti@(kaus. dari tiṭṭhati )  meletakkan, mendirikan, memasang, menyusun, membangun, menegakkan, menempatkan, menentukan, menyimpan, mengabaikan, mengesampingkan; ṭhapetvā  di samping itu, kecuali.@51
ṭhāna@nt.  tempat (yang memungkinkan), daerah, wilayah; kondisi, keadaan; sifat, kualitas, tingkatan; lokasi; objek, hal, pokok, dasar, cara, alasan, dalih, penyebab; ṭhānaṃ etaṃ vijjati  bisa saja terjadi, mungkin saja. [tanah ← Skt. sthāna]@51
ṭhānaso@adv.  tanpa bergerak, tanpa jeda atau penyebab (perubahan); segera; langsung; sekarang juga, secara spontan, saat itu juga, seketika itu juga.@51
ṭhāniya@a.  berdiri, memiliki tempat berpijak, disebabkan oleh, (kondisi) yang menimbulkan, mempunyai dasar pijakan.@51
ṭhita@a.  berdiri, tegak tidak bergerak, kokoh, mantap, yang berdiam dalam.@51
ṭhiti@f.  keadaan kestabilan, kemantapan, kelangsungan, kelanggengan, kelestarian, hal bertahan; posisi, kedudukan; persinggahan, pangkalan, stasiun.@51
ḍasati@menggigit (oleh lalat, ular, kalajengking, dsb), menyengat.@51
ta@ia, itu, ini, di sana; oleh sebab itu, karenanya, lantas.@51
takka@1. m. kesangsian, pandangan yang penuh kesangsian (=diṭṭhi ), pertimbangan yang terlampau teliti, cara berpikir yang tidak masuk akal, pemikiran; 2. nt. susu mentega (cairan susu yang tinggal setelah membuat mentega) dengan ¼ bagian air (dibuat dengan mengaduk-aduk dadih), termasuk salah satu dari lima produk sapi (pañca-gorasā : khīra, dadhi, takka, navanīta, sappi).@51
taṃkhaṇika@a.  sementara, sesaat, pada saat itu.@51
taca@(taco nt.)  m.  kulit (tebal), jangat.@51
taccha@1. m. tukang kayu; 2. a. benar, betul, nyata, sungguh; nt. kebenaran.@51
tacchaka@m.  1. tukang kayu; pembangun; 2. sejenis Naga; f.  tacchikā  wanita berstatus sosial rendah (= veṇī , perajin bambu).@51
tajja@a.  dari sana, bersuaian, sehubungan dengan ini/itu, berdasarkan ini/itu.@51
taṇḍula@m.  beras.@51
taṇhā@f.  haus, dahaga; idam, damba, kehausan akan, nafsu dambaan. [tresna ← Skt. tṛṣṇā]@51
tatiya@a. ketiga; tatiyaṃ  untuk ketiga kalinya.@51
tato@dari situ, dari sana, lantas, kemudian, selanjutnya.@51
tatta@1. (pp dari tapati ) panas, dipanasi, memijar, membara; 2. nt. kebenaran.@51
tattha@adv.  di sana, di tempat itu; dalam hal itu, sehubungan dengan itu, untuk itu; tattha  tattha di sana sini.@51
tatra@di sana; dalam ini; di sana-sini, dalam ini dan itu, dalam kondisi apa pun, segala macam, segenap, total (tatramajjhattatā keseimbangan total); tatra tatra  di sana-sini, dalam ini dan itu; tatra sudaṃ di sana).@51
tatha@a.  benar, betul, nyata.@51
tathā@adv. demikian, seperti ini, begitu, begini; tathūpamaṃ  seperti itu; tath’eva demikian pula, hanya begitu, masih tetap sama, tidak berbeda, di tempat itu juga; maka; tathā yathā  sedemikian rupa …..sehingga.@51
tathāgata@salah satu sebutan untuk Sang Buddha.@51
tadā@adv.  ketika itu, saat itu, pada waktu itu (= tasmiṃ samaye ); tadāhaṃ waktu itu saya.@51
taduttari@lebih dari itu.@51
tanu@a.  kurus, ceking, kecil, langsing, ramping, lampai, lembut; badan, tubuh.@51
tandī@f. kelesuan, kemalasan, kelambanan.@51
tapa (tapo)@m. nt.  siksaan, hukuman, penebusan dosa, pengekangan diri, penghukuman diri, tapa-brata; kebaktian, ketakwaan, pengendalian diri, praktik moralitas. [tapa ← Skt. tapa]@51
tapati@bercahaya.@51
tapanīya@a.  membakar, menghanguskan, menyiksa, melakukan penyiksaan diri, mengekang diri, menimbulkan kemuakan, menekan hawa nafsu; mengkilap bercahaya;  nt. emas.@51
tapassin@m.  orang yang bertapa-brata, pertapa, orang yang berlatih pengendalian diri dan mampu mengendalikan indria@51
tappati@1. (pass dari tapati ) membakar, tersiksa; 2. dipuaskan, terpuaskan, dibuat senang, terpenuhi; kaus. tappeti  memuaskan, menghibur, menyuguhi, memberi makan, menikmati.@51
tama@m. nt.  kegelapan.@51
taraccha@m.  hiena (Hyaenidae), dubuk (Hyaena crocutus/striata).@51
tarati@melewati, melintasi, mengarungi, mengatasi, melampaui, menanggulangi; buru-buru, tergesa-gesa, cepat-cepat, tergopoh-gopoh.@51
taruṇa@a.  empuk, muda, remaja, halus, baru, segar; tunas, taruk, kecambah. [teruna ← Skt. taruṇa]@51
taruṇī@f.  gadis, remaja wanita.@51
tala@nt.  permukaan datar, permukaan, tanah, dasar, lapisan; telapak tangan atau kaki. [tala ← Skt. tala]@51
taluna@= taruṇa@51
taḷāka@nt.  kolam, telaga, waduk, balong. [telaga ← Skt. taṭaka/taṭāka/taḍāga]@51
tasati@1. haus, mendambakan; 2. gemetar, gentar, takut, menjadi ketakutan.@51
tasmā@oleh karena itu.@51
tahiṃ@di sana.@51
tāṇa@nt.  perlindungan, pernaungan, terlindung dari.@51
tāta@ayah, papa, bapak; sebutan kasih atau ramah atau penuh hormat untuk orang yang lebih muda atau tua, lebih rendah atau tinggi statusnya.@51
tādisa@a.  seperti itu, semacam itu; seperti Anda.@51
tādisaka@a. bersifat seperti itu.@51
tāpasa@m. petapa.@51
tāpeti@(kaus. dari tapati )  membakari, memanasi, menghangatkan, menghanguskan, menyiksa, (meleburkan).@51
tāreti@(kaus. dari tarati )  menyeberangkan, membantu, membantu melewati, menolong.@51
tāla@m.  pohon lontar, siwalan, tal (fan palm, Borassus flabeldiformis); ~pakka nt. buah siwalan. [tal ← Skt. tāla]@51
tāḷa@1. m. pemukulan, penghantaman, benda yang dipukul, alat musik tabuhan misalnya gong (canang besar), canang, gembreng (canang yang tidak bertombol di tengah-tengah), atau rebana; musik; 2. nt. kunci; ~chidda nt. lubang kunci. [tala ← Skt. tāla]@51
tāḷeti@memukul, menghantam, menggebuk, mencambuk.@51
tāva@adv.  sebegitu, sejauh, sepanjang; pertama-tama; dikarenakan, sebab; sebagaimana, seperti, begitu; biarkan; masih; ~kālika  a. (untuk) sementara (waktu).@51
tāvadeva@baru saja, segera, di situ juga, saat itu juga, ketika itu; = tadā eva  = tāvade .@51
ti@☞ iti .@51
tiṃsati@(tiṃsā ) f.  tiga puluh.@51
tikkha@a.  tajam, pandai, cerdik, cermat, tangkas, cerdas.@51
tiṭṭhati@berdiri, berhenti, stop, berdiam, tinggal, berkukuh, tetap, senantiasa (terus-menerus), bertahan (Buddhasāsanaṃ ciraṃ tiṭṭhatu  semoga ajaran Buddha bertahan lama), berlangsung, meletakkan, meninggalkan, membiarkan (tiṭṭhatu pubbanto tiṭṭhatu aparanto tinggalkan yang sudah lewat, biarkan yang akan datang; tiṭṭhatu bhikkhave satta-vassāni, yo hi koci bhikkhave ime cattāro satipaṭṭhāne evaṃ bhāveyya cha vassāni  tak usah tujuh tahun).@51
tiṇa@nt.  rumput, herba (tumbuhan terna), terna (tumbuhan dengan batang lunak tidak berkayu atau hanya mengandung jaringan kayu sedikit sekali sehingga pada akhir masa tumbuhnya mati sampai ke pangkalnya tanpa ada bagian batang yang tertinggal di atas tanah), rumput-rumputan, lalang, jerami, rumput kering, sampah. [terna ← Skt. tṛṇa]@51
tiṇṇa@(pp dari tarati )  yang telah mencapai pantai seberang; telah melewati, telah mengatasi, telah menyeberangi, telah mencapai Nibbana.@51
tiṇha@a.  tajam.@51
titikkhā@f.  kesabaran atau ketabahan atas penderitaan, hal kelapaangan hati untuk memaafkan.@51
tittaka@a.  tajam, (rasa) pahit, getir (pahit + pedas).@51
tittira@m.  semacam ayam hutan, (partridge; Perdix cinerea; Caccabis rufa), ketitir?, perkutut? (Geopelia striata)@51
tittha@nt.  arungan, tempat menyeberang, tempat mendarat, tempat mck; sekte (ajaran sesat). [tirta ← Skt. tīrtha]@51
titthiya@m.  pengikut aliran lain, pengikut ajaran sesat.@51
tinta@a.  basah, lembap.@51
tibba@a.  tajam, menggebu-gebu, antusias; padat, tebal, rimbun, bingung, gelap, remang-remang.@51
timbaru (timbarūsaka)@sejenis mentimun (Strychnos nux vomica atau Diospyros), kesemek (Diospyros kaki). [Kayu ular (Strychnos ligustrina)]@51
tiracchāna@m.  hewan, binatang; rendah, murahan; ~gata hewan; binatang (buas).@51
tiriyaṃ@adv.  secara melintang, horizontal, mendatar, melebar, menyamping.@51
tiro@a.  seberang, di luar, di atas, di sana, jauh; ~karaṇī  f. tirai, selubung, tabir; ~gāma  m. perkampungan luar, dusun lain atau seberang, perkampungan jauh.@51
tirokkha@a.  yang berada di luar, absen, tidak hadir; ~vāca  omongan menghina atau menyepelekan.@51
tila@m. nt.  tanaman atau biji wijen.@51
tilaka@m. 1. noktah, titik, tahi lalat, bintik; 2. sejenis pohon.@51
tīṇi@nt.  tiga.@51
tīreti@(kaus. dari tarati ) mengatasi, menyelesaikan, membereskan, melaksanakan; mengukur, menilai, (mengakui, mengenal, menghargai).@51
tu@namun, tetapi, sekarang, maka; kin  tu tetapi; tv  eva namun.@51
tuccha@a.  kosong, hampa, sepi. (=tucchaka )@51
tuṇhī@diam (seribu basa), bergeming, membisu, berdiam diri (tuṇhimāsīne  kala duduk diam);  ~bhāva m.  diam membisu, diam tidak bersuara.@51
turati@(= tarati ) bergesa-gesa, cepat-cepat, buru-buru.@51
turita@(pp dari turati ) tergesa-gesa, kesusu, cepat-cepat.@51
tulā@f.  gandar untuk mengangkat, membawa atau menopang; kasau; gandar timbangan, timbangan, neraca; ukuran, patokan, standar, berat, bobot; tingkatan, bandingan; ukuran berat (= 100 pala ).@51
tuvaṭaṃ@adv.  dengan cepat.@51
tuvaṭṭeti@berbagi.@51
tuvaṃ@(tvaṃ ) engkau, Anda. [tuan ← Skt. tvam]@51
teja (tejo)@m.  “ketajaman”, panas, nyala, api, cahaya, sinar, seri, kecemerlangan, semarak, energi, kekuatan, daya.@51
temeti@membasahi.@51
tela@nt. minyak wijen, minyak.@51
thaketi@menutup (pintu, jendela, dan sebagainya).@51
thañña@nt.  air susu ibu.@51
thambha@m.  pilar, tonggak, tiang, saka; keras kepala, kemunafikan, egois, bandel, angkuh, keras, kokoh; rumpun rumput.@51
thambheti (upatthambheti)@membuat tegar, membuat tegang, meregang, menopang, menyokong, menggalang, menyangga; kāyaṃ thambheti  meregang diri.@51
tharaṇa@nt.  tebaran, bentangan, paparan, arungan; lapik, pengalas.@51
tharu@m.  pangkal (gagang) senjata atau pedang; pedang.@51
thala@m.  dataran (kering) (yang tinggi atau keras); lapangan, padang.@51
thavikā@f.  ransel, buntil(an), pundi-pundi, kantong (terutama untuk membawa saringan air dan patta).@51
thāma@m.  kekuatan, daya, kemampuan.@51
thālaka@nt.  cangkir, gelas.@51
thālī@.  f.  belanga, ceret, kuali yang terbuat dari tanah; ~pāka m. persembahan barli atau nasi yang dimasak dalam susu, santapan barli susu.@51
thāvara@a.  berdiri diam, tidak bergerak, kokoh, kuat, stabil, tertambat; yang sudah tidak memiliki haus-damba atau nafsu keinginan, yang sudah mencapai kesucian.@51
thāvariya@nt.  kekokohan, kemantapan, keamanan, ketaktergoyahan, ketenteraman.@51
thira@a.  kokoh, kukuh, kuat, mantap, perkasa, tangguh, tegar, tahan lama, keras, awet.@51
thiratā@f.  kemantapan, ketegaran, stabilitas, keteguhan, ketangguhan; tiada geming.@51
thīna@nt. hal kaku, tidak tanggap, tak peduli, tak sigap; ~middha  lesu-lamban.@51
thūla (thulla)@a. pampat, masif, kasar, besar, kuat, berat; umum, biasa, rendah;  ~accaya m. pelanggaran serius, pelanggaran berat.@51
thena@m.  pencuri;  a.  mencuri.@51
theyya@nt.  pencurian; ~citta  pikiran untuk mencuri; ~saṅkhātaṃ adv.  dengan cara mencuri, dengan cara yang dianggap sebagai mencuri.@51
thera@a.  senior, terkemuka.@51
thoka@a.  kecil, sedikit, pendek, remeh;  nt. secuil, sekelumit.@51
thometi@memuji, menyanjung, mengagungkan.@51
daka@nt.  = udaka@51
dakkha@a.  cakap, terampil, cekatan, mampu, pandai, piawai; nt. kecekatan, kemampuan, keterampilan. [daksa ← Skt. dakṣa]@51
dakkhiṇa@a.  kanan; terampil, cekatan, tangkas; selatan. [daksina ← Skt. dakṣiṇa]@51
dakkhiṇā@f.  ‘yang diberikan dengan tangan kanan’, hadiah, derma, persembahan, buah tangan (yang diberikan kepada seorang ‘suci’ untuk menolong arwah leluhur); honor.@51
dakkhiṇeyya@a.  yang layak menerima persembahan atau buah tangan.@51
daṭṭha@(pp dari ḍasati )  digigit, disengat.@51
daḍḍha@ ( pp dari dahati )  terbakar.@51
daṇḍa@m.  tangkai pohon, kayu, gagangan; tongkat, batangan, penopang; hukuman, deraan (dengan tongkat); tongkat pemukul, tembung (tongkat pemukul atau penangkis [sebagai senjata berkelahi]), pentungan; denda. [denda ← Skt. daṇḍa]@51
daṇḍaka@(daṇḍaka+)  m.  tongkat pendek untuk memukul, pentung.@51
daṇḍī@nt.  pengembara.@51
dadāti@memberi, menghadiahkan, mengagih, mendermakan, mempersembahkan, bermurah hati kepada; membolehkan; okāsaṃ ~ memberi kesempatan, membolehkan; jīvitaṃ ~ mengorbankan jiwa; pass. diyyati, dīyati .@51
dadhi@nt.  dadih, susu beku, susu kental. [dadih ← Skt. dadhi]@51
danta@1. a.  terbuat dari gading;  m.  gigi, gading, taring;  ~poṇa nt. tusuk gigi; 2. (pp dari dameti )  dijinakkan, dikendalikan, ditaklukkan.@51
damana@a.  menjinakkan, menaklukkan, menguasai.@51
dameti@menjinakkan, menghukum, mengendalikan, menguasai, menaklukkan, menundukkan, mengubah, mengkonversi.@51
dalidda (daḷidda)@a.  orang gelandangan, pengembara, miskin, papa, melarat, fakir, pengemis, peminta-minta. [derita? ← Skt. daridra]@51
daḷha@a.  kuat, kokoh, perkasa, kukuh, tangguh, kekar, mantap; nt. adv. sangat, amat, dengan kuat, kencang.@51
dava@m.  1. api, panas; 2. berlari, meluncur, berpacu, jalan, terbang, kecepatan, bermain-main, bergurau, iseng.@51
dasa@a.  sepuluh. [dasa ← Skt. daṡa]@51
dassa@m.  melihat atau tampak, mencerap atau tercerap.@51
dassati@fut. dari dadāti .@51
dassana@nt.  hal melihat, memandang; persepsi, pandangan, penglihatan, penilikan (batiniah).@51
dassanīya@a.  elok dipandang, cantik, indah, sedap dipandang mata, seronok.@51
dasseti@(kaus. dari dassati ) mempertunjukkan, memperlihatkan; dassetuṃ  inf. menunjukkan, memperlihatkan, menjelaskan, mengisyaratkan, mempertontonkan.@51
daha@m.  danau.@51
dahati@1. (= dahate ) menempatkan, berkukuh pada, meletakkan, mengira, menganggap, mencamkan, menyatakan; 2. (= ḍahati ) membakar.@51
dahara@a.  kecil, mungil, lembut, muda; anak muda, pemuda, anak laki-laki, remaja.@51
dāṭhā@f.  gading, gigi taring, gigi yang besar.@51
dāṭhin@a.  yang mempunyai gading; gajah.@51
dāna@nt.  pemberian, hadiah, derma, kemurahan hati, dana.@51
dānava@m. sejenis asura atau raksasa, keturunan Danu.@51
dāni@adv.  sekarang, kini.@51
dāpeti@1. membuat seseorang memberi, menyuruh memberi; membagi, mengirim, memberi, mempersembahkan; 2. melarikan, membuat lari.@51
dāya@m.  1. kayu, hutan, rimba, belukar, hutan kecil, taman; 2. hal memberi, hadiah, dana, derma, sumbangan, imbalan, bagian, bayaran.@51
dāyaka@a.  memberi, menganugerahi, membagi; m. penderma, dermawan.@51
dāyajja@nt.  warisan, ahli waris.@51
dāra (dārā)@f.  wanita muda, dara, istri, wanita yang telah menikah. [dara Ü Skt. dārā]@51
dāraka@m.  bocah, anak-anak, pemuda, kanak-kanak.@51
dārikā@f.  gadis, putri.@51
dāru@nt.  kayu; potongan kayu; pl. bagian-bagian (yang terbuat dari) kayu; ~gaha m.  gudang kayu; ~dhītalikā f.  boneka kayu.@51
dāsa@m.  budak, hamba, jongos, bentara, abdi.@51
dāsī@f.  budak atau hamba wanita.@51
diṭṭha@(pp dari dassati ) terlihat, tampak;  nt.  penglihatan;  ~dhamma  dunia ini, kelahiran ini, keadaan ini, keberadaan ini.@51
diṭṭhi@f.  pandangan, paham, kepercayaan, spekulasi (pandangan salah).@51
diṭṭhika@a.  hal melihat atau memandang, seseorang yang beranggapan; (seseorang) yang berpandangan atau berpaham.@51
dinna@(pp dari dadāti ) diberikan, dihadiahi.@51
dibba@a.  dewa, surgawi, supranatural.@51
dibbati@bermain-main, bersenang-senang, beriang-ria.@51
divasa@m. nt.  hari.@51
divā@adv.  siang hari; ~taraṃ adv. agak siang; ~vihāra m.  istirahat siang, tidur siang.@51
disā@f.  penjuru, wilayah, daerah, arah, jurusan; (puratthimā, pacchimā, dakkhiṇā, uttarā, uparimā, heṭṭhimā + 4 anudisā); diso disaṃ  di semua penjuru.@51
dissati@pass. dari dassati .@51
dīgha@a.  panjang, tinggi, panjang lebar;  m. ular; ~jāti f. ular.@51
dīpa@  1. m. lampu, pelita; 2.  m. nt.  pulau, benua, kontinen, terra firma, landasan kokoh, landasan dudukan, tempat yang aman.@51
dīpin@m.  panter, harimau akar, macan tutul (Panthera pardus).@51
dīpeti@ menyalakan, mengobarkan, menyulut, memancarkan cahaya, bersinar; menerangkan, menjelaskan.@51
dukkaṭa@m.  tindakan salah, tindakan tak baik, kesalahan, keburukan.@51
dukkha@nt. duka, penderitaan, kesakitan, ketidaknyamanan, ketidakpuasan, kesusahan, kesengsaraan; hal sakit, menyakitkan. [duka ←  Skt. duhkha]@51
dukkhita@a.  menderita, tak bahagia, duka, merana, kecewa, penyedihkan, patah hati.@51
dukkhin@a.  menderita, bersedih hati, sengsara, menyedihkan.@51
duggata@a.  dalam kondisi atau alam yang menyedihkan; menyedihkan, tidak bahagia, malang.@51
duggati@f.  alam menyedihkan. ( = apāya )@51
duccara@a.  sukar, sulit.@51
duccarita@nt.  tindakan salah, perbuatan atau perilaku buruk.@51
duṭṭha@(pp dari dussati )  dicemari, digerogoti, rusak, buruk, jahat, bejat, busuk, ganas, jorok. [dusta ← Skt.duṣṭha]@51
duṭṭhulla@a.  jahat, cabul, kotor, berat, serius.@51
dutiya@a.  yang kedua, yang berikut, (sebagai) rekan(an); dutiyaṃ adv. untuk kedua kalinya.@51
dutiyikā@f. istri atau perempuan.@51
dupposatā@f.  hal sulit untuk didukung, sulit untuk dipelihara, sulit untuk dirawat.@51
dubbaca@a.  sulit dinasihati, sukar diajak bicara, mendegil, membandel.@51
dubbaṇṇa@a.  berwarna jelek, jelek.@51
dubbalya (dubballa@) m.  ketidakkuasaan, ketidaksanggupan; dubbalyā adv.  tanpa dasar, tanpa bukti kuat.@51
dubbha@a. mencurangi, menyakiti, berusaha melukai; adubbha nt. hal tidak menyakiti, keterusterangan, keramahan, niat baik.@51
dubbhaka@a. berkhianat, berdurhaka.@51
dubbharatā@f.  hal sulit untuk disokong, sulit untuk dipelihara.@51
dubbhikkha@a.  dilanda bencana kelaparan;  nt.  kelangkaan makanan sedekah, bencana kelaparan, kekurangan makanan.@51
dummano@nt.  batin yang tertekan, sedih.@51
dummaṅku@a.  terhuyung-huyung, berpikiran jahat.@51
dussa@nt. bahan tenunan, kain, kain serban; busana (atas), pakaian; ~yuga  selengkap pakaian, satu setel pakaian, selengkap sandang.@51
dussati@ menjadi buruk atau jahat, menjadi bejat, menjadi rusak; menjahati, menggerogoti, merongrong, mencemari.@51
dussīla@a.  berakhlak bejat.@51
dūta@m.  utusan, duta, kurir, wakil; pesuruh;  nt. permainan, judi. [duta ← Skt. dūta]@51
dūteyya@nt.  suruhan, pesan(an), tugas.@51
dūra@a. jauh. [dura ← Skt. dūra]@51
dūsaka@a.  menggerogoti, membuat aib, menodai; m.  pencemar, penoda, perusak, pembuat aib.@51
dūseti@merusak, menghancurkan; melukai, mencederai; mengotori, mencemari, menodai.@51
deti@☞ dadāti .@51
deyya@a.  diberikan, layak dihadiahi, layak diberi derma; nt. hadiah, persembahan; ~dhamma m. hadiah, pemberian.@51
deva@m.  “cemerlang, bercahaya”, dewa, dewata; (awan) hujan; raja, paduka; ~gaha m.  kuil, candi; milik kerajaan. [dewa ← Skt. deva]@51
devatā@f.  “kondisi atau keadaan suatu dewa”, kedewaan; dewa, dewata, peri.@51
devasika@a.  harian; devasikaṃ  adv. harian, setiap hari.@51
devī@f.  dewi (dewa wanita), peta wanita, yakkha wanita; ratu, puan, nyonya. [dewi ← Skt. devī]@51
desa@m.  titik, pokok, bagian, tempat, lokasi, daerah, wilayah, negeri; cakupan. [desa ← Skt. deśa]@51
desanā@f.  wejangan, instruksi, pengarahan, tuntunan, pelajaran, uraian, pembabaran, ceramah, khotbah; pemakluman, pernyataan; pengakuan, pengesahan.@51
desita@(pp dari deseti ) dipaparkan, ditunjukkan, diperlihatkan, diajarkan, diberikan.@51
deseti@menunjukkan, memaparkan, mengajar, membabarkan, memperlihatkan, mengungkapkan.@51
doṇa@m.  ember kayu, tong; ukuran takaran (= 4 āḷhaka ).@51
doṇī@f.  ember kayu, tong; sampan berbentuk ember (beralas datar); lubang atau lembah yang digali di tanah; badan kecapi.@51
domanassa@nt.  ketidakbahagiaan, kekesalan, ketidaknyamanan batin, kesedihan, kepedihan, gundah-gulana.@51
dovacassa@nt.  kerusuhan, kekacauan, kekusutan; bandel, degil, kepala batu, keras kepala, tak mau menurut atau mendengar kata orang, rongseng, cengeng, buruk laku.@51
dosa@m.  gerogotan/rongrongan, cacat, noda, kesalahan, galat, kekeliruan, keburukan, kebejatan, kebobrokan, keadaan tergerogoti atau rusak; kemarahan, kebencian, kedengkian, niat jahat.@51
dohaḷa@m.  mengidam, hasrat yang kuat.@51
dvaya@a.  dua, ganda; salah, keliru, palsu, dusta;  nt.  sepasang, dua sejoli.@51
dvādasa@a.  dua belas.@51
dvāra@nt.  pintu, pintu masuk, gerbang.@51
dvi@a.  dua, ganda, sepasang.@51
dvīhitika@a. sulit mendapatkan, payah memperoleh; gagal panen.@51
dhaja@m.  bendera, panji; lambang, simbol, emblem, lencana; ~gga puncak panji, puncak rujukan. [duaja ← Skt. dhvaja]@51
dhañña@nt.  padi-padian.@51
dhana@nt.  kekayaan, harta, uang.@51
dhanu@nt.  busur.@51
dhanuka@nt.  busur (kecil), busur mainan.@51
dhamana@m.  hal meniup, membunyikan, menyalakan.@51
dhamani@f.  urat nadi; ~santhatagatta urat nadi di sekujur badan tampak jelas.@51
dhamma@m.  doktrin, ajaran (pl.), kebenaran, legal, norma, hukum (dhammo sanantano kebenaran atau hukum nan abadi), moralitas, kebajikan, sifat intrinsik, kondisi, karakteristik, kualitas (āyatiṃ anuppādadhammā ti anāgate anuppajanakasabhāvā), fenomena (samudaya-dhamma yang mengalami kemunculan), objek mental, hal, kewajiban, praktik (jalan hidup), peraturan.   {Menurut Buddhaghosa, dhamma mengandung empat makna yakni guṇa (sifat, kualitas, kebajikan), desanā (ajaran), pariyatti (kitab suci) dan nissatta atau nijjīva (benda, kebenaran, nibbana, eksistensi, dan fenomena juga termasuk di dalamnya.}; ~cakkhu  yang bermata Dhamma, yang telah melihat Dhamma (empat Ariyasacca); ~vāda  teori dhamma; ~sāmin m.  Wali Dhamma (julukan Sang Buddha). [dharma ← Skt. dharma]@51
dhammatā@f. sesuai dengan Dhammaniyāma; sesuai, cocok, pantas; aturan umum, hukum, hukum kosmis, kebiasaan, fenomena yang teratur.@51
dhammika@a.  sesuai dengan hukum, sesuai dengan Dhamma atau peraturan, tepat, cocok, benar, diperkenankan, legal, dibolehkan, adil, berbudi, terhormat.@51
dhammiya@a.  sesuai dengan Dhamma, legal.@51
dharati@memegang, membawa, mengenakn, menopang, menahan, bertahan, berlanjut, hidup, ada terus.@51
dhātu@f.  unsur (dasar), elemen; kondisi alamiah, sifat, watak; faktor, pokok, asas, dasar, bentuk, wujud; relik, sisa-sisa jasmani; kasih, suka.@51
dhāreti@(kaus. dari dharati )  membawa, menimang, mengenakan, memegang, memiliki, memberikan, memegangkan, menahan, mengingat, menghapal, mencamkan, memahami, mengambil …..sebagai, menganggap …….sebagai, mengakui, membolehkan, menyokong, memberikan, menerima …..sebagai.@51
dhāvati@lari, melarikan diri, berlari, berlari menjauh, memelesat, mengalir; menggelontor, membersihkan (dengan aliran air).@51
dhītar@(dhītā ) f.  putri.@51
dhītalikā@f.  boneka.@51
dhuta (dhūta) @ (pp dari dhunāti )  menggoncangkan, mengiraikan, disingkirkan; penyingkiran kotoran batin.@51
dhutta@a.  liar, bebas, licik, cerdik, curang, culas, jahat, bobrok, bejat, sembrono;  m.  bajingan, bangsat, penipu, penjahat, berandal, pengumbar nafsu, penjangak (orang yang tidak senonoh tingkah lakunya; risau; cabul), bajul (buaya; penjahat, pencuri, pencopet, penggoda perempuan).@51
dhuttikā@f.  = dhutta .@51
dhura@m. nt.  kuk, gandar, galah, poros; beban, muatan, tuntutan, tuduhan, jasa, tanggung jawab; bagian depan, kepala, hulu, puncak, seberang; pemimpin, tokoh, penghulu; ujung, bagian puncak atau awal.@51
dhuva@a.  stabil, tetap, permanen, pasti, niscaya; nt. kekekalan, stabilitas; adv. secara tetap, terus menerus, selalu, tentu saja; ~coḷa  selalu tersumbat kain; ~lohita  selalu berdarah.@51
dhūma@m.  asap, kabut.@51
dhūli@f.  debu, duli. [duli ← Skt. dhūli]@51
dhota@(pp dari dhāvati )  telah dicuci, dibilas, dibersihkan.@51
dhovati@mencuci, membilas, membasuh, membersihkan, mengumbah.@51
na@tidak, bukan.@51
nakkhatta@nt.  gugus bintang, rasi, konstelasi; nakkhattaṃ ādisati (atau oloketi atau uggaṇhāti) merasi (meramalkan nasib atau jodoh seseorang dengan menilik perhitungan bintang kelahiran).@51
nakha@m. nt.  kuku, cakar.@51
nagara@nt.  kubu, benteng, kota yang diperkuat dengan benteng, kota (termasuk tanah yang berada di seputarnya).@51
nagga@a.  telanjang, bugil.@51
naccaka@m.  penari, aktor (pantomim);  f. naccakī .@51
naccati@menari, memainkan (memerankan).@51
naṭṭha@(pp dari nassati )  binasa, musnah, hilang, lenyap.@51
nattar@m.  cucu.@51
natthika@a.  yang berpaham “tiada sesuatu pun”, skeptis, nihilis; ~vāda  m.  seorang nihilis.@51
natthu@m.  hidung; = natthukamma  pengobatan melalui hidung.@51
nadī@f. sungai. [nadi ← Skt. nadī]@51
nandati@senang, gembira, suka, bangga atas (instr.); kaus. nandeti membuat senang, membantu.@51
nandi (nandī)@f.  1. kegembiraan, kesenangan, kesukaan dalam, gemar; 2. genderang (gendang, tambur) kemenangan.@51
nabha(s)@nt.  kabut, awan, langit, angkasa.@51
namakkāra@m.  hal memberi hormat.@51
namati@menekuk, membungkuk, mengarahkan, mengerahkan; kaus. nameti menekuk, membentuk.@51
naya@a.  “menuju; jalan, cara, metoda, rencana, gaya, kesimpulan; makna, nuansa; perilaku, sifat, tindak-tanduk; esa nayo sesesupi  sisanya pun [seyogianya dipahami] dengan cara yang sama.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nara','<p class="definition">m.  orang, manusia.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('naraka','<p class="definition">m.  ceruk, lubang; neraka. [neraka ← Skt. naraka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nalāṭikā','<p class="definition">f.  kerut (dahi).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nava','<p class="definition">1.  sembilan; 2.  a. baru, segar, bersih, belakangan, muda, tak berpengalaman (masih hijau), pemula; ~kamma   nt.  pembangunan baru, pemugaran, perbaikan, renovasi; ~ṅga-buddha-sāsana sembilan langgam ajaran Sang Buddha yakni sutta, geyya, veyyākaraṇa, gāthā, udāna, itivuttaka,  jātaka, abbhutadhamma, vedalla..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nahāna','<p class="definition">nt.  mandi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('naḷeru','<p class="definition">m.  nama yaksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('navanīta (nonīta)','<p class="definition">nt.  mentega segar, nawanita (gumpalan hasil pengadukan dadih yang kebanyakan terdiri dari lemak susu dan padatan susu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('navama','<p class="definition">kesembilan, ke-9, IX.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nassati','<p class="definition">binasa, musnah, hilang, lenyap, lesap, berakhir, hancur, rusak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nahāpita','<p class="definition">m.  tukang cukur yang juga memberi layanan mandi (salah satu golongan yang tingkat sosialnya dianggap rendah).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nahāyati (nhāyati)','<p class="definition">mandi, mencuci, melakukan pembersihan diri (terutama saat berakhirnya kecantrikan keagamaan atau setelah berakhirnya masa penyucian diri).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāga','<p class="definition">(nāga+)   gajah nāga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nātha','<p class="definition">m.  pelindung, pengayom, protektor, penolong, penyelamat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nānā','<p class="definition">adv. berbagai macam, aneka jenis, majemuk, macam-macam, aneka, segala macam, beragam, berbeda(-beda), terpisah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nābhi (nābhī)','<p class="definition">f.  pusat, pusar; poros (roda).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāma','<p class="definition">nt.  nama, julukan, panggilan; batin; kata benda; ~vibhatti f.  deklensi kata benda; nāmaṃ karoti menamakan, menjuluki. [nama ← Skt. nāma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāmaka','<p class="definition">a.  bernama, dengan nama, diberi nama; dengan nama belaka, omongan belaka, omong kosong, menggelikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāyaka','<p class="definition">m.  pemimpin, ketua, wali. [nayaka ← Skt. nāyaka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nārī','<p class="definition">f.  perempuan, wanita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāla (nāḷa)','<p class="definition">nt. tangkai hampa (terutama seperti tangkai kangkung).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāḷikera','<p class="definition">m.  pohon kelapa; kelapa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāvā','<p class="definition">f.  perahu, kapal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāvika','<p class="definition">m.  pelaut, kelasi, anak kapal; nakhoda kapal; tukang tambang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāsaka','<p class="definition">m.  pembinasa, penghancur, pemusnah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāsana','<p class="definition">nt.  kebinasaan; hal ditinggalkan atau diusir; ~antika a. yang berada di bawah hukuman pengusiran; (Menurut V.A. 428 ada tiga jenis: saṃvāsa, liṅga, dan daṇḍakamma).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāsika','<p class="definition">a.  milik hidung; ~sota m. nt.  lubang hidung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāseti','<p class="definition">menghancurkan, merusak, membinasakan, memusnahkan, membunuh; bertobat; mengusir.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikati','<p class="definition">f.  penipuan, kecurangan, kebohongan, ketidakjujuran; instr. nikatiyā, nikatyā, nikacca.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikāya','<p class="definition">m.  kumpulan, gerombolan, kelompok, golongan, dunia, alam; kumpulan sutta.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niketa','<p class="definition">m.  rumah, kediaman, mukim, persinggahan; rombongan, peguyuban, kelompok.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkaṅkha','<p class="definition">a.  tidak ragu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkama','<p class="definition">a. m. upaya, kekuatan, ketahanan, ketekunan, keuletan, ikhtiar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkujjita','<p class="definition">pp dari nikkujjati ) tertelungkup, terjungkir balik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkhamati','<p class="definition">pergi dari, keluar dari, keluar, pergi keluar, berangkat pergi, beranjak pergi, pergi meninggalkan, tinggal pergi, meninggalkan, keluar menuju, berpaling dari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkhameti (nikkhāmeti)','<p class="definition">(kaus. dari nikkhamati ) mengeluarkan, membawa keluar, membawa pergi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkhitta','<p class="definition">(pp dari nikkhipati )  diletakkan, terletak, diletakkan ke dalam, dipasang, disusun; menjauhi atau bebas dari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkhipati','<p class="definition">meletakkan (dengan hati-hati), menyimpan, menyisihkan, menyingkirkan, mengenyahkan, mencampakkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikkhepa','<p class="definition">m.  hal meletakkan, menggeletakkan, membuang, mencampakkan, menyisihkan, menyingkirkan, melepaskan, menolak; ringkasan, rangkuman, ikhtisar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikhanati (nikhaṇati)','<p class="definition">menggali, menimbun, menegakkan, menutupi (menimbuni), membenamkan; akkhiṃ ~  mengedipkan mata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikhāta','<p class="definition">(pp dari nikhaṇati ) digali, ditanam atau ditimbun, dibenamkan, ditegakkan, ditancapkan, dihunjamkan, dipancangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikhādana','<p class="definition">nt.  “makan ke dalam”, alat tajam, sekop atau pahat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nigacchati','<p class="definition">turun menuju, memasuki, menuju, menderita.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nigama','<p class="definition">m.  kota (kecil), kota niaga (biasanya di tepi sungai), bandar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niggaṇhāti','<p class="definition">menahan, mengendalikan; memarahi, mengecam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niggaha','<p class="definition">m.  pengendalian, kontrol, pengekangan, penahanan; comelan, celaan, kecaman, hal menyalahkan; sangkalan, pembuktian kesalahan, penyidangan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nigghosa','<p class="definition">m.  seruan, ungkapan, ucapan; reputasi, kemasyhuran; celaan, teguran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nicca','<p class="definition">a.  tetap, kekal, langgeng, abadi, terus menerus, reguler;  nt. adv  niccaṃ  secara terus menerus, selalu, senantiasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niccala','<p class="definition">a.  diam tidak bergerak, bergeming.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niccharati','<p class="definition">pergi menuju, muncul, keluar dari; kaus. mengeluarkan, melepaskan, melontarkan, mengutarakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nija','<p class="definition">a.  milik diri sendiri; ~desa m.  negeri sendiri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nijjhāyati','<p class="definition">merenungkan, hanyut dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niṭṭhāna','<p class="definition">nt.  diselesaikan, dibereskan, dituntaskan, dilaksanakan, dilakukan, dikerjakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niṭṭhita','<p class="definition">a.  berakhir, selesai, siap; disiapkan, tamat, habis.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niṭṭhubhati (nuṭṭhubhati, niṭṭhuhati)','meludah.',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nittharati','<p class="definition">menyeberangi, melampaui, mengatasi, meninggalkan, terbebas dari; pp. nitiṇṇa ; kaus. nitthāreti  mengatasi</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nidassana','<p class="definition">nt.  “menunjuk pada; kenyataan, contoh, tampak, wujud penampakan, pembandingan, keterangan tambahan, atribut, ciri, sifat, tanda, label, embel-embel.@51
nidahati@meletakkan, menimbun, menguburkan, menyembunyikan (dalam tanah), menyimpan.@51
nidāna@nt.  dasar, landasan, sumber, asal muasal, sebab, alasan, rujukan, subjek, (bagian) pengantar; tatonidānaṃ dengan ini, oleh ini, gara-gara ini, lantaran.@51
niddā@f.  tidur; ~ārāma(na)  gemar tidur. [nidera ← Skt. nidrā]@51
niddiṭṭha@(pp dari niddisati ) terungkap, dijelaskan, ditunjukkan, dipaparkan, diungkapkan, didefinisikan.@51
niddisati@menjelaskan, menguraikan, menunjukkan, mendefinisikan, mengungkapkan, memaparkan, berarti.@51
niddesa@m. illustrasi, penjelasan, uraian, analisis, penggambaran, hal melukiskan, petunjuk.@51
nidhāna@nt.  hal menyimpan, mengamankan, menaruh, menempatkan, menabung, mencadangkan, membekam, memendam, memeram, menyembunyikan, menanam; harta (karun), penyimpanan, tabungan, wadah penyimpan.@51
nidhi@m.  1. yang ditimbun atau dibenamkan dalam tanah, harta yang disembunyikan; 2. hal mengenakan (mantel).@51
nindati@menyalahkan, mencela, mengecam, menghina.@51
nindā@f.  hal menyalahkan, mencela, mengecam, menghina.@51
ninna@a.  melengkung ke bawah; rendah, dalam, cekung; condong pada, cenderung pada, mengarah pada, menuju ke; ke bawah; nt. dataran rendah, lembah, tanah rendah, lembang.@51
ninnāmin@a.  turun, menurun.@51
nipaka@a. cerdik, cerdas, pandai, cermat, bijaksana.@51
nipajjati@berbaring; kaus. nipajjāpeti membaringkan, meletakkan, menyimpan.@51
nipanna@(pp dari nipajjati ) berbaring.@51
nipāta@m.  jatuh, turun; partikel (kata yang biasanya tak dapat diderivasikan atau diinfleksikan, mengandung makna gramatikal dan tidak mengandung makna leksikal, termasuk di dalamnya artikel, preposisi, konjungsi, interjeksi, dan kata keterangan); bagian buku, bab.@51
nipāteti@membuat jatuh, menjatuhkan, melempar, melukai, mencampakkan, membaringkan.@51
nippīḷana@nt.  hal memencet, menekan, memeras; pukulan.@51
nippīḷeti@memeras, menekan, memencet, mencengkeram, mendesak.@51
nipphanna@(pp dari nippajjati )  tercapai, berhasil, sempurna, terlatih, terwujud, terbentuk.@51
nibbattati@keluar dari muncul, menjadi, dihasilkan, dilahirkan, terlahir, timbul.@51
nibbattana@nt.  tumbuh, mengemuka, muncul, lahir, eksist, hidup.@51
nibbatteti@(kaus. dari nibbattati ) menghasilkan, melahirkan, menimbulkan, menerbitkan; melakukan; mengamalkan, menemukan.@51
nibbāti@mendingin, menjadi tidak bernafsu.@51
nibbāna@nt.  kepadaman, kesegaran, kebugaran, kelenyapan keserakahan kebencian dan kegelapan batin, nirwana, pemadaman total; (Udāna 8.3/80 ajātaṃ abhūtaṃ akataṃ asaṅkhataṃ).  [nibbāna merujuk ke keadaan, sedangkan parinibbāna merujuk ke pencapaian keadaan tsb.] [nirwana ← Skt. nirvāṇa]@51
nibbāyati@mendingin, menjadi segar, padam, lenyap.@51
nibbāhati@membawa keluar, mengeluarkan, memindahkan; nibbāhāpeti menyuruh membawa keluar, membongkar muatan, mengangkut pergi.@51
nibbāhana@a. menuntun keluar, mengenyahkan, menyelamatkan; nt. pengenyahan, pembersihan, perlindungan, jalan keluar.@51
nibbidā@f. kejemuan, kebosanan, keengganan, ketidakpedulian, kekecewaan, kecuekan, kemasabodohan, ketidakacuhan, kejijikan, kejenuhan, muak terhadap kehidupan duniawi.@51
nibbindati@jemu, bosan, muak, kecewa, enggan.@51
nibbeṭhita@(pp dari nibbeṭheti ) dijelaskan, tersingkap, diperjelas.@51
nibbeṭheti@mengurai kekusutan, melepas lilitan, menjelaskan, menyingkapkan, menjernihkan; menyangkal, menolak; berkelit, mengelik, mengelak.@51
nibbhujjhati@beradu gulat, bergulat.@51
nibbhoga@a.  tidak berguna, yang telah dicampakkan atau ditinggalkan, tidak mengenal penikmatan, bukan seorang penikmat.@51
nimanteti@mengundang, mempersilakan.@51
nimitta@nt.  tanda, isyarat, alamat, pertanda, tengara, gelagat; ciri, penampakan, sifat, karakteristik, atribut, corak, fenomena; bayangan atau gambaran dalam batin; tanda sasaran; alat kelamin; dasar, alasan, kondisi; ~kamma nt. (pe)ramalan, (pe)nujuman.@51
nimugga@a.  dicemplung ke dalam, direndam dalam, dipendam dalam, dibenam.@51
nimujjati@tenggelam, cemplung ke dalam, menyelam ke dalam, terjun ke dalam, terendam dalam@51
nimmadana@nt.  penyentuhan, sentuhan, penghancuran, pengikisan, penundukan, menghilangkan kemabukan (keangkuhan).@51
niyata@a.  terkendali, terikat pada, terkungkung dalam, niscaya, pasti, tentu, perlu.@51
niyama (niyāma)@1. pengendalian, latihan, keterkendalian, keterbatasan; keniscayaan, keteraturan, ketentuan, kepastian, batasan; hukum alam, keteraturan kosmis; niyamena  (niyamato )  adv.  harus, perlu; 2. cara, jalan, metoda, praktik.@51
niyyati (nīyati)@dibimbing, dituntun, pergi, dipindahkan.@51
niratta@a.  yang tidak/belum diasumsikan atau diterima (dianggap), yang telah dicampakkan atau ditolak.@51
nirabbuda@a. bebas dari bisul atau tumor, sehat; bebas dari kebobrokan.@51
niraya@neraka, alam penuh siksaan.@51
nirādīnava@a.  tidak dalam ancaman bahaya.@51
nirujjhati@(pass. dari nirundhati ) dihancurkan, dileburkan, diluluhkan, berakhir, berhenti, lenyap, meninggal.@51
nirutti@f.  salah satu dari enam Vedāṅga (kappa, vyākaraṇā, nirutti, sikkhā, chando/ viciti, jotisattha); penjelasan kata-kata, analisis tata bahasa, tafsiran etimologis, tafsiran turunan kata, pelafalan, pengucapan, ucapan, dialek, cara berbicara, gaya bahasa, (peng)ungkapan, ekspresi.@51
niruddha@(pp dari nirundhati )  dienyahkan, dihancurkan, diakhiri, dihentikan, dilenyapkan, terintang.@51
nirodha@m.  kehancuran, keleburan, keluluhan, keberakhiran, kelenyapan, hal berhenti.@51
nilīna@(pp dari nilāyati )  duduk di atas, menduduki, bertengger di atas, bersembunyi, mengendap (menunggui).@51
nilīyati@berjongkok (terutama dengan tujuan bersembunyi); mengendap(-endap); bersembunyi.@51
nivattati@berbalik, berputar balik, berpaling dari; lolos, hilang, lenyap, gaib, musnah, pupus, sirna, kabur, berhenti, berakhir.@51
nivattana@nt. putaran, balikan, belokan, hal berpaling dari, berbelok, melepaskan, berbalik arah (konversi); membelot; kelok, lengkung, tikungan, keluk.@51
nivasati@tinggal, berdiam, hidup, menetap.@51
nivāta@a.  “dengan angin mengalir ke bawah”, tanpa angin, terlindung dari angin, terlindung, aman; nt. tenang; m. kerendahan, kerendahan hati, kepatuhan, kesantunan.@51
nivāpa@m.  makanan yang dilemparkan atau ditaburkan, rangsum, makanan hewan.@51
nivāraṇa@a. nt.  penahan, perintang, pencegah, penangkal.@51
nivāreti@(kaus. dari nivarati )  menahan, menghentikan, melarang, menolak.@51
nivāseti@mengenakan pakaian, mengenakan jubah bawah.@51
niviṭṭha@(pp dari nivisati )  didiami, didirikan, dibangun, dikukuhkan, pasti; ditambatkan pada, cenderung, bertekad, condong pada.@51
nivisati@memasuki, berhenti, berdiam di, mengambil jalan, menetap di.@51
nivesana@nt.  hal memasuki, pintu masuk, hunian, penghunia, kediaman, rumah (umat awam), panti, hal mendiami, kemelekatan.@51
nisajjā@f.  duduk, kesempatan untuk duduk, tempat duduk.@51
nisanti@f.  perhatian atau pengamatan yang cermat, pencerapan@51
nisādin@a.  berbaring.@51
nisāmeti@memperhatikan, menyimak, mengamati, mencermati, mengindahkan, hati-hati, mencerap.@51
nisinna@(pp dari nisīdati )  duduk.@51
nisīdati@duduk.@51
nisīdana@nt.  kain duduk.@51
nissaṃsaya@a.  tiada ragu, tiada sangsi, tak diragukan lagi, tak pelak lagi, tak syak lagi.@51
nissaggiya@a.  yang harus dilepasserahkan; benda yang dilepasserahkan, yang dilontarkan.@51
nissajjati@membebaskan, memberikan, melepaskan, menyerahkan, menuangkan.@51
nissaṭṭha@(pp dari nissajjati )  dibebaskan, dilepaskan, ditinggalkan, diberikan, diserahkan.@51
nissayati@bersandar pada, berlandaskan, bergantung pada, mempercayai, mengikuti.@51
nissaraṇa@nt.  keluar, meninggalkan; keluaran, hasil, menanggalkan, terbebas, pembebasan.@51
nissāya@ger. dari nissayati ) menyandar pada; dekat, hampir, di atas; melalui, dengan cara, dengan bersandar pada, dikarenakan, atas dukungan atau lindungan; sebab, karena, demi.@51
nissita@(pp dari nissayati )  bergantung pada, menghuni, menempel pada, ditopang oleh, hidup bersandar pada, bersandar pada, beralaskan, berlandaskan, condong pada; lahan.@51
nisseṇi@f.  tangga, tangga pemanjat, senigai.@51
nīta@(pp dari neti )  dituntun, dibimbing, dipastikan, dianggap, diduga, disimpulkan, dibawa pergi, diculik.@51
nīla@a.  biru tua, biru gelap, biru kehijau-hijauan, hijau kebiruan; warna gelap. [nila ← Skt. nīla]@51
nīlaka@a.  ▶ nīla@51
nīvaraṇa@nt. m.  rintangan, halangan, hambatan.@51
nīvārā@m.  padi (liar).@51
nīhāraka@a. m.  seseorang yang membawa pergi, seseorang yang mengantarkan.@51
nīharati@mengeluarkan, melontarkan, mencampakkan, menembusi, menghantarkan.@51
nu@(partikel penegas); partikel pertanyaan (interogatif); na nu  tidakkah.@51
nūna@apakah lalu, sekarang, akankah; tentu saja; yaṃ nūna bagaimana kalau, akankah saya, biar saya.@51
nekkhamma@nt.  hal meninggalkan kesenangan duniawi, meninggalkan kesenangan nafsu indriawi. (kāmānaṃ nissaraṇaṃ yad idaṃ nekkhammaṃ)@51
negama@a. penghuni atau penduduk kota (kecil) atau bandar, orang-orang.@51
neti (nayati)@menuntun, membimbing, bertindak, mengambil, membawa (pergi), menggiring, menyimpulkan, memahami, menganggap; pass. nīyati , niyyati .@51
netthar@m.  netthāraṃ vattati  berperilaku sedemikian rupa sehingga bebas cela, berperilaku korek.@51
nerayika@a.  berhubungan dengan alam neraka; yang akan menderita di alam neraka.@51
no@1.tidak, bukan; tentu saja tidak/bukan; no ca  cuma belum, hanya saja tidak; no ca kho  namun tentu saja bukan/tidak;no na  sama sekali tidak/bukan; no hi taṃ tentu saja bukan demikian; 2.bentuk enklitik dari gen. dat. akk. dari pronomina orang pertama jamak (=amhākaṃ ); 3. = nu .@51
paṃsu@m.  debu, kotoran, duli, tanah; ~kūla benda (misalnya kain) usang dari tumpukan sampah, kain usang, barang buangan; ~kūlika  orang yang mengenakan pakaian yang terbuat dari kain usang tumpukan sampah.@51
pakata@a.  yang sudah dilakukan, dibuat; bersifat, dilanda, dihinggapi, dipengaruhi.@51
pakati@f.  wujud asli (asal) atau alami, keadaan (sifat) alami; asli, utama; kesempatan, kejadian, peristiwa; pakatiyā  sebenarnya, biasanya, lazimnya, sebagaimana biasanya, dengan sendirinya, secara otomatis. [pekerti ← Skt. prakṛti]@51
pakaraṇa@nt.  perbuatan, perkara; kesempatan, peristiwa, kejadian, alasan; eksposisi, aransemen, karya sastra, komposisi, buku. [perkara ← Skt. prakaraṇa]@51
pakāra@m. bahan penyusun, bahan pembangun, bahan perlengkapan; susunan, persiapan, mode (modus), cara, aspek, seluk-beluk; bahan ramuan; jenis.@51
pakāsati@memancarkan, memaklumkan.@51
pakāseti@(kaus. dari pakāsati )  menunjukkan, memperlihatkan (agāravaṃ pakāseti), menjelaskan, memaklumkan, mengulas.@51
pakiṇṇaka@a.  yang bertaburan [di sana-sini], yang sesekali ada di; aneka macam, khusus, khas, tertentu; ~kathā aneka bahasan.@51
pakka@a.  matang, masak; sudah dimasak, direbus, dipanggang, ranum, bonyok, rusak, membusuk; panas, berpijar; nt. buah, buah matang.@51
pakkamati@berjalan maju, pergi meninggalkan, berangkat pergi, beranjak pergi.@51
pakkosati@memanggil, menyerukan; kaus. pakkosāpeti .@51
pakkha@1. m.  sisi (badan), sayap, kepak; pihak, bagian, faksi, kelompok, pengikut, partisan, sekutu; paruh(-an) (bulan) (sukka-pakkha atau juṇha-pakkha  paruh terang; kāḷa-pakkha atau kaṇha-pakkha  paruh gelap); alternatif, pernyataan, sehubungan dengan merujuk pada; ~jāta m.  yang bersayap, unggas; 2. a.  tampak, jelas, seperti, mirip; 3. m.  orang pincang. [paksa ← Skt. pakṣa]@51
pakkhaka (pakkhika) @ busana yang terbuat dari (bulu) sayap (burung).@51
pakkhandati@memelesat, melontar ke depan, melompat ke.@51
pakkhāleti@mencuci, membasuh, membilas.@51
pakkhika@a.  berkaitan atau merujuk ke paruhan bulan; penopang menuju@51
pakkhitta@(pp dari pakkhipati ) diletakkan di dalam, dilontarkan ke dalam.@51
pakkhipati@meletakkan di dalam, menempatkan di dalam, memasukkan ke dalam, melontarkan ke dalam; meliputi, menyisipkan, menyusun.@51
pageva@adv.  apalagi.@51
paggaṇhāti@merentangkan, menjangkau, memegang, menghadang, mengulurkan, mengangkat, mengambil; menerima, menjaga, mengurus, menyokong, melindungi, merawat, menolong; mengerahkan, mengupayakan, berikhtiar, berupaya, menerapkan, berjuang, bersikeras; añjaliṃ ~ mengangkat sembah.@51
paggaha (paggāha)@m.  usaha, upaya, pengerahan tenaga, daya, kekuatan,perjuangan; kemurahan hati, kebaikan hati, (per)lindungan.@51
paggharati@mengalir (keluar), mengeluarkan (darah), menetes, merembes.@51
paṅgacīra@nt.  meniup seruling daun.@51
pacati@memasak, merebus, memanggang; menyiksa; pass. pacīyati , paccati .@51
pacalāyati@berkedip, berkejap, mengantuk, meralip (amat mengantuk, setengah tidur), luyu, ruyup (berasa ngantuk atau tampak sangat mengantuk).@51
pacāreti@menangani, mempublikasikan, menyiarkan, mengunjungi.@51
paccakkha@a.  “di depan mata”, dapat dicerap indra, nyata, jelas, ada; paccakkhena  secara pribadi; paccakkhato   dari pengalaman pribadi; appaccakkhāya   tanpa melihat atau mengarahkan persepsi (pencerapan); memungkiri, mengingkari.@51
paccakkhāti@mengingkari, memungkiri, menolak, melepaskan.@51
paccati@(pass dari pacati )  direbus, dimasak, disiksa, menderita.@51
paccatta@a.  secara terpisah atau individu, sendiri-sendiri, masing-masing, oleh diri sendiri; adv. paccattaṃ .@51
paccattharaṇa@nt. kain penutup, seprai ranjang atau kursi.@51
paccatthika@a.  lawan, musuh, seteru.@51
paccaya@m.  hal bersandar pada, dasar, sarana, penopang, sara hidup, kondisi, sebab musabab, alasan, landasan untuk; kebutuhan; kepercayaan, keyakinan.@51
paccāgacchati@(paccāgacchati+)   menganggap … sebagai faktor penentu.@51
paccāsati@memohon, meminta, mendoakan.@51
paccāsiṃsāti@mengharapkan, mendambakan, menginginkan, memohon, mengharapkan ganjaran atau imbalan.@51
paccāharati@membawa kembali.@51
paccuṭṭhāti@berdiri, muncul kembali, berdiri menyambut.@51
paccupaṭṭhahati@“berdiri di hadapan”, hadir.@51
paccupaṭṭhāna@nt.  penampilan, manifestasi, kemunculan, pemunculan, fenomena; perawatan.@51
paccupaṭṭhita@(pp dari paccupaṭṭhahati ) dikedepankan, disajikan, ditawarkan, diajukan, diberikan, dekat, siap(-sedia), hadir, ada.@51
pacceka@a.  masing-masing, satu, (berdiri) sendiri, tunggal, sendirian, terpisah, aneka; paccekaṃ adv.@51
pacceti@tiba pada, kembali ke, bersandar pada, memahami (melihat) sebagai, berpandangan.@51
pacchā@adv.  di belakang, setelah, sebelah barat; ~samaṇa  petapa atau bhikkhu yunior yang berjalan di belakang seorang senior dalam suatu perjalanan (sebagai pendamping atau pelayan); ~bhatta usai makan. [pasca ← Skt. paṡcā]@51
pacchijjati@terputus, terpotong.@51
pacchima@a.  yang terbelakang, terakhir, terbuncit, belakangan, di belakang hari; terendah; barat.@51
pacchimaka@a.  yang terakhir, yang terendah, yang paling buncit, yang paling terbelakang.@51
pajahati@meninggalkan, menanggalkan, mengenyahkan, menyingkirkan; pass. pahīyati .@51
pajā@f.  keturunan, anak cucu; penghuni (dunia), makhluk hidup, orang, umat manusia. [praja ← Skt. prajā]@51
pajānāti@mengetahui (secara jelas dan mendalam), menemukan, menyelami, memahami.@51
pajāpati@m.  kepala atau pemimpin tertinggi umat manusia;  f.  “seseorang yang memiliki keturunan”; permaisuri, istri.@51
pajāpatī (pajāpati)@f.  Pencipta (Tuhan) semua makhluk hidup; memiliki keturunan, beranak cucu (banyak), permaisuri, istri utama, istri, nyonya.@51
pajjalati@terbakar, tersulut, membara.@51
pajjota@m.  cahaya, kecemerlangan, lampu, pelita.@51
pajjhāyati@terbakar, rusak binasa, melapuk, mengering, lesu, lunglai; hanyut dalam kesedihan, kekecewaan, atau penyesalan; murung, termenung, termangu; pajjhāyanto sedih, susah, putus asa.@51
pañca@a.  lima.@51
pañcama@a.  kelima, ke-5, V.@51
paññatta@(pp dari paññāpeti ) ditunjukkan, dimaklumkan, disuruh, dirancang, ditetapkan, ditunjuk, ditahbiskan, dinobatkan, disiapkan, disediakan.@51
paññā@f.  pengetahuan atau pemahaman yang mendalam, kebijaksanaan.@51
paññāpeti@memaklumkan, menunjukkan, menunjuk, menempatkan, menetapkan, menentukan; meletakkan, menggelar, memaparkan, menyiapkan, menyediakan.@51
pañha@m.  cara bertanya, penyeledikan, pertanyaan; ~vyākaraṇa  cara menjawab pertanyaan (ada empat yakni ekaṃsa, vibhajja, paṭipucchā, dan ṭhapanīya D iii 229; A i 197 sq; ii 46; Miln 339).@51
paṭa@m.  kain, jubah, pakaian.@51
paṭikacca@sebelumnya, mempersiapkan; mewanti-wanti (paṭigacca ).@51
paṭikaḍḍhanā@f.  hal mendorong.@51
paṭikassati@menarik kembali, mencabut (kembali), melontarkan kembali, mengirim kembali, menyeret kembali.@51
paṭikuṭṭha@a.  dimarahi, ditegur, diomeli, dicela, rendah, hina, dipandang rendah.@51
paṭikkanta@(pp dari paṭikkamati ) pulang dari, kembali dari, mundur.@51
paṭikkamati@balik, kembali, mundur.@51
paṭikkamana@nt.  kembali, mundur, balik kembali.@51
paṭikkūla@a.  berlawanan, menjijikkan; nt. hal menjijikkan.@51
paṭikkhitta@(pp dari paṭikkhipati )  yang ditolak, yang dilarang.@51
paṭigaṇhāti@menyetujui.@51
paṭiggaṇhāti (paṭigaṇhāti)@menerima, mencerap, menanggap, mengambil; kaus. paṭiggaheti .@51
paṭigha@m. nt.  resistansi, hal menangkal, menolak, menentang, menghalau; tak suka, teriritasi, perasaan sebal, marah. (=aniṭṭhaṃ ).@51
paṭighāta@m.  menangkal, menangkis, mencegah.@51
paṭicaya (paṭiccaya)@m.  penambahan, penumpukan, pengumpulan.@51
paṭicca@berdasarkan, dikarenakan, sehubungan dengan, sebab, terkondisi oleh.@51
paṭicchanna@(pp dari paṭicchādeti ) tertutup, terselubung, tersembunyi, tersekat, terpencil.@51
paṭicchādeti@menutupi, menyelubungi.@51
paṭijānāti@mengakui, mengatakan, menyetujui, memaklumkan, menjanjikan, berjanji.@51
paṭiñña@a.  dimaklumkan, membuat percaya, palsu, pura-pura, berlagak seperti; memperkenalkan diri sebagai.@51
paṭiññā@f.  pemakluman, kesepakatan, perjanjian, persetujuan, izin.@51
paṭiññāta@(pp dari paṭijānāti )  disetujui, diakui, dijanjikan.@51
paṭinivattati@kembali lagi, balik kembali.@51
paṭinissagga@m.  pelepasan, penanggalan, penolakan.@51
paṭinissajjati@menyerahkan, melepaskan.@51
paṭinissaṭṭha@(pp dari paṭinissajjati )  dilepaskan, diserahkan.@51
paṭipajjati@menapaki, menyusuri, mengikuti, menjalani, menyusul; mengambil suatu rangkaian tindakan, mengikuti suatu metoda; berniat untuk, mengatur kehidupan sendiri.@51
paṭipaṇāmanā@f.  hal menyorong.@51
paṭipatti@f.  “jalan”, cara, metoda, tindak-tanduk, praktik, pengamalan, perilaku, contoh (teladan).@51
paṭipatha@m.  jalan berlawanan (arah); paṭipathaṃ gacchati  berpapasan.@51
paṭipadā@f.  jalan untuk mencapai suatu tujuan; jalan, cara, praktik, tata cara menuju.@51
paṭipanna@(pp dari paṭipajjati ) (telah) diikuti atau mengikuti, mencapai, menapaki, menyusuri, berperilaku, bertindak, memasuki, memperoleh, meraih.@51
paṭipādeti@(kaus. dari paṭipajjati ) memberi, membuat menjadi, menawarkan, menghadiahkan.@51
paṭipuggala@m.  orang sepantar/sebanjar, individu pengimbang, lawan, rival; apaṭipuggala a.  tanpa lawan, tiada bandingan.@51
paṭipuggalika@a.  yang sepantar/sebanjar, secara individu.@51
paṭipucchati@balik bertanya, menanyakan, mempertanyakan.@51
paṭippassambhati@surut, mereda, menjadi tenang, hilang, terhapus, batal, teranulir.@51
paṭibaddha@a.  terikat pada, terbelenggu, terpikat pada, bergantung pada, menempel pada.@51
paṭibala@a.  mampu, pantas, kompeten, cakap.@51
paṭibujjhati@sadar, bangun, paham, mengetahui.@51
paṭibuddha@(pp dari paṭibujjhati ) sadar, terjaga.@51
paṭibhāna@nt.  pemahaman, penerangan, kecerdasan, inteligensi, kemahiran atau kecakapan berbicara, ketangkasan, kecerdikan.@51
paṭimāneti@menunggu, menunggui, menjaga, menghormati, melayani.@51
paṭimuñcati@menambat, mengikat, membelit, mengelat, membebat, menyangkut.@51
paṭiyādeti@menyiapkan, menyediakan, mengatur, memberi, mempersembahkan; kaus. paṭiyādāpeti  menyuruh menyajikan atau menyiapkan, memberikan, menetapkan, menasihati.@51
paṭirūpa@a.  cocok, pantas, sesuai, serasi; dengan urutan yang tepat, disesuaikan terhadap.@51
paṭilabhati@memperoleh, menerima, mendapat.@51
paṭivattiya@a.  diputar balik, digelinding balik, dihentikan penggelindingannya.@51
paṭiviṃsa (paṭivisa)@m.  bagian, porsi, jatah.@51
paṭivijānāti@mengenali, memahami; menangkap (maksudnya).@51
paṭivijjhati@menembusi, menerobosi, menembusi (mengetahui) secara batiniah, menguasai, memahami.@51
paṭivinaya@m.  penaklukan, penundukan, penanggulangan.@51
paṭivinodeti@menyingkirkan, menanggalkan, meninggalkan, mengusir, membebaskan diri dari.@51
paṭivirata@(pp dari paṭiviramati )  menjauhi, menghindar dari.@51
paṭiviramati@menjauhi, menghindari.@51
paṭivutta@1. dibalas, dijawab, disahut; 2. disemai (ditanam) kembali.@51
paṭivedha@m.  hal menembusi, penembusan, pemahaman, pencapaian, pengetahuan.@51
paṭisaṃyujati@berhubungan dengan, berkaitan dengan; mulai, melibatkan diri.@51
paṭisaṃyutta@(pp dari paṭisaṃyujati )  berhubungan dengan, berkaitan dengan, terlibat@51
paṭisaṃvedeti@mengalami, merasakan, menjalani, mencerap, menyadari.@51
paṭisaṅkhārika@a.  dicadangkan atau digunakan untuk perbaikan.@51
paṭisandhi@m.  penyambungan kembali, penyambung, penyambungan kesadaran.@51
paṭisambhidā@f.  analisis, pengetahuan analitik yakni attha, dhamma, nirutti dan paṭibhāna; nama lain dari Paṭisambhidāmagga, salah satu kitab dari kumpulan kitab Khuddakanikāya.@51
paṭisammodeti@balik memberi salam.@51
paṭisallāna@nt.  penyendirian untuk bermeditasi, penyendirian, pengucilan diri, pemencilan diri.@51
paṭisalliyati@menyendiri, menyepi, mengucilkan diri (untuk bermeditasi).@51
paṭisallīna@(pp dari paṭisalliyati )  menyendiri, pergi menyendiri, memisahkan diri, tenggelam dalam meditasi.@51
paṭisāmeti@merapikan, menyusun, menyiapkan, membenahi, menyimpan.@51
paṭisevati@mengikuti, menapaki, memperturutkan hati, melakukan, mempraktikkan.@51
paṭisevana@nt.  mengikuti, terlibat dalam, hanyut dalam, praktik, penggunaan secara benar.@51
paṭisotaṃ@adv.  menentang arus.@51
paṭissuṇāti@menyahut, menjawab, menyetujui, menjanjikan, mengiyakan.@51
paṭola@m.  petola, ketola (manis) (PED: Trichosanthes dioeca; KBBI: Luffa cylindrica); ketola ular (Trichosanthes anguina). [petola ← Skt. paṭola]@51
paṭṭhahati@menurunkan, meletakkan, menyediakan; kaus. paṭṭhapeti  menyediakan, memberikan, mengeluarkan, menawarkan, mendirikan, membangun.@51
paṭṭhāna@nt.  penegakan, landasan, tumpuan.@51
paṭṭhāya@meletakkan, mulai dari, sejak.@51
paṭhama@a.  pertama, sulung, terdahulu, terkemuka; ~tara adv. yang pertama, yang pertama-tama, pada awalnya. [pertama ← Skt. prathama]@51
paṭhavī@f.  bumi, tanah, lantai. [pertiwi ← Skt. pṛthivī]@51
paṇaka (paṇṇaka)@m.  1. dedaunan hijau, sayur-sayuran; 2. nama sejenis tanaman air; 3. daun yang ditulisi, tiket.@51
paṇamati@membungkuk, menekuk; bungkuk; condong terhadap; kaus. paṇāmeti  membungkukkan, memberi hormat; menekuk, menutup; menyuruh pergi, menolak.@51
paṇidahati@mengusahakan, mengupayakan, menimpakan, mengerahkan, menerapkan, mengarahkan, bermaksud untuk, berhasrat, bercita-cita, mengharapkan, berikrar, mendoakan, merindukan, menginginkan, mendambakan; ger. panidhāya .@51
paṇidhi@f.  cita-cita, harapan, dambaan, doa, ikrar, niat.@51
paṇīta@(pp dari paneti ) a. yang dikenakan, yang diterapkan, yang dikemukakan; unggul, enak, agung, tinggi, luhur, melimpah, mewah, bagus.@51
paṇḍaka@m.  orang kasim.@51
paṇḍita@a.  bijaksana, bijak, pandai, cakap, piawai, cermat, cendekia. [pendeta ← Skt. paṇḍita]@51
paṇḍu@a.  merah atau kuning muda (pucat), kemerah-merahan, abu-abu;  ~palāsa  daun layu.@51
paṇṇa@nt.  daun (terutama daun sirih); ada lima jenis daun yang dianjurkan untuk dipergunakan sebagai obat (nimba, kuṭaja, paṭola, sulasi, dan kappāsika); daun untuk menuliskan huruf, daun bertulisan, surat; sumbangan, derma, warisan, pusaka, pesan; bulu sayap, sayap.@51
paṇṇāsā (paññāsā)@f.  lima puluh.@51
patati@jatuh, lompat, menimpa, turun.@51
patana@a. jatuh, runtuh; nt. hal jatuh, runtuh, mendarat.@51
pati@m.  tuan, juragan, majikan, pemilik, pemimpin, pamong, kepala, penghulu, tokoh; suami, kepala rumah tangga, umat awam. [patih ← Skt. pati]@51
patika@a.  bersuami.@51
patita@(pp dari patati ) jatuh.@51
patiṭṭhahati (patiṭṭhāti)  @berdiri kokoh, mencari dukungan dalam, ditegakkan, dimantapkan, dikukuhkan, ditetapkan, disusun; mengakui; kaus. patiṭṭhāpeti  mendirikan, membangun, memasang.@51
patiṭṭhāna@nt.  hal menambatkan, memasang, penopang, pembantu, landasan, dasar, tumpuan.@51
patiṭṭhita@(pp dari patiṭṭhahati ) tegak dalam, mantap dalam, tersusun, berdiri, disokong, didirikan, bertumpu pada; nt. pengaturan, penyelesaian.@51
patittha@m.  tepi atau pinggir sungai.@51
patta@1. nt. sayap burung, bulu sayap; (helai) daun; 2. m. nt. mangkuk, patta (wadah makanan bhikkhu); 3. (pp dari pāpuṇāti ) a. tercapai, didapatkan, diperoleh, menjadi, sampai pada, dilanda; dengan, setelah, terkuasai; ~ādhāraka m. nt. kaki patta, penyangga patta; ~ānumodana  turut bergembira terhadap apa yang telah didapatkan (jasa-jasa kebajikan); ~āḷhaka takaran mainan; ~kalla a.  sudah siap, sesuai; ~kāla  m. sudah tiba waktunya, sudah saatnya; ~kkhandha a.  dengan “pundak seperti daun”, dengan pundak terjuntai, lesu, putus asa, kecewa, kesal, murung.@51
patti@f. 1.  yang berjalan kaki, pasukan infanteri; 2. perolehan, pencapaian, jasa-jasa kebajikan, manfaat, keuntungan; 3. daun, bagian tumbuhan yang berdaun;  ~dāna  pelimpahan jasa.@51
pattha@m.  suatu tempat terpencil; satu Prastha (suatu ukuran kapasitas), ukuran takaran, = ¼ āḷhaka ; sejenis alat masak yang berisi satu Prastha.@51
pattharati@menebarkan, membentangkan, merentangkan, menyebar (ke), memancar.@51
pattheti@(patthayati ) menginginkan, mendambakan, mendoakan.@51
patha@m.  jalan, cara, modus, saluran.@51
pada@nt.  kata (padaso), frasa, kalimat, larik; peraturan (sikkhāpada), ayat, doktrin agama, ajaran, wejangan, tempat atau keadaan; kaki, telacak, jejak kaki (gopada), jalan, posisi (nakkhattapada); Nibbana; ~ṭṭhāna  nt. pijakan, tumpuan; sebab terdekat (langsung).@51
padakkhiṇā@f.  hal mengarah sisi kanan, berjaln melingkari (sesuatu atau seseorang) dengan senantiasa mengarahkan sisi kanan badan padanya (untuk menunjukkan sikap penghormatan); pradaksina; “yang mengedepankan kanan”, terampil, pandai, cerdas (dalam belajar); beruntung, penuh berkah, berhasil guna baik. [pradaksina ← Skt. pradakṣiṇa]@51
padahati@berjuang, berupaya, berusaha, menantang, berdiri berhadapan.@51
padāḷeti@membelah,  memecah, menusuk, menghancurkan, mencocok, menyobek, menikam, menetas.@51
paduma@nt.  teratai, bunga teratai (Nelumbium speciosum). [padma ← Skt. padma]@51
padesa@m.  tanda atau petunjuk, lokasi, jangkauan, wilayah, daerah, tempat.  [pradesa ← Skt. pradeṡa]@51
padhāna@a.  yang terkemuka; nt.  daya-upaya.@51
pana@dan, namun, dan kini, lantas, selanjutnya, sementara itu, lagi pula, sedangkan, kalau begitu; jadi; evañ ca pana  demikianlah maka; ko pana vādo  apalagi (kalau), tak usah dibilang (kalau); paneva  bisa jadi, bila, akan hal; vā pana  atau lainnya.@51
panasa@m.  nangka (PED & KLIT: Artocarpus integrifolia; KBBI: Artocarpus heterophyllus).@51
paneti@membawa menuju, mengenakan, menerapkan.@51
papa@nt. air; balai air, rumah penderma air.@51
papañca@1. rintangan, hambatan, beban penunda, penunda; 2. ilusi, obsesi, rintangan kemajuan spiritual; 3. hal penyebarluasan, pelipatgandaan, penguluran.@51
papatati@jatuh tersungkur, jatuh, terjatuh dari, roboh, terjatuh kedalam, terjun; aor. papatā .@51
papāta@m.  jatuh; jurang, ngarai, tebing yang curam;  a. jatuh menukik, berujung curam, berakhir mendadak.@51
pappaṭaka@m.  pecahan kecil; serpih; sejenis tanaman air.@51
pabbajati@pergi meninggalkan (kehidupan berumah tangga/keduniawian), pergi bertapa, meninggalkan rumah dan hidup mengembara sebagai seorang petapa.@51
pabbajita@(pp dari pabbajati ) yang telah pergi meninggalkan kehidupan berumah tangga.@51
pabbajjā@f.  meninggalkan keduniawian, menjalankan kehidupan petapa, hal menjadi seorang rahib Buddha (bhikkhu).@51
pabbata@m.  gunung, pegunungan, bukit, batu (karang); ~khaṇḍa  m. nt. jalan pintas sempit di daerah pegunungan; celah patahan pegunungan.@51
pabbateyya@a.  berhubungan dengan gunung, berasal dari gunung, berhulukan gunung.@51
pabbājeti@(kaus. dari pabbajati )  membuat pergi meninggalkan, mengusir; membuat seseorang hidup sebagai seorang petapa atau bhikkhu, membuat seseorang meninggalkan kehidupan berumah tangga; menahbiskan.@51
pabbhāra@m.  lereng, landaian, condong.@51
pabhagga@(pp dari pabhañjati )  dihancurkan, dimusnahkan, ditaklukkan, dikalahkan.@51
pabhāsati@1. bersinar; 2. memberitahu, menceritakan, menyatakan, bercerita.@51
pabhāseti@ (kaus. dari pabhāsati )  menyinari, menerangi, mencerahi.@51
pamatta@(pp dari pamajjati ) lengah, lalai, tidak peduli.@51
pamāṇa@nt.  ukuran, jumlah, banyaknya, bilangan, permana, lama, besar, panjang, batas, baku, definisi, dimensi, sifat. [permana ← Skt. pramāṇa]@51
pamāṇika@a.  membentuk atau mengambil suatu ukuran atau standar, berukuran; orang yang mengukur, hakim, penilai; sesuai (batas) ukuran; memiliki batas ukuran.@51
pamāda@m.  kelengahan, kealpaan, kelalaian, kesembronoan, kelambanan, kekelesaan, ketidakcekatan.@51
pamukha@(pamukha+)   dikepalai buddha. [pramuka ← skt. pramukha]@51
pamuñcati@melonggarkan, melepaskan, melontarkan, memancarkan; menaggalkan, meninggalkan, membebaskan.@51
pamutta@(pp dari pamuñcati )  dilonggarkan, dilepaskan, dilontarkan; dibebaskan, terlepas.@51
payutta@(pp dari payuñjati ) tercantol pada; diterapkan, diupayakan, dikerahkan, diabdikan pada, sibuk dalam, terlibat dalam; dapat diterapkan; dapat dijalankan; terencana, disusun, dilakukan, ikhtiar.@51
payoga@m.  cara, sarana, alat; persiapan, usaha, pekerjaan, kesibukan, pelaksanaan, urusan, tindakan, praktik, kesempatan, kejadian;  ekena payogena sekaligus.@51
payojana@nt.  memikul (mengurus), urusan; perjanjian; ketetapan, ketentuan; tujuan; hal menerapkan, memakai atau menggunakan.@51
payojāna@nt.  hal menerapkan, memakai atau menggunakan.@51
para@a.  lain, yang lain (ko paro siapa lagi, siapa yang lainnya), asing, di pihak/sisi lain dari, yang di seberang (paragaṅgāya); di atas (sana), nun jauh di sana (paraloko dunia mendatang); paro … paro  satunya ….. lainnya …..; paro paraṃ satu sama lainnya; pare  (pl.)  pihak yang di seberang sana, penganut paham non-Buddhis; parena  setelah itu; pare  (lok.) sebelumnya, di masa mendatang, hari sebelum kemarin, hari setelah besok; paraṃ adv. menjauh (dari), setelah, lebih lanjut, di pihak atau sisi lain dari, lebih dari itu (titthiyā hi cattāḷīsaṃ yeva kappe saranti na tato paraṃ);  paraṃ maraṇā setelah meninggal; ito paraṃ dari sini, setelah ini, selanjutnya, lantas.@51
parakkama@m. upaya, usaha, perjuangan, kegigihan.@51
parakkamati@maju, berupaya, berikhtiar, berusaha, menganju(r), melakukan.@51
paradārika@m.  penggoda istri orang lain, pezina.@51
parama@a.  yang ter…, yang tertinggi, yang terbaik, superior; ~ttha yang paling hakiki.@51
paramparā@f.  “setelah yang lainnya”, rangkaian, berturut-turut, beruntun, bersambung.@51
paravāda@m. perkataan atau ujaran atau ajaran (pihak) lain, desas-desus masyarakat; pandangan (pihak) lain (sesat).@51
parasuve@adv.  lusa.@51
parahiyyo (parahīyo)@adv.  kemarin dulu.@51
parājeti@mengalahkan, menaklukkan, mencundangi; mengecundangi atau mempecundangi (menjadikan kalah);  pass. parājīyati  atau parajjhati .@51
parāmasati@menyentuh, menggenggam, berhubungan, mengambil, melekat, menjadi korban, meraba-raba, memegang-megang, menggerayangi.@51
parāmasana@nt.  hal menyentuh, menggenggam, memegang, mengambil, meraba.@51
parāmāsa@m.  penyentuhan, penggenggaman, kemelekatan, di bawah pengaruh.@51
parāyana (parāyaṇa)@nt. tujuan akhir; sokongan, kedamaian; penembusan, pengakhiran, sasaran, melekat pada, menargetkan, mencari dukungan dalam; mengarah pada, akan terlahir di.@51
parikaddhaṇa@nt. menarik, menyeret, menghela.@51
parikanta@a.  membelah, menyobek.@51
parikappa@m.  persiapan, niat, perencanaan, persekongkolan, strategi, siasat; asumsi, pengiraan, praanggapan, dugaan, sangkaan.@51
parikamma@nt.  “mengerjakan sana-sini”, hal membereskan, menyiapkan, mengatur, membenahi, menata, menyusun, mengadakan pelayanan (terutama menggosok dengan minyak), persiapan, awal; parikammaṃ karoti mempersiapkan, mengadakan; ~°  dengan.@51
parikkamana@nt.  berjalan mengelilingi.@51
parikkhaya@m.  aus, susut, lapuk, hilang, berakhir.@51
parikkhāra@m.  “yang mencakup semua”, dandanan, barang perlengkapan, keperluan, barang tambahan, aksesori, peralatan, perkakas; perlengkapan atau keperluan yang meliputi cīvara (jubah), piṇḍapāta (makanan derma), senāsana (kediaman atau peristirahatan), dan gilāna-paccaya-bhesajja (obat-obatan); kadang-kadang juga merujuk ke delapan perlengkapan bhikkhu (aṭṭhaparikkhāra) yakni ticīvara (tiga jubah), patta (patta), vāsi (pisau cukur), sūci (jarum jahit), kāya-bandhana (ikat pinggang), dan parissāvana (saringan air).@51
parikkhitta@(pp dari parikkhipati )  dikelilingi, ditebarkan, dilapisi, dilingkupi, dipagari, dililiti, dibalut.@51
parikkhipati@melingkari, membalut, meliliti, mengelilingi.@51
parigaṇhāti@memeluk, menggenggam, mengambil, memegang, menangkap, meraup; menjelajahi; kaus. pariggaheti memeluk, memahami, memiliki, menguasai, menjelajahi, menyelidiki, menemukan; terdiri dari; merangkum.@51
pariggahita@(pp dari parigaṇhāti )  diambil, digenggam, dipegang, didatangi, diduduki, dikuasai, dirasuki, dimiliki, dipunyai.@51
paricaya@m.  pengakraban, pengenalan, latihan; akrab dengan, mahir dalam.@51
paricarati@bergerak ke sana-sini, berjalan ke sana-sini, mondar-mandir, berkeluyuran, pindah, mengusahakan, mengurus, memelihara, merawat, melayani; menyembah; mengembara, menjelajahi, menyenangkan (memuaskan) indria sendiri, menghibur diri, bersenang-senang, bermain-main, berolahraga.@51
paricāreti@(kaus. dari paricarati )  melayani, merawat, menghormati, menyembah; menghibur diri, bersenang-senang, mendapat kenikmatan.@51
paricita@a.  1. dikumpulkan, ditambahkan; 2. diketahui, dicermati, terbiasa, terampil, dikenal, akrab dengan, senantiasa diamalkan.@51
paricca@‘berjalan mengelilingi’, melingkupi, menangkap, memahami, menemukan, mengerti.@51
pariccajati@melepaskan, menanggalkan, merelakan, meninggalkan, mengikhlaskan.@51
pariccatta@(pp dari pariccajati )  dilepaskan, ditinggalkan, dibuang.@51
pariccāga@m.  hal merelakan, mengikhlaskan, melepaskan, menanggalkan, mengorbankan (misalnya istri, anak, kerajaan, jiwa, dan anggota badan); biaya (pengeluaran); pemberian atau derma (untuk orang miskin), kemurahan hati.@51
parijana@m.  “orang di sekeliling”, pelayaan, pengikut, pembantu, iring-iring, abdi.@51
parijānāti@betul-betul mengetahui˴ memahami˴ mengerti.@51
pariññā@1. f.  pengetahuan yang akurat atau tepat benar, pemahaman, pengertian utuh; 2. memiliki pengetahuan atau pengertian penuh (ger. dari parijānāti ).@51
pariññāta@(pp dari parijānāti ) yang telah betul-betul diketahui˴ dipahami˴ dimengerti.@51
pariññeyya @(grd dari parijānāti )  a.  yang seyogianya betul-betul diketahui˴ dipahami˴ dimengerti.@51
pariṇāma@m.  perubahan, transformasi, pencernaan; matang; perjalanan, perkembangan (pengembangan), pemenuhan, nasib, takdir.@51
pariṇāmana@nt.  diubah atau dibelokkan (ke diri sendiri).@51
pariṇāyaka@m.  pemimpin, pembimbing, penutur, penasihat.@51
parittaka@m. kecil, sedikit, secuil, sepele, remeh.@51
parittāṇa@nt. perlindungan, pengamanan, naungan, penangkal.@51
paridaṇḍa@a.  “dikitari tongkat pemukul”, terhukum, sedang dihukum, dilindungi denda.@51
paridahati@mengenakan/memakai (pakaian).@51
parideva@m.  ratap-tangis.@51
pariniṭṭhita@a.  sudah diselesaikan, dibereskan, dikerjakan, dituntaskan.@51
paripakka@a. (cukup) matang, masak, berkembang; terlalu matang, membusuk.@51
paripatati@jatuh.@51
paripantha@m. seputaran, pinggiran, perbatasan, sempadan; rintangan, halangan, hadangan, hambatan, ancaman bahaya.@51
paripāka@m.  matang, masak, berkembang, sempurna; lapuk.@51
paripuñchati@menyeka, membersihkan, menjatuhkan.@51
paripuṇṇa@(pp dari paripūrati)  a. (cukup) penuh, lengkap, utuh, selesai. [paripurna ← Skt. paripūrṇa]@51
paripūrati@menjadi penuh, lengkap, sempurna; kaus. paripūreti memenuhi, menambahkan.@51
paribbaya@m.  pendapatan, gaji, upah, biaya, pengeluaran.@51
paribbāja(ka)@m.  pengelana, pengembara; petapa pengembara yang menganut berbagai pendapat terhadap dunia ini dan suka berdebat (ada enam yang sangat terkenal pada zaman Sang Buddha).@51
paribhāvita@(pp dari paribhāveti )  terserap, tersusup, dirawat, disuplai, diisi dengan, terlatih, teratur, dicampur dengan, diperkuat, dierami.@51
paribhāveti@merembesi, menyusup, merawat, menyuplai (membekali).@51
paribhāsa@m.  celaan, kecaman, makian, cacian. [peribahasa ← Skt. paribhāṣā]@51
paribhāsati@memaki, menghardik, mencemarkan nama baik.@51
paribhinna@(pp dari paribhindati )  terpecah, tercerai-berai, dipecah-belah, dibelah, dijelek-jelekkan.@51
paribhuñjati@menikmati, menggunakan, menikmati penggunaan dari, menghayati; memurnikan, membersihkan.@51
paribhoga@m.  penggunaan (theyyaparibhoga), penikmatan; makanan; barang gunaan/nikmatan, barang milik (paribhogacetiya). [periboga ← Skt. paribhoga]@51
paribhojaniya@nt.  air pencuci, air pembasuh (pembilas).@51
parimajjati@mengusap, menyentuh, menyeka, menggosok.@51
parimaṇḍala@a.  bulat, bundar, melingkar, mengesankan; lengkap, benar, menyenangkan.@51
parimukha@a.  berhadapan, di depan, di muka; nt. adv. parimukhaṃ  di depan, di muka.@51
pariyatti@f.  kelayakan, kecukupan, kepantasan, hal memadai, kemampuan, kesanggupan, kecakapan, kepandaian; kecakapan dalam Kitab Suci, hal mempelajari (menghapal) Kitab Suci; Kitab Suci; ~dhamma m.  yang tercakup dalam mempelajari Kitab Suci.@51
pariyanta@m.  akhir, batas, pinggiran, puncak (maksimal).@51
pariyāgāra@a.  dikelilingi sepenuhnya dalam rumah, dilingkupi paviliun.@51
pariyādāna@nt.  habis, terambil semua, tercakup.@51
pariyādāya@ (ger. dari pariyādati ) (amat) mencengkam (=sabbato ), memikat, memesona.@51
pariyāpajjati@diselesaikan.@51
pariyāpanna@(pariyāpanna+)   yang telah dimasukkan ke dalam patta, yang berada di dalam patta); ulung, pandai, menguasai.@51
pariyāpuṇāti@mempelajari, menguasai, menyelami, mengetahui (melakukan sesuatu), mampu untuk.@51
pariyāya@m.  putaran/giliran (Kassa nu kho ānanda ajja pariyāyo bhikkhuṇiyo ovadituṃ), jalan, jalur; cara (iminā pariyāyena veditabbaṃ  itu seyogianya dipahami secara demikian), aspek; kebiasaan (cetopariyāya); diskusi, wejangan (madhupiṇḍika-pariyāyo tveva naṃ dhārehi), metoda, alasan, sebab, dalih, dasar, sinonim, kualitas. [Menurut Buddhaghosa, pariyāya mengandung tiga arti : desanā (ajaran, wejangan), vāra (giliran atau putaran) dan kāraṇa (sebab, alasan, cara, metoda).]@51
pariyāyena@menurut cara pengajaran dalam Suttanta; dengan menggunakan bahasa perlambang, kiasan atau analogi.@51
pariyāhanana@nt.  pembenturan, penghantaman.@51
pariyesati@mencari, melihat, menyelusur, mendambakan, mengharapkan.@51
pariyodāta@a.  sangat bersih, murni; sangat pandai, terampil, unggul, ulung.@51
pariyonaddha@(pp dari pariyonandhati )  a.  yang tertutup, terselubungi, terbungkus.@51
pariyonandhati@mengunci, menempatkan di atas, menutupi, menyelubungi.@51
pariyosāna@nt. bagian akhir; kesempurnaan.@51
pariyosāpeti@memenuhi, menyelesaikan, membereskan, menuntaskan.@51
pariḷāha@m.  pembakaran, kobaran api, demam, demam nafsu, sakit paru-paru; kesukaran, kesakitan.@51
parivaṭṭa@nt.  putaran, ronde.@51
parivattaka@m.  putaran.@51
parivattati@membalik, memutar, pindah; mengubah.@51
parivasati@berdiam, tinggal, berada dalam (menjalani) masa percobaan.@51
parivāra@m.  kerubutan, pengiring, pendamping, pengikut, rombongan, pariwara; pengagung, pengiring atau milik lambang keagungan, gengsi, martabat; bahan-bahan, ramuan, aksesori, pelengkap, perlengkapan; nama kitab terakhir dari Vinaya Piṭaka. [pariwara ← Skt. parivāra]@51
parivāsa@m.  persinggahan, hal berdiam atau tinggal; masa percobaan.@51
parivitakka@m. refleksi, meditasi, pikiran, pertimbangan, perenungan (cetaso parivitakka perenungan batiniah).@51
parivisati@melayani (dengan makanan), meladeni, menghidang, menyajikan, menjamu.@51
parivuṭṭha (parivuttha)@(pp dari parivasati )  telah berdiam atau tinggal (sekian lama), telah hidup di bawah (menjalani) masa percobaan.@51
parivuta@(pp dari pari + vṛ) dikelilingi, dikerumuni, dikerubuti, dikemas.@51
pariveṇa@nt.  yang menjadi bagian dari suatu benteng, istana dan bagian-bagiannya; sel, bilik kecil, ruangan, lingkungan.@51
parisaṅkā@f.  kecurigaan, khawatir, was-was.@51
parisaṅkita@(pp dari parisaṅkati )  dicurigai, mencurigai, khawatir, takut.@51
parisā@f.  kerumunan orang, orang-orang di seputar, kelompok, masyarakat, kalangan, grup, komplotan, kumpulan, himpunan, peguyuban, perkumpulan, perserikatan, orang banyak, persekutuan, pertemuan, majelis. [parisada ← Skt. pariṣad)@51
parisuddha@a.  bersih, jernih, murni, sempurna.@51
parisedita@(pp dari parisedeti ) dipanasi, dierami, dimatangkan, dihangati.@51
parisedeti@mengerami, memanaskan dengan uap, mematangkan, duduk mendekam, duduk menderam.@51
parisodheti@membersihkan, memurnikan.@51
parissāvana@nt.  penyaring air, saringan, filter.@51
parihaṭa (parihata)  @(pp dari pariharati ) dikelilingi oleh, dilingkupi; sukha~  diliputi keberuntungan, diliputi kebahagiaan.@51
pariharati@menjaga, merawat, melindungi, mengayomi, menaungi, memelihara; membawa serta, membawa berkeliling, mengelilingi, beredar, menyembunyikan, menggelapkan, mengelak dari.@51
parihaseti@menertawai, mengolok-olok.@51
parihāra@m.  perhatian, penjagaan, perlindungan, pengasuhan; kehormatan, hak istimewa, martabat; (tanah) seputar atau sekeliling; pengepungan, penyerangan; penghindaran, pengelakan; ~patha  m. permainan galasin, “hopscotch“. [pelihara ← Skt. parihāra]@51
palāyati@melarikan diri, lari pergi.@51
palāla@m. nt.  jerami.@51
palita@a. abu-abu, kelabu.@51
palobheti@menginginkan, mendambakan, serakah terhadap.@51
pallaṅka@m.  bersila; dipan; pallaṅkaṃ ābhujati  (duduk) bersila.@51
pallatthikā@f.  (duduk) bertinggung (duduk dengan lutut terangkat ke atas seperti berjongkok; duduk melipat kaki seperti anjing duduk); berambin (lutut) [duduk dengan tangan disengkelitkan di muka lutut].@51
pallala@nt.  rawa, paya; kolam atau telaga kecil.@51
pavattati@bergerak maju, bergelinding, mengalir, memutar; ada, eksis, berlangsung, menghasilkan.@51
pavattana@a. nt.  hal bergerak maju, bergelinding, memutar, melaksanakan, melakukan; bermanfaat; eksis.@51
pavatti@1. bentuk aorist dari pavattati ; 2. kejadian, insiden, berita, perwujudan.@51
pavatteti@(kaus. dari pavattati ) mendorong, menggerakkan, menggelindingkan, memutar; menyebabkan, menghasilkan, membangkitkan; memberikan; melanjutkan, mempraktikkan; mondar-mandir, mempertunjukkan, melaksanakan, menjalankan, menyelenggarakan, mengamalkan.@51
pavara@a.  terunggul, mulia, terkemuka.@51
pavāta@nt.  aliran udara, hembusan angin, badai, gelora.@51
pavijjhati@melempari, melontarkan.@51
paviṭṭha@(pp dari pavisati )  dimasuki, masuk, dikunjungi.@51
pavisati@pergi ke, memasuki.@51
pavuttha@ (pp dari pavasati )  berdiam atau tinggal di luar (atau jauh dari) rumah; ~jāti orang yang tidak termasuk dalam kasta apa pun; ~patikā itthi  seorang wanita yang suaminya tidak berdiam di rumah (sedang merantau atau bepergian).@51
paveṇi@f.  kepang rambut; tikar, penutup; adat, tradisi, kebiasaan; silsilah, keturunan, ras.@51
pavedeti@memaklumkan, menyatakan, mengungkapkan, menyampaikan.@51
pavesana@nt.  hal masuk, mulai, awal pemasukan; penerapan; cara masuk;  a.  mampu masuk.@51
paveseti@(kaus. dari pavisati ) membuat masuk, membolehkan masuk, mengantar; menyediakan, memasok, memperkenalkan, memperoleh, menerapkan pada.@51
pasaṃsati@berterus terang, menyanjung, memuji, mengakui, berkenan.@51
pasattha (pasaṭṭha)@(pp dari pasaṃsati )  dipuji, disanjung, diagungkan.@51
pasanna@1. (pp dari pasīdati ) jernih, bersih, terang, cerah; bahagia, gembira, senang; tenteram, damai, puas, percaya, yakin, saleh, baik, bajik; 2. mengalir keluar, mengucur.@51
pasambheti@(kaus. dari passambhati ) menenangkan; ppr. passambhayaṃ .@51
pasayha@(ger. dari pasahati )  menggunakan kekerasan, dengan kekuatan.@51
pasavati@mendatangkan, melahirkan, menimbulkan, menghasilkan,  menimbun.@51
pasahati@menggunakan kekuatan atau kekerasan, menekan, menaklukkan, menundukkan, mengatasi.@51
pasāda@m.  kejernihan, kecemerlangan; kegembiraan, kepuasan, kebahagiaan, kedamaian batin, keyakinan, tulus-yakin, ketenteraman, ketenangan, transparan; ~bhañña ungkapan keyakinan.@51
pasādhana@nt.  hiasan, dekorasi, ornamen, dandanan.@51
pasādheti@menghiasi, memperindah, mendandani.@51
pasārita@(pp dari pasāreti )  merentangkan, membentangkan, memaparkan, menggelar, menawarkan.@51
pasāreti@mendorong, melepaskan; merentangkan, membentangkan, menggelar, menawarkan.@51
pasibbaka@  m. nt.  kantung.@51
pasīdati@menjadi terang/bening, mencemerlangkan, dimurnikan, akur, berkenan; jelas dan tenang, menjadi tenteram, meyakini.@51
pasuka (pasu)@m.  ternak, lembu, sapi.@51
pasuta@a.  melekat pada, berniat akan, melakukan, mengikuti.@51
passa@1. melihat, orang yang melihat; 2. m. nt. sisi, samping, sayap, lereng.@51
passati@melihat, menyaksikan, menemukan, mengetahui, menyadari, memahami, mencari.@51
passaddha@(pp dari passambhati) a.  tenang, diam, kalem, damai, hening.@51
passaddhi@f.  ketenangan, kedamaian batin, keheningan.@51
passambhati@menenangkan, diam, tenang, damai.@51
passasati@menghembuskan napas.@51
passāva@m.  air kencing, air seni, kemih; ~magga lubang kemaluan.@51
pahaṭṭha@(pp dari pahaṃsati) 1. dipukul, dihantam, ditempa; 2. gembira, bahagia, bersuka cita.@51
paharati@memukul, menghantam, menggebuk, mendera, menyerang; kaus. paharāpeti  menyuruh atau membuat diserang, mengenakan, menghubungkan, mengaitkan.@51
pahāna@  nt. hal meninggalkan, menanggalkan, melepaskan, mengenyahkan, menyingkirkan, menghindari, menolak.@51
pahāra@m.  1. pukulan, hantaman, tonjokan, gebukan, deraan, benturan; 2. waktu jaga (= yāma ).@51
pahiṇati@mengirim, mengutus.@51
pahita@(pp dari padahati ) dikirim; gigih, bersemangat, bertekad bulat.@51
pahitatta@m. kegigihan, tekad bulat.@51
pahīna@pp dari pajahati) telah ditinggalkan, ditanggalkan, dienyahkan, dihancurkan, disingkirkan.@51
pahīyati@(pass. dari pajahati ) ditinggalkan, ditanggalkan, dienyahkan, disingkirkan, lenyap, hilang, memudarkan.@51
pahūta@a.  cukup, banyak, berlimpah, lumayan.@51
pahoti@mengeluarkan, menimbulkan, memunculkan; [bersama inf.] cukup, sesuai, mampu.@51
pākata (pākaṭa)@a. umum, biasa; tak terkendali, liar, vulgar, bersimaharajalela, terbuka, nyata, tersingkap, diketahui umum, dikenal luas; pākataṃ karoti menyingkapkan.@51
pākāra@m.  tembok pengeliling, didirikan sebagai penghalang dan pelindung, pagar, kubu, benteng.@51
pācittiya@sejenis pelanggaran winaya yang harus ditebus atau diakui di depan seorang bhikkhu. Pelanggaran ini termasuk pelanggaran ringan (lahukāpatti).@51
pācīna@a.  timur.@51
pājeti@mengendarai, berkendaraan, berwahana; melempar (dadu).@51
pāṭikulyā (pāṭikulyatā)@f.  hal memuakkan, hal menjijikkan, hal tidak menyenangkan, hal menyebalkan.@51
pāṭipuggalika@a.  bersifat individu.@51
pāṭimokkha (pātimokkha)@nt.  kumpulan peraturan yang harus dipatuhi para bhikkhu, perangkat asas dasar pengamalan ajaran.@51
pāṭihāriya@a.  mencengangkan, menakjubkan, luar biasa, istimewa; nt. keajaiban, kekuatan gaib, mukjizat.@51
pāṭha@m.  bacaan, teks, wacana, kalimat, lektur, ayat.@51
pāṇa@m.  napas, kehidupan, makhluk hidup.@51
pāṇaka@a.  yang hidup, makhluk hidup; ulat, serangga, kutu.@51
pāṇi@m.  tangan.@51
pāṇin@a.  bernyawa, makhluk hidup.@51
pāta@m.  jatuh; lempar, lemparan.@51
pātavyatā@f.  keruntuhan, kejatuhan, penjatuhan, perontokan, hal terperosot ke dalam.@51
pātāpeti@menjatuhkan, menyuruh melakukan abortus.@51
pātī (pāti)@f. mangkuk, wadah, patta.@51
pātubhāva@m.  kemunculan, pemunculan, perwujudan.@51
pātur@tampak, terungkap, muncul; pātukaroti memunculkan;  pātubhavati muncul.@51
pāteti@menjatuhkan, melemparkan; membunuh, menghancurkan, memancung (memenggal).@51
pāto@di pagi hari.@51
pāda@m. nt.  kaki, langkah, telapak kaki, landasan atau dasar; seperempat dari sesuatu (dari syair misalnya, baris); mata uang (logam) ( = 5 māsaka).@51
pāna@m.  minuman; ~āgāra  nt. kedai minuman.@51
pānīya (pāniya)@a. nt.  yang dapat diminum; minuman, air minum.@51
pāpa@a.  jahat, buruk, nista, berdosa, brengsek; tak subur; nt. kejahatan, kesalahan, dosa. [papa ← Skt. pāpa]@51
pāpaka@a. buruk, jahat, nista, berdosa, brengsek, rendah.@51
pāpuṇāti@mencapai, meraih, memperoleh, tiba pada, menguasai, menggenapi, mencukupi.@51
pāpeti@1. memburukkan, menjelek-jelekkan, membuat malu; 2. (kaus. dari pāpuṇāti ) membuat mencapai, membawa menuju.@51
pāmaṅga@nt.  pita, pembalut, rantai.@51
pāmojja (pāmujja)@nt.  suka-cita, kegembiraan, senang, girang.@51
pāyeti@(kaus. dari pibati )  membuat terminum, memberi minum, meminumkan, mengairi.@51
pāripūrī@f. pemenuhan, penyelesaian, penyempurnaan, perwujudan, pelaksanaan.@51
pārisuddhi@f.  hal murni, kemurnia, pemurnian, kesucian, penyucian.@51
pāra@a.  di sana, seberang sana, lewat; nt. seberang sana; pārato  dari sisi lain.@51
pāramī@f.  kesempurnaan; dalam J. 1:73 dan DhA. 1:84 disebutkan ada sepuluh yakni dāna, sīla, nekkhamma, paññā, viriya, khanti, sacca, adhiṭṭhāna, mettā, dan upekkhā.@51
pārājika@m.  orang yang telah melakukan pelanggaran sangat serius terhadap peraturan bagi para bhikkhu; dia yang telah takluk.@51
pāricariyā@f.  pelayanan, peladenan, penghormatan.@51
pāruta@(pp dari pārupati )  tertutup, berpakaian.@51
pārupati@menutupi, mengenakan pakaian, menyelubungi, menudungi, mengerudungi.@51
pālaka@m.  penjaga, penggembala.@51
pāḷi (pāli)@f.  garis, deret; teks, babon (naskah asli, naskah sumber) yang bukan Aṭṭhakathā ; bahasa Pali, bahasa yang berhubungan erat dengan bahasa Māgadhī ; ~bhāsā  bahasa babon.@51
pāvacana@nt.  kata, sabda (Buddha); zaman pembabaran Dhamma.@51
pāvadati (pavadati)@menyatakan, memberi tahu, memperlihatkan, menyampaikan.@51
pāvāra@m.  mantel, jubah; pohon mangga.@51
pāvuraṇa@nt.  mantel, jubah (penghubung).@51
pāsa@m.  jerat, pengikat, belenggu; tombak, lembing.@51
pāsaka@m.  ikatan simpul; lemparan; batu dadu.@51
pāsāṇa@m.  batu.@51
pāsāda@m.  panggung tinggi, podium tinggi; bangunan yang berdiri di atas fondasi yang tinggi, teras; pancapersada, persada; istana; bangunan yang besar dan panjang, bangunan bertingkat; tanah atau landasan yang lebih tinggi daripada tanah sekelilingnya. [persada ← Skt. prāsāda]@51
pāsādika@a.  menyenangkan, bagus, seronok (menyenangkan hati; sedap dilihat, didengar dsb), ramah, nyaman, kebeningan, kejernihan.@51
pāsuḷa@m.  rusuk.@51
pāhuṇa@m.  tamu, suguhan untuk tamu, hadiah.@51
pāhuṇeyya@a.  layak/patut menerima suguhan.@51
pāheti@mengirim, mengutus.@51
pi@☞  api@51
piṭaka@m.  keranjang; kumpulan kitab suci.@51
piṭṭhi (piṭṭhī)@f.  1. punggung, bagian atas, susur; piṭṭhito  adv. dari (di) belakang; piṭṭhito anubandhati  mengikuti (menguntit) dari belakang; piṭṭhito karoti  meninggalkan, membelakangi; piṭṭhito piṭṭhito  sangat dekat di belakang, ketat, rapat.@51
piṭṭhika@a.  berpunggung.@51
piṇḍa@m.  gumpalan, bulatan; gumpalan makanan, makanan derma dalam bentuk bulatan; ~cārika  m.  orang yang pergi berpindapata; ~pāta  m. makanan derma (yang diterima dalam patta), pindapata; hal berpindapata; ~pātika  m. orang yang hanya menyantap makanan yang diterima dalam pattanya (yang hanya makan dari hasil pindapata).@51
piṇḍaka@m.  makanan (derma); na piṇḍakena kilamati  tidak kekurangan makanan; ukka-piṇḍaka  segerombolan serangga atau kutu.@51
pitar@m.  ayah.@51
pitāmahā@m.  kakek.@51
pitta@(pitta+)   cairan empedu; bengkakan, kerumunan; kandung kemih.@51
pithīyati (pithiyyati)@(pass. dari pidahati )  ditutupi, dihalangi, dirintangi, menutup.@51
pidahati@menutup.@51
pipāsā@f.  kehausan, kelaparan, keinginan, dambaan, hasrat, haus-damba.@51
piya@a.  yang dikasih, disayang; menyenangkan, disukai, berkenan di hati, kinasih (sangat dikasihi).@51
pilandhana (piḷandhana)@nt.  menghiasi, berhiaskan, perhiasan.@51
pilotikā@f.  sepotong kain kecil, secarik kain, pembalut (perban).@51
pivati@(pibati ) minum, menenggak, meneguk.@51
pisati@(piṃsati ) menggiling, melumatkan, meremukkan, menghancurkan.@51
pisuṇa@a.  memfitnah, mengadu domba, bergunjing.@51
pīṭha@nt.  bangku, kursi bersandaran tegak, dipan (lebih pendek dari ranjang, tetapi tidak sampai berbentuk persegi).@51
pīṭhaka@m.  kursi, bangku (tak bersandaran), dipan.@51
pīta@1. (pp dari pivati ) telah diminum, dibasahi, diresapi, dirembesi; 2. a. kuning, emas, kuning kecoklatan.@51
pītaka@a.  kuning.@51
pīti@f.  kegembiraan, kegiuran (batin) [bukan perasaan tetapi sebagai suatu wujud reaksi batin].@51
pīna@a.  gemuk, gembung.@51
pīḷita@(pp dari pīḷeti )  tergilas, tertekan, ditindas, terdesak, dilanda, diimpit, dianiaya, diganggu, diusik.@51
pīḷeti@menekan, menindas, memberati, memencet, mengimpit, menggilas, menundukkan, menganiaya, melanda, mengganggu.@51
puggala@m.  individu, perorangan, orang, pribadi, sifat, jiwa.@51
pucimanda@nama pohon (Azadirachta indica); pohon nimba.@51
pucchati@bertanya, mempertanyakan; mengundang, menawarkan, memberikan kepada seseorang, bertanya dengan; pass. pucchīyati .@51
pucchā@f.  pertanyaan.@51
puñja@m.  onggokan, tumpukan, pumpunan; ~kita a. onggokan, tumpukan.@51
puñña@nt.  kebajikan, jasa, jasa kebajikan. [punya/punia ← Skt. puṇya]@51
puññavant@a.  memiliki jasa-jasa kebajikan.@51
puṇḍarīka@nt.  teratai putih.@51
puṇṇa@a.  penuh. [purna ← Skt. pūrṇa]@51
putta@m.  putra; anak, keturunan. [putra ← Skt. putra]@51
puttaka@m.  putra, anak kecil; burung belia.@51
puthu@1. a.  secara terpisah, masing-masing; adv.  masing-masing; puthageva  masing-masing; 2. menghampar, banyak, beraneka, beragam, luas, kebanyakan; ~sīlā  f. lempengan batu.@51
puthujjana@m.  manusia biasa, orang kebanyakan, orang awam (yang belum melihat empat Ariyasacca).@51
puthula@a. lebar, luas, lapang, datar.@51
puna@lagi; puna  caparaṃ   dan juga, kemudian dari itu, lagi pula, selain itu.@51
punabbhava@m.  punarbhawa, kelahiran kembali.@51
puppha@nt.  bunga, kembang, puspa; darah (menstruasi). [puspa ← Skt. puṣpa]@51
pupphati@mekar, mengembang.@51
pubba@a.  sebelumnya, terdahulu, awal, terlebih dahulu; pubbaṇha pagi hari; ~bhāsin  yang menegur pertama, yang pertama berbicara. [purwa/purba ← pūrva]@51
pubbaṅgama@m.  berjalan di depan, mendahului; dikendalikan atau diarahkan oleh, didahulukan, mengawali.@51
pubbaṇṇa@m. serealia terawal, serealia mentah, padi-padian; terdiri dari tujuh jenis : sāli (padi gogo, padi ladang, padi huma), vīhi (beras merah, beras coklat, beras pirang), yava (barli), godhūma (gandum), kaṅgu, varaka, dan kudrūsaka.@51
pubbarattāpararattaṃ@masa lalu dan masa mendatang, segenap waktu, selalu, senantiasa.@51
pubbenivāsa@m.  kediaman atau keadaan dalam kelahiran lampau.@51
pura@1. sebelum; 2. nt.  kota, benteng, kediaman, rumah, bagian dari rumah; tubuh.@51
purato@di depan (dg gen.), sebelum; purato  purato  setiap kali di depan, di depan setiap (masing-masing), terus-menerus di depan.@51
purā@sebelumnya, di masa sebelumnya, di masa lampau.@51
purāṇa@a.  dahulu kala, masa lampau, tua, renta, bekas, usang; sebelumnya, terdahulu, mantan.@51
purima@a.  sebelumnya, terdahulu, lampau.@51
purisa@m.  orang, laki-laki, manusia; pelayan, jongos.@51
purisaka@m.  orang-orangan; a. bersama seorang lelaki.@51
pure@sebelum, di depan, sebelumnya, terdahulu; puretaraṃ  adv. pertama, terdepan.@51
purekkhāra@m.  bertujuan untuk, dimaksudkan untuk; hal mempersembahkan, menjunjung.@51
pūga@nt.  onggokan, massa, jumlah banyak;  m. persekutuan, peguyuban, perserikatan; sirih, pinang.@51
pūjanā@f.  penghormatan, sembah; persembahan.@51
pūjā@f. penghormatan, pemuliaan, hal berbakti, perhatian, persembahan.@51
pūjita@(pp dari pūjeti )  dihormati, dipuja, dilayani.@51
pūjeti@menghormati, memuja, menyembah, memuliakan.@51
pūti@a. (= kuṇapa-gandha ) membusuk, tengik, busuk menyengat hidung, bangar, kohong.@51
pūra@a.  penuh, penuh dengan, kancap, peres.@51
pūreti@mengisi, memenuhi; kaus.  pūrāpeti  menyebabkan (menyuruh) mengisi.@51
pūva@m.  kue (kering).@51
pekkhati@melihat, memandang, menengok, menatap, mengamati, menonton.@51
pekkhin@a.  melihat, memandang.@51
pecca@setelah meninggal.@51
peta@arwah mereka yang telah meninggal, hantu, setan kelaparan (senantiasa diliputi haus dan lapar; mempunyai wajah seperti sebuah puncak gunung, perut seperti gunung atau lautan, mulut seperti mata jarum, telanjang, hanya ditutupi rambut. Tampak seperti sebuah nyala api. Mengerang memohon belas kasihan manusia.); f.  petī .@51
pettika@a.  pihak ayah.@51
pema@nt.  cinta, kasih, sayang.@51
pemanīya@a.  mengharukan, penuh kasih sayang, ramah, tercinta, menyenangkan.@51
peyya@1. (grd dari pibati ) diminum, diteguk, dapat diminum; 2. =piya  ramah, menyenangkan, berkenan di hati; ~vajja  nt. ucapan yang ramah menyenangkan, ucapan yang berkenan di hati.@51
peyyāla@nt.  pengulangan, silih semilih, rangkaian, rumusan, frasa, cara pengungkapan.@51
pesana@nt.  hal mengirim keluar; pesan; pelayanan; ~kāraka (~kārikā ) pelayan, pembawa pesan. [pesan ← Skt. ?]@51
pesanika@a.  berhubungan dengan pesan, menyampaikan pesan.@51
pesala@a.  menyenangkan, berperilaku baik.@51
pesi (pesī)@f.  gumpalan (daging); potongan, cuil; tahap ke-3 dari perkembangan janin (antara abbuda dan ghana).@51
pesita@(pp dari peseti ) dikirim, diutus, disuruh, diperintahkan, apa yang telah diperintahkan.@51
peseti@mengirim, mengutus; mempekerjakan, menyuruh, memerintahkan;  pass. pesiyati diperintahkan, ditugasi.@51
pokkhara@nt.  tanaman teratai, daun teratai; kulit gendang; sejenis unggas air (bangau).@51
pokkharaṇī@f.  kolam teratai, kolam buatan atau telaga kecil untuk tanaman air.@51
poṭheti (potheti)@memukul, menepuk; memetik jari.@51
poṇa@a.  melandai turun; cenderung (mudah); condong,  mengarah pada (ke), menuju, tirus, runcing, lancip.@51
potaka@m.  hewan muda, hewan belia, anak hewan;  f. potikā ;  ranting kecil, cabang, dahan.@51
potthaka@m. nt.  buku, pustaka; kanvas tempat melukis. [pustaka ← Skt. pustaka]@51
pothujjanika@a.  yang bersifat seperti orang awam, seperti orang kebanyakan, umum, biasa.@51
porāṇa@a.  tua, kuno, purba, dahulu; porāṇā  pl. orang kuno, penulis kuno atau di zaman dahulu.@51
porāṇaka@a. tua, kuno, purba, dahulu; usang, aus.@51
posikā@f.  pemelihara, penyuap.@51
poseti@memelihara, mendukung, mengurus, merawat, mengasuh.@51
phaṇa@m.  tudungan ular; phaṇaṃ karoti menudungi.@51
phandati@berdebar, berkedut, bergetar, guncang, bergerak;  kaus. phandāpeti membuat berdebar.@51
pharati@1. menyebar, merebak (?), memenuhi, menebar, memancarkan, menyiarkan, mengembang, menyusupi, meruyak (?), merasuki (?), meresapi; merangsang; meluas; 2. atthaṃ pharati  berfungsi sebagai.@51
pharasu@m.  kapak (kayu).@51
pharusa@a.  kasar, keras; kejam, bengis, zalim.@51
phala@nt.  buah; buah pelir, biji kemaluan; hasil, akibat, pahala, ganjaran, (buah) kesucian.@51
phalaka@m.  bilah kayu, papan; perisai; lembaran kayu atau kulit kayu yang digunakan untuk membuat pakaian seorang petapa.@51
phalati@terbelah, terburai; menjadi matang atau masak.@51
phāṇita@nt.  jus tebu, air tebu, sari tebu.@51
phāti@f.  bengkak, mengelembung, mengembang.@51
phāleti@(kaus. dari phalati ) membelah, memecahkan, memotong, memenggal, mencabik-cabik, menyobek.@51
phāsu@a.  menyenangkan, nyaman; ~vihāra kenyamanan, ketenteraman.@51
phīta@a.  kaya, makmur.@51
phuṭṭha@ (pp dari phusati )  disentuh, dipengaruhi, dilanda, tertimpa, disinggung, disenggol.@51
phusati@menyentuh; mencapai, meraih.@51
phusana@nt.  hal menyentuh.@51
phoṭṭhabba@nt.  sentuhan, kontak.@51
badara@m. nt.  bidara cina (Zizyphus jujuba).@51
badarī@f.  bidara cina (Zizyphus jujuba).@51
baddha@1. (pp dari bandhati ) terikat, dibebat, terbelenggu, terbalut, terjerat, terperangkap; dikukuhkan, dimantapkan, ditambal, mengidap, mendapat, terikat pada, melekat pada, kecanduan terhadap, dipadukan, diberkas, dibendel, diadoni, diuli, dirangkaikan, dihubungkan, dikumpulkan, dihimpun, ditetapkan, dipastikan; 2. nt. selempang kulit, tali kulit.@51
bandhati@mengikat, membebat, membentuk, menyatukan, menambatkan pada, menempatkan di atas (pada), memasang, menyiapkan, memulai, membuat, mendapatkan, menyusun; pass. bajjhati .@51
bandhana@nt.  ikat, ikatan, belenggu; tambalan, kumpulan, komposisi, konstitusi; penyatuan, pemaduan, persatuan, (peng)gabungan; pegangan (gagang); sambungan; ~āgāra nt. rumah tahanan.@51
babbaja@m.  sejenis rumput atau ilalang kasar, biasanya dipakai untuk membuat selipar (sandal).@51
bala@nt.  kekuatan, daya; pasukan, kekuatan militer. [bala ← Skt. bala]@51
bahi@adv.  luar, bagian luar.@51
bahiddhā@adv.  luar, bagian luar; dengan melangkahi.@51
bahu@a.  banyak, jamak, berlimpah; sangat. [bahu ← Skt. bahu]@51
bahuka@a. nt.  banyak, berlimpah.@51
bahula@1. a. banyak, jamak, berulang-ulang, berkali-kali; sangat; nt. banyak, penuh dengan; dengan penuh; 2. nt. nama sejenis undian harapan.@51
bahulikata@a.  diperbanyak, dijamakkan, dilatih, diulang-ulang.@51
bādhati@menekan, memberatkan, menghambat, mendera, merusak; pass. bādhiyati  didera, menderita; kaus.  bādheti ; pp. bādhita .@51
bādhana@nt.  hal menangkap, melukai, menyakiti, menimbulkan penderitaan; rintangan.@51
bārāṇasī@f. nama ibu kota kerajaan Kāsī (kaum Vajji), sekarang bernama Benares.@51
bāḷha@a.  kuat; ~taraṃ  jauh lebih, amat sangat; bāḷhaṃ  adv. dengan kuat, sangat, amat, keras.@51
bāla@a. dungu, bodoh, tolol, tak mampu bernalar, tak mampu berpikir dan bertindak dengan baik; muda, belia, baru, segar, awal, dini; kanak-kanak anyir (di bawah 16 tahun); rambut.@51
bālya@nt. masa kanak-kanak, kanak-kanak; kebodohan, ketololan, kegoblokan.@51
bāhā@f.  lengan, tiang (pintu).@51
bāhirima@a.  bagian luar, eksternal.@51
bāhu@m.  lengan. [bahu ← Skt. bāhu]@51
bāhulla@nt.  kelimpahan, kemewahan; kehidupan yang mewah.@51
bāhullika@a.  hidup dalam kemewahan, mewah, boros.@51
bāhusacca@nt.  hal banyak belajar, hal memiliki pengetahuan mendalam atau banyak.@51
bāheti@menyingkirkan, menyisihkan, menangkal, mengabaikan, mengesampingkan.@51
bimba@nt.  wujud, rupa, gambar; buah merah dari Momordica monadelpha (sejenis bayam).@51
bimbohana@ nt.  bantal (kepala), kalang hulu.@51
bila@1. nt. lubang, liang, gua, rongga; 2. nt. bagian, cuil; 3. m. sejenis garam.@51
bilaṅga@m.  bubur masam, kanji.@51
billa@m.  buah bilakmata, buah maja (Aegle marmelos).@51
bīja@nt.  biji, benih, bibit, (air) mani; unsur. [biji/bijan/wijen ← Skt. bīja/bījin]@51
bījaka@m.  keturunan.@51
bujjhati@mengalami pencerahan (atas), menyadari, mengetahui, memahami; kaus. bodheti , bujjhāpeti ; pass. bujjhīyati .@51
bujjhanaka@a.  memiliki pengetahuan, memiliki unsur pencerahan (bodhi), memiliki batin yang tercerah.@51
buddha@(pp dari bujjhati )  paham, sadar, telah mencapai pencerahan; m. orang yang telah mencapai pencerahan.@51
buddhānubuddha@a.  mengalami  pencerahan sempurna; mengalami pencerahan oleh ia yang telah mengalami pencerahan (Buddha).@51
buddhi@f.  kebijaksanaan, kearifan, budi (1. alat batin yang merupakan paduan akal dan perasaan untuk menimbang baik dan buruk; 2. akal atau kecerdikan). [budi ← Skt. buddhi]@51
budhavāra@m.  Hari Rabu.@51
bodhi@f.  pengetahuan tertinggi, pencerahan (batin); ~pakkhika  (= pakkhiya ) bagian dari pencerahan (batin); pokok-pokok pencerahan (batin); penopang (menuju) pencerahan; ~rukkha  m. pohon Bodhi (assattha, Ficus religiosa);  ~satta  m. calon Buddha, seseorang yang nantinya akan menjadi Buddha.@51
byañjana@nt.  suku kata; konsonan; tulisan/huruf; ciri/tanda; ungkapan; lauk, masakan kari, makanan penyedap, sambal.@51
byasana (vyasana)  @nt.  musibah, kemalangan, malapetaka, bencana, petaka.@51
byādhi@m.  sakit, penyakit.@51
byāpāda@m.  niat jahat, maksud jahat.@51
byūha@m.  barisan pasukan, tumpukan, kumpulan.@51
brahmacariyā@f.  kehidupan luhur (terutama dalam hal hidup selibat/wadat).@51
brahmacārin@a.  yang menapaki kehidupan luhur, yang mengamalkan kehidupan luhur.@51
brahmattabhāva@m.  keberadaan sebagai Dewa Brahma.@51
brāhmaṇa@m.  orang yang berkasta brahmana; (dalam kitab Buddhisme, acapkali mengandung arti) orang yang hidupnya suci; brahmana.@51
brūti@berkata, memberi tahu, menyebut, memperlihatkan, menjelaskan, menguraikan.@51
bhagavant@a. beruntung, mujur, termasyhur, mulia; Yang Mahamulia. [begawan ← Skt. bhagavant]@51
bhaginī@f.  saudari.@51
bhaṅga@nt.  1. kanvas, mota, terpal, kain rami kasar; 2. pecah, terurai, penguraian, disolusi.@51
bhañjaka@a.  menghancurkan, merusak.@51
bhañjati@memecahkan, meluluhlantakkan, menghancurkan; melipat, menekuk.@51
bhaṭa@m.  pelayan, abdi, orang sewaan, serdadu. [batur ← Skt. bhaṭa]@51
bhaṇati@berbicara, memberitahu, menyatakan, mendaras.@51
bhaṇe@he coba (gaya bicara orang berkedudukan tinggi kepada bawahannya), begitulah, kiranya, he, coba (lihat), hayo.@51
bhaṇḍa@nt.  stok barang dagangan, barang-barang, milik, harta, banda, benda; peralatan, perlengkapan. [benda/banda ← Skt. bhāṇḍa]@51
bhaṇḍati@bertengkar, bercekcok, berselisih, berbantah, mencaci-maki.@51
bhaṇḍikā@f.  kumpulan barang-barang, tumpukan, onggokan, bundelan, gepok, gabung, perlengkapan.@51
bhata@a.  dipelihara, dipertahankan, didukung, ditopang, disokong, dilahirkan, menjadi bobot; m. pelayan.@51
bhati@f.  gaji, upah.@51
bhatta@nt.  makanan, nasi; ~sammada  rasa kantuk setelah makan.@51
bhattagga@nt.  ruang makan.@51
bhadanta (bhaddanta)@m.  Yang Mulia, Yang Terhormat; vok. sg. bhadante ; vok. pl. bhadantā .@51
bhadda@(bhadra ) a.  penuh berkah, beruntung, tinggi, luhur, beralamat baik, penuh kebesaran, yang mulia (sebutan untuk orang yang dihormati), baik, bahagia;  nt.  sesuatu yang membawa keberuntungan, keadaan baik, kesejahteraan, kemuliaan, perbuatan baik; sejenis panah; sapi jantan; ~kappa   m. kappa (kurun waktu) yang penuh berkah, kappa sekarang di mana telah dan akan muncul lima Buddha yakni Koṇāgamana, Kakusandha, Kassapa, Gotama, dan Metteya.@51
bhaddaka (bhadraka)@baik, mulia, terhormat, beruntung, penuh berkah, bernilai.@51
bhamati@berpusing, berputar-putar, mondar-mandir, berkelana.@51
bhamuka (bhamukha) @ f.  alis mata, kening.@51
bhaya@nt.  ketakutan. [bahaya ← Skt. bhaya]@51
bhayānaka@a.  menakutkan, mengerikan; nt. sesuatu yang menakutkan.@51
bharita@a. dipenuhi dengan, berisikan.@51
bhariyā@f.  “orang yang disokong”, istri.@51
bhava@m.  “mengada, menjadi”, (wujud) kelahiran kembali, (keadaan) keberadaan / eksistensi, “kehidupan”, dumadi.@51
bhavati@menjadi, ada, menjadi ada, berlangsung, terjadi; hotu bhante baik sekali bhante; na dāni tena ciraṃ jīvitabbaṃ bhavissati  kini ia takkan hidup lama lagi; maggo kho me gantabbo bhavissati  saya masih harus menempuh jalan.@51
bhavant@tuan, yang mulia, yang terhormat, Anda.@51
bhākuṭika@a.  mengernyitkan alis atau dahi; ~bhākuṭiko  selalu mengernyitkan alis, angkuh; f. bhākuṭikā  kernyit.@51
bhāga@m.  bagian, porsi, jatah, ranji; bhāgaso  adv. bagian demi bagian, secara merata, secara proporsional, seturut bagian masing-masing.@51
bhāgineyya@m.  putra saudara perempuan, kemenakan laki-laki.@51
bhāgiya@a.  berhubungan dengan, mendatangkan, menghasilkan, mengakibatkan, memperoleh, mendapat(kan), kelompok dari.@51
bhāgī@a. m.  mengambil bagian, mendapat bagian dari.@51
bhājana@nt.  bejana, wadah penampung; pembagian, penguraian, uraian. [bejana ← Skt. bhājana]@51
bhājeti@(kaus. bhajati )  membagi-bagikan, mengacang, mengagih.@51
bhāṇa@  m.  penuturan atau pelafalan, pelantunan; ~vāra  bab kitab suci, babak tuturan.@51
bhāṇaka@1. a. menuturkan; penutur, pelantun, pendaras, pengkhotbah; 2. m. kendi.@51
bhātar@m.  saudara.@51
bhāyati@takut; mengancam.@51
bhāra@m.  barang bawaan, beban; muatan; hal yang sulit; beban tugas; ukuran berat emas (1 bhāra  = 20 tulā  = 2000 pala ). [bahara/barang ← Skt. bhāra]@51
bhāva@  m.  hal mengada, menjadi; kondisi, sifat, keadaan, kehidupan; hal, ihwal; niat, cinta, hasrat, tujuan, kegemaran.@51
bhāvanā@f.  hal menghasilkan, berdiam dalam, mengarahkan pikiran pada, pengamalan, pengembangan batiniah, olah batin.@51
bhāvita@(pp dari bhāveti )  dikembangkan, ditumbuhkan, diwujudkan, dibiakkan, terolah, diseimbangkan.@51
bhāveti@menghasilkan, menumbuhkan, melahirkan, memupuk, mengembangkan, membiakkan, bertambah, berkembang.@51
bhāsati@mengatakan, menyatakan, berkata kepada, menyebutkan, membicarakan.@51
bhāsita@(pp dari bhāsati )  diucapkan, dikatakan, diutarakan, dikemukakan, dituturkan; nt. ucapan, kata-kata.@51
bhiṃsana@(bhiṃsanaka ) a.  menakutkan, mengerikan, menyeramkan.@51
bhikkhaka@m.  pengemis, peminta-minta, pendaduk (meminta-minta bukan karena miskin), petapa pengemis.@51
bhikkhati@minta sedekah, meminta(-minta).@51
bhikkhā@f.  makanan hasil mengemis, makanan dermaan, makanan; ~cariya berkeliling untuk mengemis, berkeliling untuk mendapatkan derma makanan.@51
bhikkhu@m.  pengemis, peminta sedekah; rahib Buddha, bhikkhu.@51
bhikkhunī@f.  pengemis wanita, bhikkhuni, rahib Buddhis wanita.@51
bhitti@a.  dinding; ~khīla m.  pasak dinding.@51
bhindati@membelah, memecahkan, menghancurkan, memutuskan, memotong, membongkar.@51
bhinna@(pp dari bhindati ) pecah, hancur, terpecah belah, tak mufakat; dianalisa, terurai;  ~paṭa kain sobek, kain perca; ~paṭadhara  mengenakan kain tambal seribu. [▶ bhinneka tunggal ika]@51
bhiyyo@(bhīyo, bhīyyo ) a.  lebih (banyak); adv.  secara lebih (banyak, tinggi, besar), berulang-ulang, lebih jauh; ~bhāva m.  lebih banyak, bertambah banyak, pelipatgandaan.@51
bhiyyoso@adv.  semakin; ~mattāya amat sangat.@51
bhisa@nt.  tunas teratai, akar teratai, batang tanaman teratai, serabut teratai.@51
bhisi@f.  matras, jok, bantal, guling.@51
bhīru@a.  menakutkan, takut, takut-takutan, malu-malu, pengecut, mengerikan; m. ketakutan, kekecutan (hati); ~ttāṇa nt. pernaungan bagi yang merasa takut; a. yang melindungi mereka yang merasa takut; yang terlindung dari ketakutan.@51
bhuñjati@makan, menyantap, menikmati, menggunakan, memanfaatkan; membersihkan, memurnikan.@51
bhutta@(pp dari bhuñjati ) telah makan, telah disantap, makan, dia yang telah makan.@51
bhuttāvin@a. sehabis makan.@51
bhumma@1. a.  berkaitan dengan bumi; nt. tanah, bumi, lantai; pl. bhummā  yang ada di bumi, (= bhumma-deva ) dewa-dewa yang menghuni bumi terutama dewa-dewa pohon (yakkha); tanah; 2. kasus lokatif.@51
bhummaṭṭha@a.  dimasukkan ke dalam tanah, terbenam dalam tanah, ditemukan di dalam atau di atas tanah, keduniawian; berdiri di atas tanah, terletak di atas tanah.@51
bhummattharaṇa@nt.  kain penutup lantai.@51
bhūta@a.  menjadi, terlahir, terbentuk, terwujud, nyata, riil;  nt. makhluk hidup; unsur (dasar), anasir; alam, dunia, yang ada; kebenaran, yang sejati, yang sebagaimana adanya; makhluk halus (hantu, puaka, raksasa, setan, dedemit); hal menjadi atau terjadi; ~pubba a.  sebelumnya;  ~pubbaṃ adv.  sebelum semua muncul, pada zaman dahulu kala, nun jauh sebelumnya; ~vejja(ka)   m. dukun pengusir setan, dukun pengusir  roh jahat, dukun penyembuh kerasukan roh jahat.@51
bhūpati@m.  raja. [bupati ← Skt. bhūpati]@51
bhejja@a.  dibelah.@51
bheṇḍi@m.  sejenis peluru atau proyektil yang digunakan sebagai senjata; panah.@51
bhettar@m.  pemecah-belah.@51
bheda@m.  hal terurai, tercerai-berai, hancur, porak-poranda, terpecah belah; pelanggaran; jenis, macam; dvādasavidhaākārabhedaṃ  terdiri dari dua belas jenis aspek; bhedato  dibedakan dari. [beda ← Skt. bheda]@51
bhedana@nt.  hal memecah, membelah; penerobosan, pembagian, perceraian, pembongkaran, penghancuran; ~saṃvattanika  a. membawa (atau menuntun menuju) perpecahan atau perselisihan.@51
bhedeti (bhedāpeti)@kaus.  dari bhindati .@51
bherava@a.  menakutkan, mengerikan, menciutkan nyali, menggentarkan.@51
bhesajja@nt.  obat, obat-obatan.@51
bho@(bentuk vokatif dari bhavant ) kata sapaan akrab untuk orang yang sederajat atau lebih rendah; tuan, sobat, rekan, yang terkasih, Anda.@51
bhoga@m. penikmatan; milik, harta, kekayaan; lingkaran badan ular. [boga ← Skt. bhoga]@51
bhojana@nt.  makanan, santapan.@51
bhojaniya (bhojanīya, bhojaneyya)@m.  apa yang dapat dimakan, makanan, yang layak untuk dimakan, makanan lunak, makanan utama, makanan pokok, makanan dasar, makanan primer.@51
bhojeti@(kaus. dari bhuñjati )  menyuguhi, menghidang, membuat menikmati.@51
maṃsa@nt.  daging;  ~pesi f. potongan daging, gumpalan daging. [mangsa ← Skt. māṃsa]@51
makaci@m.  tanaman serat murva (Sanseviera roxburghiana).@51
makkaṭaka@m. laba-laba, kawa-kawa.@51
makkaṭī@f.  kera atau monyet betina.@51
makkhaṇa@nt.  pelumuran, pengolesan.@51
makkheti@mengolesi, melumasi, melumuri.@51
magga@m.  jalan, jalur, jalan setapak, titian. [marga ← Skt. mārga]@51
maṅku@a.  bingung, galau, terganggu, kacau, tidak senang atau puas.@51
maṅgala@(maṅgala+)  ; maṅgalaṃ karoti  menyelenggarakan upacara pemberkahan, kawin; maṅgalaṃ vadati memberkati. [manggala ← skt. maṅgala]@51
maṅgula@a.  pucat, pudar, jelek.@51
maccu@m.  Dewa Kematian, Mara, kadangkala sama dengan Yama.@51
maccha@m.  ikan.@51
majja@nt.  minuman yang memabukkan, minuman keras, minuman beralkohol.@51
majjha@a.  tengah[an], antara, ugahari, setengah baya;  m.  pertengahan, pinggang. [madya ← Skt. madhya]@51
majjhaṇha@m.  tengah hari.@51
majjhatta@a.  “berdiri di tengah-tengah”, mewasiti, netral, tak berpihak, acuh tak acuh; keseimbangan batin.@51
majjhima@a. tengah, moderat, sedang, pertengahan, ugahari, tataran tengah; sedang, pertengahan; ~purisa  orang dengan perawakan sedang; orang kedua.@51
mañca@m.  ranjang, dipan.@51
mañcaka@m.  ranjang, katil, tempat tidur, peraduan, dipan, pembaringan.@51
mañjari (mañjarikā)@f.  bunga bertangkai bercabang-cabang, tunas.@51
mañjūsā@f.  kotak (untuk menyimpan dokuman penting).@51
maññati@1. berpikir, berpendapat, beranggapan, membayangkan, menganggap (sebagai); yassa dāni tvaṃ, Raṭṭhapāla, kālaṃ maññasīti  Sekaranglah waktunya, Ratthapala, lakukan apa yang Anda pikirkan; taṃ kiṃ maññasi bagaimana pendapat Anda (mengenai ini); maññe  kupikir, tentu saja, sungguh, saya kira, agaknya, kiranya, bisa jadi, tampaknya; na maññe tentu saja tidak; 2. mengetahui, diyakini, yakin; bangga atas, angkuh, membanggakan.@51
maṇi@m.  batu mulia, batu akik, (batu) permata, manikam (intan; batu permata). [manik/manikam ← Skt. maṇi]@51
maṇḍana@nt.  hiasan, dandanan; ~jātika yang bersifat (gemar akan) dandanan, gemar berhias.@51
maṇḍala@m.  lingkaran; diagram; bulatan matahari atau bulan; lempengan bundar; lingkup; kelompok, kalangan; sempadan jubah bhikkhu; kelim, pelipit, depun (kelim atau lipatan tambahan pada tepi kain atau pakaian sebagai hiasan); = aṅgana  = lapangan, halaman, pelataran, medan, arena, gelanggang.@51
maṇḍalika@a. m.  penguasa wilayah, kepala daerah, adipati. [mandalika ← Skt. maṇḍalika]@51
maṇḍalikā@(maṇḍalikā+)   kawasan penggerombolan kandang kuda.@51
maṇḍeti@menghiasi, mendandani, memperindah.@51
mata@1. (pp dari maññati )  terpikir, dipahami, dianggap; 2. (pp dari marati ) mati; ~patika  a. menjanda. [mati ← Skt. mṛta/mṛti]@51
mati@f.  pikiran, pendapat, niat, kehendak, maksud, ide; kebijaksanaan, kecerdasan.@51
matta@1.  a.  seukuran, sejumlah, sebanyak; hanya (dassana mattam pi sādhu hoti); seketika, karena, setara, seperti, seolah-olah, bagaikan; 2.  (pp dari madati ) mabuk; gembira sekali atas, bangga akan, angkuh. [matra ←  Skt.  mātra]@51
mattikā@f.  tanah liat, lempung; lumpur.@51
matthaka@m.  kepala, puncak, ujung; matthake  di kepala, pada jarak, di puncak.@51
mada@m.  1. kemabukan, berlebih-lebihan, pemuasan indriawi; 2. kesombongan, keangkuhan. [mada ← Skt. mada]@51
madana@nt.  kemabukan.@51
maddati@menginjak(-injak), melindas, menggilas, meremukkan; menaklukkan, menghancurkan; mengabaikan (sebuah nasihat), menolak, menampik; mencampurkan, mengadoni, menguli, meremas, meramas, mencampur-baurkan; mengirik (menginjak atau menebah agar terlepas dari tangkainya misalnya padi kering, kacang, dsb); merusak, menumbangkan (pagar); menarik atau menghela (jala).@51
maddita@(pp dari maddeti ) dicampur-baurkan; diadoni; digilas, ditaklukkan.@51
madhu@m.  madu. [madu ← Skt. madhu]@51
madhura@a.  manis; memabukkan, membuai, menghanyutkan; nt. manis, minuman manis; pujian, sanjungan, hal menjilat.@51
manasi-karoti@menambatkan pikiran, mengarahkan pikiran, mencamkan, memikirkan, memperhatikan.@51
manasikāra@m.  perhatian, pemikiran, penambatan pikiran.@51
manāpa@a. menyenangkan, menawan hati, memesonakan, berkenan di hati, memikat (hati).@51
manussa@m. manusia.  [manusia ← Skt. manuṣya]@51
manesikā@f.  tebak pikiran.@51
mano@(mana ) m. nt.  pikiran, batin, kesadaran. [Mano merujuk ke fungsi intelektual dari kesadaran, viññāṇa merujuk ke ranah indria dan reaksi indriawi, dan citta merujuk ke aspek subjektif dari kesadaran.]@51
manda@a.  pelan, malas, lamban, kelesa, lembam, gial, celih, penyegar, menyenangkan; dungu, bodoh, bebal; seret; lembut (tentang mata atau tatapan); berbuah sedikit.@51
mamāyati@melekat pada, menggemari, mengandrungi, menginginkan; memelihara, merawat, menopang, menyayangi.@51
mamāyita@(pp dari mamāyati )  dipelihara, disayangi, disukai, diinginkan;  nt. kemelekatan, kegemaran akan, keangkuhan.@51
mamma@nt.  tempat lunak di tubuh, tempat yang vital (dalam Kitab Veda terutama merujuk ke bagian di antara tulang rusuk dekat hati; ulu hati), sendi; ~chedaka menusuk hati, menyerang, menyakitkan.@51
maraṇa@nt.  kematian.@51
marati@mati; kaus. māreti  membunuh; kaus. Pass.  māriyati ia (dibuat) terbunuh, ia dibunuh.@51
mariyādā@f.  perbatasan, batas, pantai, tepi laut, tanggul, pematang; hubungan yang digariskan atau diatur secara ketat, peraturan, kendali;  a.  menjaga agar tidak keluar jalur, mematuhi peraturan secara ketat.@51
mala@nt.  kotoran, noda, pencemar.@51
malaya@a.  berdebu.@51
masi@m.  jelaga, sulang, abu sisa pembakaran, tinta.@51
massu@m.  janggut, jenggot.@51
mahaggha@a.  sangat mahal, bernilai tinggi, berharga tinggi.@51
mahatta@nt.  kebesaran.@51
mahant@a.  besar, raksasa, luas, panjang lebar, agung, hebat. [maha ← Skt. mahant]@51
mahallaka@a.  besar, sepuh, senior, berusia lanjut. (jātimahallakatāya samannāgate cirakālappasute vibhavamahantatāya samannāgate mahaddhane mahābhoge)@51
mahāmatta@m.  menteri utama, perdana menteri, mahapatih.@51
mahāmegha@m.  awan tebal, awan petir, hujan besar.@51
mahāsāla@a.  memiliki balai besar (mewah), bergedung mewah.@51
mahiddhika@a.  gagah perkasa, digdaya, sakti, berilmu. [mahardika/merdeka ← Skt. mahārddhika]@51
mahī@f.  1. bumi, maha pertiwi; 2. nama sungai.@51
mahesī@f.  ratu, permaisuri.@51
mā@jangan, semogalah tidak; māhevam  avoca janganlah berkata demikitan.@51
māgavika@m.  pemburu, pemburu kijang (rusa).@51
māṇava@m.  remaja, anak muda, pemuda, Brahmana muda.@51
māṇavaka@m.  remaja, pemuda, Brahmana muda.@51
mātar@f.  ibu.@51
mātugāma@m.  wanita.@51
mātucchā@f.  saudara perempuan dari ibu; tante atau bibi dari pihak ibu.@51
mātumattin@a.  yang berhubungan dengan ibu, milik ibu, pihak ibu.@51
mādisa@a.  orang seperti saya.@51
māna@1. m. keangkuhan, kecongkakan; penghormatan; 2. nt. ukuran; ukuran tertentu (satu māna  = 8 nāḷi ).@51
mānatta@nt.  sejenis penebusan kesalahan (dalam kaitan dengan pelanggaran sangghadisesa).@51
mānasa@nt.  niat, maksud, pikiran, hasrat.@51
mānita@(pp dari māneti )  dihormati, dimuliakan, diagungkan.@51
mānusa@a.  manusia(wi); m. manusia.@51
mānusaka@a.  manusia.@51
māneti@menghormati, menjunjung tinggi, memuliakan, mengagungkan, memuja-muja.@51
māpeti@membangun, mendirikan, menciptakan, membuat, menjelmakan (dengan kekuatan gaib).@51
māmaka@(māmaka+)  buddha yang terkasih.@51
māra@m.  ‘sang pembunuh’, sang penggoda, Sang Jahat, Mara; kematian; (Ada lima jenis : devaputta, kilesa, khandha, kamma, maccu).@51
māraṇa@nt.  pembunuhan, kematian, pembantaian.@51
mārisa@a.  yang terkasih, tuan.@51
mālā@f.  untaian bunga, bunga-bunga, kalung atau karangan bunga; baris, rangkaian; ~vaccha  m. tanaman bunga hias, tumbuhan bunga hias.@51
māḷa@m.  bangunan dengan lantai atasnya berpuncak satu atau beratap bundar dan runcing.@51
māḷaka@1. m.  ruang, bangunan; 2. = mālaka  = aṅgana  = maṇḍala m.  lapangan (yang terbatas), halaman, pelataran, arena, gelanggang, medan, alun-alun.@51
māsa@1. m.  bulan; nama kedua belas bulan dalam setahun adalah citta (citra), vesākha, jeṭṭha, āsāḷha, sāvaṇa, poṭṭhapāda, assayuja, kattika, māgasira, phussa, māgha, dan phagguna; awal tahun dimulai dari seputar pertengahan bulan Maret; 2. kacang hijau (Phaseolus radiata / radiatus), atau kacang Phaseolus indica. [masa ← Skt. māsa]@51
māsaka@m.  butiran kacang hijau yang digunakan sebagai standar berat dan nilai; mata uang bernilai rendah (1 kahāpaṇa  = 4 pāda  = 20 māsaka ).@51
miga@m.  binatang buas, hewan jalang, binatang liar, meraga, marga; rusa, kijang, antelop, gazelle. [meraga, marga ← Skt. mṛga]@51
migī@f.  rusa betina.@51
micchā@salah, tidak benar, sesat, keliru.@51
mitta@m. nt.  teman, kawan, sahabat; ~āmacca  m. handai tolan. [mitra ← Skt. mitra]@51
middha@nt. kelambanan, ketidakcekatan, kelembaman.@51
miyyati@ (mīyati)  mati.@51
milakkhu(ka)@m.  seseorang yang bukan dari kaum (suku) Ariya misalnya dari Andh(r)a, Tamil dan lain sebagainya; bahasa non-Ariya.@51
milāyati@melemah, mengendur, melayu, memudar, mereda; kaus. milāpeti mengeringkan, membuat layu, meredakan, menghilangkan, menekan, melumpuhkan.@51
missa@a.  tercampur dengan, beragam jenis, bersama, dibarengi dengan, diiringi dengan; yang terhormat.@51
missaka@1. a. campuran, kombinasi; 2. m. pelayan, pengikut, abdi; 3. nt. nama sebuah taman hiburan di surga; 4. pl. sekelompok dewa.@51
missatā (missattā)@f.  hal tercampur, tergabung.@51
mihita@nt.  senyum; ~pubba dengan senyum.@51
mukha@nt. mulut, muka (wajah), pintu masuk, lubang, depan (muka); alasan, cara, sebab, dengan cara. hebat; mukhaṃ karoti  gerising (mengerot-erotkan muka), meringis, menyeringai; ~tuṇḍa(ka) nt.  paruh, moncong; ~vaṇṇa m. cahaya muka, air muka. [muka ← Skt. mukha]@51
mugga@m.  kacang merah (PED: Phaseolus mungo; KBBI: P. vulgaris).@51
muggara@m. gada, palu.@51
mucchati@menjadi kaku, membeku; menjadi tergila-gila; kaus. muccheti  mengeluarkan suara, meninggikan suara.@51
mucchita@(pp dari mucchati ) tak menyadarkan diri, (jatuh) pingsan; bingung sekali, kegila-gilaan.@51
muñcati@melepaskan, membebaskan; menanggalkan, memberikan, melontarkan, memancarkan, mengirim, mengeluarkan, melakukan, mengerjakan, melimpahkan, meninggalkan; pass. muñcīyati, muccati menjadi bebas, dibebaskan, dilepaskan.@51
muñciya@adv.  kecuali, terlepas dari.@51
muñja@m.  1. sejenis rumput atau ilalang (Saccharum munja Roxb.); 2. sejenis ikan.@51
muṭṭha@(pp dari massati )  telah lupa, yang lupa; ~sacca  nt. suka lupa, kelengahan, kelalaian; ~ssati  a. lengah, lalai, suka lupa.@51
muṭṭhi@f.  tinju, kepalan tangan, genggaman.@51
mutta@1. (pp dari muñcati ) dilepaskan, dibebaskan, terbebas, dikorbankan; 2. air kencing, kemih, air seni, urine.@51
muttā@f.  mutiara.@51
mutti@f.  kebebasan, pembebasan, pelepasan.@51
muditā@f.  gembira (atas kebahagiaan pihak lain), hati yang lembut, simpati.@51
mudu@(muduka ) a.  lembut, lunak, empuk, lentur; ~bhūta a. lembut, lunak, empuk, lentur, gemulai. [merdu ← mṛdu]@51
muddha@(muddhā ) m.  kepala, puncak.@51
musala@m. nt.  alu (penumbuk), godam, pentung, linggis (perejang).@51
musā@adv.  secara salah, tidak benar, tidak betul;  ~vāda m. berbohong, kebohongan, dusta.@51
muhutta@m. nt.  saat, waktu yang sangat singkat, sekejap, sebentar, sejenak; muhuttena dalam sekejap, dalam waktu singkat.@51
mūga@a.  bisu, membisu@51
mūla@nt. akar, kaki, dasar, bawah, dekat; awal, pangkal, mula, sebab, alasan, sumber; pokok, tumpuan; dana, uang. [mula ← Skt. mūla]@51
mūlaka@a. disebabkan oleh, dengan muasal, berpangkal pada, berpokok pada; bernilai tertentu, berharga, dibayar mahal;  nt. = mūla .@51
mūḷha@(pp dari muyhati ) tersesat, bingung, buta, dungu, bebal.@51
megha@m.  awan, mega, hujan. [mega ← Skt. megha]@51
mettā@f.  cinta kasih, keramahan, kehangatan. (SnA. hita-sukhūpanaya-kāmatā keinginan untuk memberikan kemaslahatan dan kebahagiaan kepada pihak lain.)@51
methuna@a.  berkaitan dengan hubungan seksual; nt. hubungan seksual; m. sahabat.@51
methunaka@m.  pelaku percabulan, pelaku hubungan seksual, pezina; rekan;  nt. persetubuhan, percabulan.@51
meda@m.  lemak, gemuk.@51
medhāvin@a.  cerdas, pandai, bijak, bijaksana.@51
meraya@nt.  minuman beralkohol.@51
mokkha@ 1. m. kebebasan, pembebasan, keselamatan, pelontaran, hal mengutarakan; 2. a. terdepan, pertama, terkemuka. [moksa ← Skt. mokṣa]@51
mokkhacika (mokkhacikā f.)@m.  jumpalitan, jengkoletan, berjungkir balik.@51
mogha@kosong, sia-sia, tak berguna, bodoh, dungu@51
moceti@(kaus. dari muñcati ) menghantarkan, membebaskan; mengeluarkan, melepaskan, memuncratkan, memelesat; menunaikan, memenuhi.@51
modaka@m.  1. sejenis manisan/halwa; 2. tempat surat, amplop, pembungkus atau sejenisnya.@51
mora@m.  merak. [merak ← Skt. mayūra/maura]@51
moha@m.  kebodohan, kedunguan, kegelapan batin, kekaburan kalbu, kebingungan, kelinglungan, delusi@51
ya@yang;  yo yo di mana saja; yena yena gacchati ke mana pun ia pergi.@51
yakkha@m.  nama sejumlah makhluk bukan manusia (amanussa, mahiddhika peta), misalnya makhluk halus, jin, hantu, mambang (makhluk halus yang menurut kepercayaan sebagian orang membinasakan manusia [bermacam-macam warnanya, ada yang kuning, merah, hitam, dsb] dan disebut juga menurut tempatnya misalnya ~segara, ~tali arus); gergasi (raksasa yang besar, suka makan orang), raksasa, buta.@51
yagghe  ~ jāneyyāsi@tahukah Anda….?@51
yajati@mengurbankan, memberi kurban, mempersembahkan kurban, memberi persembahan, memberi derma, berdana.@51
yañña@m. kurban (pujaan atau persembahan kepada orang halus dengan berbagai-bagai maksud); derma atau dana (kepada Sanggha atau bhikkhu); yañño vuccati deyyadhammo (4 paccaya, anna, pāna, vattha, yāna, mālā, gandhā, vilepana, seyya, avasatha, padīpeyya; Nd2 523).@51
yaṭṭhi@f.  1. tongkat, galah; 2. batang; 3. ukuran panjang, = 7 ratana .@51
yato@adv.  dari mana; sejak, ketika, semenjak waktu itu, dikarenakan, karena; yato …. ettāvatā  sebab …… sehingga.@51
yattha@adv.  di mana (pun), sebagaimana.@51
yatra@adv.  di mana (pun), karena; yatra hi nāma  (kata seru penegas) sungguh, lantaran, bahwa, oleh karena itu.@51
yathā@sebagaimana, sehubungan dengan, sesuai dengan (yathā kālaṃ sesuai dengan waktunya), se…. (yathā sukhaṃ sesuka mereka); yathā yathā  dengan cara apa pun, bagaimana pun juga; ~raddha  ( = ālabdha ) secukupnya, sekenanya, tanpa bumbu, ala kadarnya; ~vajja  “seperti yang terkutuk”, menirukan orang cacat.@51
yathābhūta@a.  sebagaimana adanya; yang sesungguhnya, yang sejati, yang sesuai dengan kenyataan; nyata; sesuai dengan kebenaran.@51
yadā@adv.  ketika, saat; ( = yasmiṃ samaye ).@51
yadi@jika, apabila, kalau; yadi … atha kasmā  kalau … lantas mengapa; yadi evaṃ … (tu)  walaupun … namun; yadi va  atau; yadi evaṃ kalau begitu, baiklah kalau demikian.@51
yama@1. m. pengendalian (diri); 2. m. penguasa alam arwah (kematian); kematian; peta, arwah; 3. m. nt. sepasang, kembar.@51
yava@m.  barli (Hordeum vulgare).@51
yaso (yasa)@nt.  kemasyhuran, ketenaran, reputasi, nama baik (harum), kemuliaan, keagungan, keberhasilan, kedudukan tinggi, status; (menurut Dhammapāla) hal memiliki banyak pengikut dan pelayan (ayasoti parivāra-vipatti; parammukha-garahā vā Pac.A. 4:903).@51
yasmā@adv.  sebab, karena.@51
yahiṃ@☞  yattha@51
yāgu@f.  bubur.@51
yācaka@a.  yang meminta, memohon.@51
yācati@memohon, meminta, memohon dengan sangat.@51
yādisa@a.  yang seperti, yang sebagaimana, apa saja, apa pun; yādisaṃ kīdisaṃ dānaṃ derma apa pun.@51
yāna@nt.  hal pergi, menapak maju, sarana pergerakan, wahana, kendaraan, kereta; jalan (menuju).@51
yāpanīya@a.  sesuai atau cukup untuk menunjang kehidupan seseorang.@51
yāpeti (yapeti)@(kaus. dari yāti ) pergi, berada; membuat pergi, membuat seseorang pergi menuju, membawa menuju, menuntun menuju; bisa (terus), maju, bergerak, aktif; membuat jalan terus, melanjutkan atau meneruskan (hidup atau jalan); hidup dengan.@51
yāma@m.  pengendalian; waktu jaga, penggal waktu jaga malam (4 jam), penggal waktu malam hari; penghuni alam Dewa Yama (pl.).@51
yāva kīvañca@sejauh.@51
yāvajīvaṃ@adv.  seumur hidup.@51
yāvataka@a.  sebanyak, sejauh, apa pun, semua.@51
yāvadatthaṃ@adv.  sejauh yang dibutuhkan; sebanyak yang disukai;  a.  cukup, lumayan; banyak.@51
yāvadeva@hanya sekadar.@51
yuga@nt.  kuk dari suatu bajak atau kereta; sepasang, pasangan; generasi, masa; ~naddha m.  pemasangan kuk pada, penggandengan, pemaduan; a. berpadu, harmonis.@51
yujjhati@bertarung, berperang, berlaga, bertempur; muṭṭhīhi yujjhati  beradu tinju, bertinju.@51
yuñjati@memasang, merangkai dengan, melibatkan diri dalam, mengupayakan.@51
yutta@(pp dari yuñjati )  terpasang, tergandeng, terangkai dengan, dihubungkan dengan, merujuk ke, terlibat, (bidang) yang digeluti, diperlengkapi (dengan), tersedia, siap, mampu, pantas, cocok, cukup, sesuai, benar, karena, konjungsi; ~yoga  m. pengerahan usaha.@51
yuvan@m.  pemuda, anak muda, remaja.@51
yebhuyya@a.  banyak, dalam jumlah besar, kebanyakan (yebhuyyena  kebanyakan, sebagian besar); sebagaimana yang terjadi, biasanya, ada kalanya, lazimnya (na yebhuyyena  biasanya tidak, biasanya sama sekali tidak).@51
yoga@m.  1. kuk, pemasangan kuk; 2. kaitan dengan, pencantolan pada, hubungan (alamiah) dengan, persekutuan (dengan), pertautan dengan; 3. ikatan, kemelekatan; 4. usaha, upaya, perjuangan; 5. perenungan, konsentrasi, ketaatan, yoga;  kekuatan (gaib), ilmu sihir, pengaruh, sarana, rencana (siasat);  alat, perlengkapan, sarana, obat penawar. [yoga ← Skt. yoga]@51
yogi@m.  seseorang yang berjuang untuk melatih batin.@51
yojiya@ adv.  setelah memasang, mengaitkan, memadukan, menyatukan, mempengaruhi, mengenakan, menyiapkan, mengupayakan.@51
yojeti@(kaus. dari yuñjati )  membuat kuk terpasang, merangkaikan dengan, mengikatkan dengan, menyatukan, mengaitkan, memadukan, mengenakan, mempergunakan, memasangkan, menyiapkan, melibatkan diri, mengupayakan, berusaha menyelami; kaus. yojāpeti ; pass. yojīyati .@51
yoni@f.  rahim, kandungan; asal muasal, cara terlahir, cara kelahiran (wujud), tempat terlahir, alam kelahiran; sifat.@51
yoniso@sampai ke asal muasal atau landasannya yakni secara menyeluruh, teratur, bijaksana, patut; ~manasikāra m.  perhatian yang semestinya (kondisi ini muncul juga pada kusalacitta yang tidak disertai dengan paññā).@51
rakkhati@melindungi, menaungi, menyelamatkan, melestarikan; mematuhi, menjaga, memelihara, mengawal; menyimpan rahasia, menyimpan, mengamankan.@51
rakkhita@(pp dari rakkhati )  dijaga, dilindungi, dikawal, di bawah pengawasan, diselamatkan.@51
raṅga@m.  1. warna, cat; 2. panggung, pentas, teater, tempat murni, tempat (ruang) bermain.@51
racchā@f.  jalan kendaraan.@51
rajaka@m.  tukang celup, tukang kelantang.@51
rajata@nt. perak.@51
rajo (raja)@nt.  debu, kotoran (biasanya basah, menghasilkan noda); noda, noktah, cemaran; rajojalla  debu dan noda, kotoran lumpur.@51
rajja@nt. kerajaan, kekuasaan kerajaan, tahta, kedaulatan.@51
rajju@f.  tali. [rajut?]@51
raṭṭha@nt.  pemerintahan, kerajaan, negeri, negara, masyarakat.@51
ratana@nt.  batu mulia, permata, ratna, mestika; harta benda, kekayaan, benda bernilai. [ratna ← Skt. ratna]@51
rati@f.  cinta, kemelekatan, kesenangan, kegemaran akan, kesukaan akan.@51
ratta@1. (pp dari rañjati ) diwarnai, berwarna; merah (tua); bergemilau; terkelantang (= putih); bergairah; 2. nt. malam; waktu; ~ññu  lama, berjalan lama, berdiri lama, terkenal.@51
ratti@f.  malam.@51
ratha@m.  kereta beroda dua, bendi, dokar; pedati; kesenangan, kegembiraan. [rata ← Skt. ratha]@51
rathaka@1. nt. kereta kecil, kereta mainan; 2. a. mempunyai kereta.@51
rathikā (rathiyā)@f.  jalan atau jalur dokar atau pedati.@51
ramaṇīya@a.  yang sangat menyenangkan, menggembirakan, menawan hati, memikat, sangat menarik, memesonakan, bagus, elok, memukau.@51
ramati@menghibur diri, bersenang-senang, suka.@51
rava@m.  kecepatan, hal cepat sekali; suara nyaring, keras; pekik, teriakan, jeritan, lengking (hewan).@51
ravi@m.  matahari;  ~vāra m.  Hari Minggu. [rawi Ü Skt. ravi]@51
rasa@m.  jus, sari buah, ekstrak buah (ucchurasa air sari tebu); rasa (subjektif dan objektif); cita rasa, yang nikmat atau hal menikmati, nuansa, sifat esensial atau fungsi (istilah dalam Abhidhamma), elegan, kecemerlangan, sari (paṭhavīrasa humus), ekstrak, substansi. [rasa ← Skt. rasa]@51
rassa@a.  pendek.@51
rahas (raho)@nt.  tempat terpencil, terkucil, sendirian, rahasia, tersembunyi, pribadi; rahogata  a. sendirian, secara pribadi, sedang menyendiri.@51
rahassa@a.  rahasia, tersembunyi;  nt.  kerahasiaan. [rahasia ← Skt. rahasya]@51
rāga@m.  warna, pewarna; nafsu (yang menggebu-gebu), renjana, berahi, nafsu ragawi; kemelekatan.@51
rājadhānī@f.  kota kerajaan.@51
rājā (rājan) @ m. raja, kaisar, penguasa, pangeran, (juga sebutan untuk kaum kesatria), pemimpin, hulubalang, pengawal raja. [raja ← Skt. rājā]@51
rāsi@m.  1.  gugusan, gabungan, himpunan, kumpulan, kelompok, kategori, (g)undukan, tumpukan,; 2. kekayaan, harta; 3. rasi (Ada 12 yakni mesa, usabha, methuna, kakkaṭa, sīha, kaññā, tulā, vicchikā, dhanu, makara, kumbha, mīna. [ram, bull, twins, crab, lion, virgin, balance, scorpion, bow, capricorn, waterpot, fish; kambing jantan, sapi jantan, kembaran, kepiting, singa, gadis, neraca, kalajengking, busur, makara/ kaprikornus, tempayan, ikan.])@51
riñcati@meninggalkan, tinggal pergi, melepaskan, menanggalkan, mengabaikan; pass. riccati .@51
ritta@(pp dari riñcati )  kosong, hampa, tanpa, bebas dari, sia-sia.@51
rukkha@m.  pohon.@51
ruci@f.  kecemerlangan, kebenderangan; kecondongan, kesukaan, kesenangan.@51
ruccati@mencari kesenangan dalam (lok.), senang me…., terjerumus atau hanyut dalam, memikirkan atau berniat; mā rucci  janganlah melakukan….@51
rūpa@nt.  bentuk, wujud, jasad, rupa, sosok, gambar, penampakan, perwujudan, objek; wujud jasmani; fenomena materi, materi (halus) (rūpāvacara alam bermateri halus).  [rupa ← Skt. rūpa]@51
roga@m.  sakit, penyakit.@51
rogin@a.  berpenyakit, menderita penyakit.@51
rocati@menyenangkan, menggembirakan; senang atau gembira dalam; roceti  merasa senang atau gembira terhadap, senang terhadap, menerima dengan senang hati.@51
rodati@menangis, meratapi.@51
ropeti@(kaus. dari rūhati ) 1. menanam, menempatkan, memasang, menumbuhkan, menambah, menumbuhkembangkan, mengatur, mengarahkan ke; 2. membuat terputus atau terpotong, menangguhkan, membatalkan, mengabaikan, menolak; membuat mengaku, mendakwa, menuduh.@51
lakkhaṇa@nt.  tanda, ciri, karakteristik, cena, sifat, kualitas, keistimewaan, seluk-beluk; pengenal; tanda badan; atribut khusus. [laksana ← Skt. lakṣaṇa]@51
lakkhika@a.  beruntung, penuh berkah; alakkhika a.  tidak beruntung, malang.@51
lagati (laggati)@melekat pada, menempel pada, bergantung pada, tersangga pada, tersangkut pada.@51
laguḷa@m.  pentung(an), gada.@51
lagga@(pp dari laggati )  menempel, tersangkut, melekat, terhalang.@51
laggita@(pp dari lagati ) tertempel pada, lekat pada, tergelantung pada, dihalangi, tersangga pada.@51
laṅghati@melanggar, melompat melewati, melangkahi; meremehkan, mengabaikan.@51
lajjin@a. merasa malu, santun sederhana, segan, sungkan, tidak madar (tidak berperasaan, tebal telinga), cermat berhati-hati.@51
lañchana@nt.  cap, tanda, tera, stempel; tanda mata, cendera mata, lencana. [lencana ← Skt. lañchana]@51
laṇḍika@f.  kotoran, tahi.@51
latā@f.  tumbuhan menjalar, sulur tanaman menjalar; sebutan untuk taṇhā ; coreng, gores, kilasan. [lata ← Skt. latā]@51
laddha@(pp dari labhati )  telah memperoleh, mengambil, menerima.@51
lapati@berbicara, berujar, mengoceh, bergumam.@51
lapita@(pp dari lapati )  dibicarakan, diutarakan, diujar, berceloteh, bergumam.@51
labuja@m.  sukun (PED: Artocarpus lacucha atau incisa; KBBI: Artocarpus incissus).@51
labbhati@(pass dari labhati ) diperbolehkan, mungkin, bisa jadi, pantas, didapati.@51
labha@a.  menerima, diterima, mendapat.@51
labhati@mendapat, menerima, memperoleh, meraih; mendapat izin; mendapat kesempatan, diizinkan mendapat; kaus. labbheti ; grd. labbhiya .@51
labbhā@mungkin, bisa saja.@51
lambin@a.  menggelantung, menjulur; beralat kelamin panjang menjulur.@51
laya@m.  jangka waktu yang singkat, sejenak, sebentar, sejurus, sekejap, sesaat; jangka waktu dalam musik, waktu yang sama, irama, ritme.@51
lasati@mendambakan, menginginkan; menari, memerankan, berpentas, berakting; berolahraga, memancarkan, menyuarakan; kaus. lāseti berolahraga, melakukan gerak badan, berhibur diri.@51
lahuka@a.  ringan, enteng, remeh, sepele.@51
lākhā@f.  lak, pewarna lak.@51
lābha@m.  pendapatan, laba,  perolehan, milik, kebaikan, keuntungan, kemaslahatan; lābhena lābhaṃ meraup laba dengan laba. [laba ← Skt. lābha]@51
lābhagga@a.  perolehan tertinggi; banyak perolehan materi.@51
lābhin@a.  menerima, mendapatkan, meraih, memiliki.@51
lāmaka@a.  remeh, jelek, buruk, jahat, inferior, nista.@51
lāyati@memotong, menyiangi, menuai.@51
likhati@menggores, memotong, mengukir, menulis, memoles, melicinkan.@51
likhita@(pp dari likhati ) tergores, terpotong, diukir, dipoles; ditulis, dilicinkan, ditandai.@51
liṅga@(liṅga+)   jenis kelamin netral. [lingga ← skt. liṅga]@51
limpati@mengolesi, memelester, menodai, melumuri; pass. lippati ternoda, tercemar.@51
līna@(pp dari līyati ) melekat, menempel, lamban, lembam, melempem, pemalu, pendiam, suka menyendiri, menutup diri, senyap.@51
līyati@menempel, melekat; melumer, luput dari, terlepas.@51
luta@a.  terpotong.@51
luddaka@m.  pemburu.@51
luddha@(pp dari lubbhati )  keserakahan, ketamakan, lobha; kekejaman, kekerasan.@51
lubbhati@bersifat serakah, tamak, loba; mendamba-dambakan, menginginkan.@51
lūkha@a.  kasar, kasap, kesat; tak menyenangkan; jelek, buruk; cukupan, serba sedikit; (orang) nista, buruk sekali, kasar, menyedihkan, menjijikkan, lusuh, jembel, rusak, jorok, berpenampilan jembel berdisiplin keras; ~ppasanna  a. menaruh keyakinan pada orang yang jembel berdisiplin keras, menghormati orang yang berpenampilan lusuh. [rusak ← Skt. rukṣa]@51
lekha@m.  tulisan, huruf, surat.@51
leḍḍu@m.  sebongkah tanah; ~pāta  sepelemparan bongkahan tanah.@51
leṇa (lena)@nt.  kamar, gua, ruang gua; penaungan, peristirahatan, keselamatan.@51
lepa@m.  pengolesan, pelumuran, penurapan (tembok), pelepaan; turap, lepa; hal melengket, melekat. [lepa ← Skt. lepa]@51
lesa@m.  pura-pura, dalih, helat, kilah, akal, muslihat.@51
loka@m.  dunia, penghuni dunia; ~uttara  a. di atas/luar keduniawian, adiduniawi. [loka ← Skt. loka]@51
loṇa@nt.  garam; a. asin; ~sovīraka nt. bubur asam yang diberi garam; campuran dari aneka herba, aneka tanaman, aneka buah, aneka padi-padian, aneka kacang-kacangan, aneka daging, madu, gula, sendawa, garam, rempah-rempah, dan sebagainya; disimpan dalam tempayan selama dua sampai tiga tahun, digunakan sebagai obat.@51
lobha@m.  keserakahan, kerakusan, loba.@51
loma@nt.  bulu badan; lomaṃ pāteti  tunduk; ~haṃsa m. menggidikkan bulu roma; meremang, merinding, menyeramkan, seram (berdiri bulu roma). [roma ← Skt. roma(n)]@51
lomasa@a. berbulu (halus), ditutupi dengan bulu (halus), lembut.@51
lola@a.  terombang-ambing, penuh nafsu, serakah, tamak.@51
lolupa@a.  serakah, tamak.@51
loha@nt.  tembaga, kuningan, perunggu (gangsa), logam; loyang (tembaga kuning; kuningan; gangsa); ~kumbhī f. cerek atau bejana logam; ~kaṭāha  wadah tembaga (atau kuningan).@51
lohita@a.  merah, merah darah; nt. darah.@51
vaṃsa@m.  1. bambu; 2. suku bangsa, wangsa, silsilah, keluarga; 3. tradisi, kebiasaan turun temurun; pemakaian, reputasi; 4. dinasti; 5. suling (bambu), seruling;  suatu permainan; ~ñña  warisan turun-temurun yang luhur. [wangsa/bangsa ← Skt. vaṃsa]@51
vagga@1. m. kelompok, grup, bagian, gugus; bab; 2. a. nt. tercerai-berai, terpisah-pisah, terkotak-kotak, tak utuh, tak rukun, berselisih. [warga ← Skt. varga]@51
vaggiya@a. kelompok, grup, gerombolan.@51
vaṅka@a. 1. melengkung, bengkok; 2. tidak lurus, tidak jujur; 3. meragukan, mengecohkan, menipu; m. lengkungan; kait; kail ikan.@51
vaṅkaka@nt.  bajak (luku, tenggala) mainan.@51
vacana@(vacana+)   jamak. [wacana ← skt. vacana]@51
vacanīya@a.  seyogianya dikatakan, disebut, dijawab, diberi tahu, dinasihati.@51
vacī@f.  ucapan, kata-kata.@51
vacca@nt.  tahi, berak, kotoran, tinja, feses; ~magga  anus, dubur.@51
vaccha@m.  1. pedet, anak sapi; 2. pohon.@51
vajja@1.  nt.  yang harus dihindari, kesalahan, dosa; 2. a. nt. “dikatakan”, mengatakan; dibunyikan (musik), dimainkan; ucapan.@51
vajjati@1. dihindari, disingkirkan dari; kaus. vajjeti menghindari, menjauhkan diri dari; 2. pass. dari vadati ; vutto vajjeti menyampaikan salam.@51
vañcati@berjalan-jalan; kaus. vañceti menipu, memperdayakan, mencurangi, mengelabui, melakukan tipu muslihat.@51
vañjha@a.  mandul.@51
vaṭaṃsa (vaṭaṃsaka)@m.  sejenis hiasan kepala, bumban (karangan bunga atau daun-daunan sebagai perhiasan kepala).@51
vaṭṭa@a.  putaran, daur, bulat; nt. lingkaran; putaran kelahiran berulang-ulang; yang telah diajukan atau dikeluarkan, derma, pengeluaran (biaya); ~ūpaccheda penghancuran (pemutusan) siklus kelahiran kembali.@51
vaṭṭaka@nt.  kereta, gerobak.@51
vaṭṭakā@f.  burung puyuh.@51
vaṭṭati@bergerak, dilakukan; pantas (untuk); kaus. vaṭṭeti  menggerakkan, memutar, memelintir.@51
vaṭṭi@f.  sumbu; pembalut, penyelubung, pembungkus, lapisan, selaput, kulit, jangat; pinggir(an), tepi, keliling, lingkar; setrip, carik (helai), lingkaran pinggir; selongsong, kantong, polong, gumpalan, bola, gelindingan, semburan, tuangan.@51
vaḍḍhaki@m.  tukang kayu, arsitek, ahli bangunan (pembangun), tukang batu.@51
vaḍḍhati@bertambah, berkembang, tumbuh, menjadi banyak; kaus. vaḍḍheti menumbuhkan, menjalankan, mengamalkan, sibuk dengan, mengembangkan, memancarkan, mengadakan, membuat, memelihara, menyiapkan.@51
vaḍḍhana@a. nt.  1. bertambah, bertumbuh, berkembang; 2. gemar akan, melekat pada, mengamalkan, mempraktikkan; 3. hal merapikan; 4. mengabdi kepada, memperkuat; 5. sejenis busana.@51
vaṇa@m. nt.  luka, borok.@51
vaṇijjā@f. dagang, perdagangan.@51
vaṇṭika@a.  berbatang, bertangkai.@51
vaṇṇa@m.  warna, rona, penampakan luar, warna kulit, jenis, kasta, kecemerlangan, keelokan, hal memuji, alasan, kualitas; ~vant a.  indah, cantik, elok, rupawan, adun-temadun. [warna ← Skt. varṇa]@51
vaṇṇita@(pp dari vaṇṇeti ) dijelaskan, diulas; dipuji, disanjung.@51
vaṇṇeti@menjelaskan, menguraikan; memuji, menyanjung, mempersenangkan hati.@51
vata@1. sungguh, lah, betapa, alangkah, benar-benar, tentu saja;  2. m. nt. kewajiban agama, brata (tindakan pengendalian diri), praktik, pengamalan, kaul, pematuhan, laku, berprihatin. [brata ← Skt. vrata]@51
vati@f.  pagar; pilihan; anugerah.@51
vatta@1.  nt. yang dilakukan, yang berlangsung atau lazim; tugas, kewajiban, pelayanan, kebiasaan, fungsi; janji, kaul, kebajikan, ibadat, pengamalan; 2. nt.  mulut; 3. a. terbuka lebar.@51
vattati@bergerak, mulai, melanjutkan, terjadi, berlangsung, ada, berada, melakukan, berjalan.@51
vatti@berkata, berucap, menyebut.@51
vattī@a. yang memelihara, berlatih, menyebabkan berlangsung terus.@51
vattha@1. nt.  kain, busana, pakaian; 2. (pp dari vasati ).@51
vatthi@m. f.  kandung kemih (buah pelir); kemaluan wanita; pencucian perut.@51
vatthu@nt.  lokasi, tempat, landasan, lapangan, pelataran, lahan, tanah milik, kebun; objek, benda, milik, benda nyata, barang, harta, substansi; sebab, alasan, pijakan, dasar; pokok, topik, cerita, kisah, hal, kasus.@51
vatthuka@a.  bertempat, berlokasi, berlandasan; berlandaskan, bersifat atau bersubstansikan.@51
vadati@(vadeti ) berkata, mengatakan, memberi tahu, menegaskan, menyampaikan, mengutarakan, mengemukakan.@51
vadha@m.  hal membantai, membunuh, membinasakan, menewaskan, mematikan, membasmi, mengeksekusi; hukuman@51
vadhaka@m.  pembunuhan, pembantaian; pembunuh.@51
vadhū@f.  menantu perempuan.@51
vana@nt.  hutan, rimba, jenggala; nafsu, berahi, gairah;  ~saṇḍa hutan belantara. [wana ← Skt. vana]@51
vanappati (vanaspati)@m.  pohon hutan, pohon kayu, pokok kayu (dikontraskan dengan tumbuhan terna).@51
vanta@(pp dari vamati )  dimuntahkan, yang telah memuntahkan; dilepaskan, dicampakkan, ditinggalkan.@51
vandati@menyalami dengan penuh hormat, menghormati, menyembah, bersujud, memuliakan, mengagungkan, memuja.@51
vandanā@f.  penghormatan, sembah.@51
vapati@1. menaburkan, menanam; pass. vappate  atau vuppati ; pp. vutta ; kaus. vāpeti  atau vapāpeti menyuruh menaburi; 2. mencukur, menyiangi, memotong rumput, memotong.@51
vamati@memuntahkan, mencampakkan, melepaskan.@51
vambheti@menistakan, merendahkan, menghina, mencerca, memaki-maki, mengomel, memarahi, menghardik, mengutuk.@51
vaya (vayo)  @m. (nt.) usia, umur; vayo anuppattaberusia senja, uzur, rimpuh (jātivuddhabhāvaṃ antimavayaṃ anuppatte pacchimavayaṃ anuppatte pacchima-vayo nāma vassasatassa pacchimo tatiyabhāgo); hilang, kurang, aus, memudar, lenyap; ~gata  dalam usia tua. [bea/biaya ← Skt. vyaya]@51
vayha (vayhā)@nt. f.  kendaraan, wahana, pembaringan yang mudah diangkut, tandu.@51
vara@1.  a. unggul, bagus sekali, terbaik, mulia; nt. varaṃ lebih baik, terbaik, terunggul; 2. keinginan, harapan, permintaan, doa; varaṃ dadāti mengabulkan harapan; varaṃ gaṇhāti  berharap, berkaul.@51
valañjeti@menyusuri, menjalani, mempraktikkan, mencapai, mengambil jalan; menggunakan, menghabiskan, melewatkan.@51
valāhaka@m.  awan, mega, gegana, mega mendung (awan hitam).@51
vali (valī)@ f.  garis, lipatan, kerut, kernyut, keriput, kedut, gores, garit, baris.@51
vallī@f.  tumbuhan merambat, tanaman menjalar; jenis alang-alang yang digunakan untuk mengikat sesuatu.@51
vavatthapeti@menentukan, memastikan, menunjuk.@51
vasa@m. nt.  kekuasaan, kendali, kekuatan, pengaruh; vasena  disebabkan, dikarenakan, sehubungan dengan, sesuai dengan, sebagaimana, dalam hal, dengan cara, berdasarkan kekuatan dari; vasaṃ vatteti mengendalikan; vase vattati dikuasai seseorang; vase vatteti mengendalikan, menguasai.@51
vasati@berbusana, mengenakan pakaian; hidup, menetap, tinggal, berdiam, melewatkan waktu, menjalankan, mematuhi, mempraktikkan, melakoni.@51
vasala@a.  busuk, kotor, bedebah, hina, keji; m.  orang buangan, orang nista, orang celaka, keparat, jahanam.@51
vasanta@m.  musim semi.@51
vasika@(vasika+)   keranjingan wanita.@51
vasin@a.  menguasai.@51
vassa@m.  hujan, guyuran/taburan; tahun; air mani; ~āvāsa m. hal berdiam di satu tempat saat musim hujan, hal hidup melewatkan masa musim hujan. [warsa ← Skt. varṣa]@51
vassāna@m. musim hujan.@51
vahatu@m.  banteng (gen. sing. vahato ).@51
vā@(kadang-kadang dalam syair ditulis sebagai  va ) atau; vā ……. vā baik….maupun.@51
vāka@nt.  kulit kayu; ~cīra busana petapa terbuat dari kulit kayu; rajutan jangat kayu.@51
vākya@nt.  tuturan, ucapan, ungkapan, kalimat, klausa, wacana.@51
vācā@f.  kata, ucapan, tuturan, perkataan;  vācaṃ bhindati memodifikasi ucapan atau ungkapan, mengatakan. [baca ← Skt.vācā]@51
vāṇija@m. pedagang, saudagar, niagawan.@51
vāta@m.  angin; ~pāna m. kisi-kisi jendela, jendela; ~maṇḍalikā f. angin puyuh, hembusan angin, angin topan, badai, angin taufan..@51
vāda@m.  perkataan, ucapan, pembicaraan, tuturan, ujaran, omongan, diskusi, perdebatan, perbantahan, pembahasan; doktrin, ajaran, paham, terori; .@51
vādaka@a.  doktrin, sektarian, sesat (bidah).@51
vādin@a.  berbicara, berkata, mencetuskan, menganut, berpaham, memeluk.@51
vādeti@(kaus. dari vadati ) membunyikan, memainkan (alat musik), bermusik (bermain musik).@51
vānara@m.  monyet, kera.@51
vāpi@f.  kolam, waduk, tanki.@51
vāpita@ (pp dari vāpeti ) ditaburi, ditanami; disiangi.@51
vāyati@1. menenun, menganyam; kaus. vāyāpeti  ( = vināpeti ); 2. bertiup, menghembus, berbau.@51
vāyamati@berjuang, berupaya, berusaha.@51
vāyāma@m. daya upaya, usaha, perjuangan.@51
vāra@m. putaran, kesempatan, waktu, kejadian, ronde, babak; bab, bagian.@51
vāraka@m. pot, jambangan, kendi.@51
vāri@nt.  air.@51
vāritta@nt.  penghindaran, hal menjauhi.@51
vāreti@(kaus. dari vuṇāti ) 1. mencegah, merintangi, menghambat; 2. meminang, melamar; kaus. vārāpeti  membuat memperistri, membujuk seseorang mempersunting seorang istri; pp. vārita .@51
vāreyya@nt.  perkawinan, pernikahan, peminangan, pelamaran.@51
vāla@m.  bulu ekor; bulu kuda; bulu hewan; ekor; saringan bulu; ~ṇḍupaka m. nt.  sikat bulu (kumparan/bantalan bulu) a.@51
vālikā@f.  pasir.@51
vāḷa@m.  ular; pemangsa, binatang buas pemangsa; ~yakkha  yakkha buas.@51
vāsa@1. m. pakaian; 2. m. hidup, kehidupan, hal berdiam atau tinggal; rumah, kediaman; keadaan, kondisi; 3. parfum, wewangian.@51
vāsi@f.  pisau tajam, ka(m)pak, beliung (kapak bermata melintang).@51
vāsin@a.  berbusana, dibalut, mengenakan; berdiam di, bertempattinggalkan.@51
viṃhita@a. tercengang, membuat takut, menakutkan.@51
vikattana@nt.  pemotong, pisau.@51
vikāra@m.  perubahan, yang berubah, distorsi, pengembalian (pembalikan), pemutarbalikan, kelainan, pemberbedaan, gerak isyarat (sikap, kial); vikāraṃ karoti  berkial.@51
vikāla@m.  “waktu yang salah”, bukan pada waktunya; (terlalu) telat (atau kasip); sangat malam; silam.@51
vikirati@mencerai-beraikan, menghamburkan, menyebarkan, mengacau-balaukan atau mengaduk-aduk.@51
vikopeti@mengguncang, mengusik, mengganggu, merusak, menghancurkan, memusnahkan, membunuh, membinasakan.@51
vikkiṇāti@menjual@51
vikkhambhati@menjadi kaku (karena takut), ketakutan.@51
vikkhambhana@nt.  meruntuhkan, menghentikan, melumpuhkan, mengikis, membuang.@51
vigata@a.  lenyap, enyah, hilang, musnah, tanpa, bebas dari.@51
vigarahi@memarahi (dengan pedas), mencaci-maki, mengecam.@51
viggaha@m.  percekcokan, pertengkaran, perselisihan, yang berwujud, wujud, badan, sosok; pemenggalan kata-kata ke dalam unsur-unsurnya; analisis.@51
viggahita@(pp dari viggaṇhati )  digenggam, dicengkeram, ditangkap, berprasangka terhadap, tersandera, tergoda oleh.@51
vighāsa (vighasa)@m.  sisa-sisa makanan, serpihan daging.@51
vicāra@m.  penyelidikan, pengamatan, pemantauan, pemindaian, berkutat, memenungkan.@51
vicāreti@(kaus. dari vicarati )  mengedarkan, membuat berkeliling, membagi, mendistribusi; memikirkan, merenungkan; menyelidiki, mencermati, menguji; merencanakan, merancang, membangun; melakukan, merawat, memelihara, mengelola, menyediakan.@51
vicikicchā@f.  keragu-raguan, kesangsian, sikap skeptis.@51
vicitra@a.  beraneka ragam, beragam, berhiasan, berdekorasi, berornamen.@51
vicinati (vicināti)@menyelidiki, memeriksa, mencermati, memilah-milah; mencari, memilih.@51
vicchika@m.  kalajengking.@51
vijaṭeti@menguraikan (kekusutan), menyisir (sehingga rapi kembali); menjelaskan.@51
vijambhati@membangunkan, membangkitkan.@51
vijambhita@ (pp dari vijambhati ) (ter)bangun, bangkit, timbul.@51
vijayati@menaklukkan, menguasai, menang atas.@51
vijahati@meninggalkan, menanggalkan, melepaskan.@51
vijānana@nt.  hal mengetahui, menyadari, mengenali.@51
vijāyati@menghasilkan, melahirkan, beranak, menimbulkan; kaus. vijāyāpeti  menyebabkan melahirkan.@51
vijāyin@a.  subur, mampu beranak.@51
vijita@(pp dari vijayati ) takluk, tunduk, kalah; nt. tanah taklukan, wilayah, kerajaan.@51
vijjati@(pass dari vindati )  ditemukan, diketahui, eksis, ada.@51
vijjā@f.  pengetahuan, pengetahuan sejati, pemahaman, pengertian; ilmu; ~dhara  m. ahli mantra atau jampi-jampi; tukang sihir. [widya ← Skt. vidyā]@51
vijjhati@menusuk, melubangi, menembusi, memanah, menghantam, menggebuk, menetak, membelah.@51
viññatti@f.  isyarat, pemberitahuan, informasi; hal memberi isyarat.@51
viññāṇa@nt.  kesadaran.@51
viññāta@(pp dari vijānāti ) telah mencerap, dikenali, diketahui, dipahami, direnungkan, dipelajari.@51
viññāpeti@memberitahu, menyampaikan, mengajarkan, mewejang, membuat mengerti, menyerukan, memohon.@51
viññū@a.  cerdas, pandai, cakap, terpelajar, bijaksana, arif.@51
vitakka@m.  perenungan, pikiran, pengerahan batin atau pikiran, kecondongan batin, penempatan batin pada suatu objek, pengarahan pikiran pada.@51
vitakketi@merenungkan, bernalar, memikirkan, merencanakan.@51
vitaccheti@menyobek, mencabik, merenggut; meratakan, melicinkan.@51
vitudati@menghantam, menusuk, menghunjam, menumbuk, mendorong, menabrak, menyerang.@51
vitta@m.  harta kekayaan, milik.@51
vitthāra@m. rentangan, lebar, lintang; rincian, panjang lebar.@51
vitthārita@(pp dari vitthāreti ) dirinci, diuraikan, dibeberkan, dibentangkan.@51
vitthāreti@menyebarkan, merentangkan, membentangkan, mengembangkan, membeberkan, menguraikan.@51
vidahati@mengatur, menunjuk, menetapkan, menentukan, menyediakan, mempraktikkan.@51
viddesa (videssa)@m.  permusuhan, kebencian.@51
viddhaṃsaka@m.  pembinasa, penghancur, pemusnah.@51
viddhaṃsati@berjatuhan, tercerai-berai, dihancurremukkan.@51
viddhaṃsana@nt.  hal meremukkan, menghancurkan, melenyapkan; a. menghancurkan.@51
viddhaṃseti@(kaus. dari viddhaṃsati ) menceraiberaikan, menghancurkan.@51
vidha@a.  macam, jenis, ragam.@51
vidhamati@(vidhameti ) menghancurkan, meluluhlantakkan, memorakporandakan, merusakkan, menceraiberaikan, membuat berjatuhan, membuat terpusing-pusing, memberantakkan.@51
vidhāna@nt.  perencanaan, pembangunan, hal melakukan, pelaksanaan, proses; upacara, ritual; penempatan, pengaturan, penentuan; penggantian.@51
vidhutika@m.  rangkaian bunga berbentuk lingkaran, untaian bunga, tandan bunga.@51
vinaya@m.  penyingkiran, pengenyahan; tata peraturan, tata tertib, tata laku; winaya, tata krama para bhikkhu, penanggalan, pelepasan.@51
vinā@tanpa, terpisah, tercerai.@51
vinābhāva@m.  perpisahan.@51
vināsa@m.  hal menjadi binasa, hancur, lenyap. [binasa ← Skt. vināśa]@51
vinicchaya@m.  pembedaan, perbedaan, pikiran, pendapat (kukuh), pemahaman penuh atas; keputusan; penyelidikan, pengadilan, pertimbangan; uraian rinci; penjelasan.@51
vinicchināti (vinicchinati, vinicchati)   @mengkaji, menyidik, mencoba, memutuskan.@51
vinidhāya@menyesatkan, mengaburkan, menyamarkan, memelesetkan.@51
vinipāta@m.  keruntuhan, kehancuran; tempat penuh penderitaan, yang ditimpa penghukuman, yang jatuh dalam alam celaka; alam celaka.@51
vinipātika@a.  akan terlahir di alam celaka.@51
vinibbhujati@memisahkan, menceraikan, membedakan; membengkokkan, membalikkan.@51
vinīvaraṇa@a.  tidak dirintangi, tak terhalangi, tak terbias, tidak berprasangka.@51
vineti@menyingkirkan, melepaskan, menanggalkan; menuntun, memandu, memberi instruksi, mengajari, melatih, mendidik.@51
vineyya@setelah menyingkirkan, menanggalkan, meninggalkan; a. cocok untuk dilatih.@51
vindati@mengetahui, menemukan, mendapatkan, mengenali, memiliki, menikmati, mengalami, meraih.@51
vipateyya@akan langsung  terpenggal, hancur berkeping-keping.@51
vipariṇata@a.  berubah, terjungkir, bejat, menyimpang.@51
vipariṇāma@m.  perubahan (memburuk), hal terjungkir.@51
vipallāsa@m.  penjungkiran, pembalikan, pengubahan, kesemrawutan, kekeliruan, distorsi.@51
vipassaka@a.  sanggup menilik secara terang atau jelas, merenungkan, mahir dalam mawas diri.@51
vipassati@menilik secara terang atau jelas, memiliki pandangan terang, melihat dengan jernih melalui batin, memiliki intuisi atau daya penilikan batiniah.@51
vipassanā@f.  penglihatan yang jernih dan mendalam, wipassana.@51
vipāka@m.  buah, berbuah, hasil, akibat.@51
vipāceti@menjadi terusik, mengeluh, menyebarluaskan.@51
vipula@a.  luas, banyak, berlimpah, besar.@51
vippakata@(pp dari vippakaroti )  dilakukan secara tidak sempurna, dikerjakan secara salah, terbengkalai, terhenti, terputus, belum selesai dikerjakan.@51
vippakaroti@menganiaya, memperlakukan dengan kasar.@51
vippakāra@m. perubahan.@51
vippakiṇṇa@(pp dari vippakirati )  ditaburi, diperciki (dengan), dikepung; berserakan di sana-sini, tercerai-berai.@51
vippakirati@menaburi, menghancurkan, mengacaubalaukan.@51
vippaṭipajjati@salah jalan; berbuat salah, keliru, khilaf; berbuat dosa, berbuat tidak senonoh.@51
vippaṭisārā@m.  penyesalan, sesal.@51
vippaṭisārin@a.  sesal, penuh penyesalan, menyesal.@51
vippayoga@m. hal berpisah dengan, perpisahan.@51
vippasanna@a.  murni, jernih, bersih, bahagia, cerah, suci.@51
vippasīdati@menjadi bersinar, jernih, puas, bahagia.@51
vibbhamati@berkelana, mondar-mandir, menjadi tersesat, kesasar, meninggalkan Sanggha, balik kembali (ke rumah meninggalkan Sanggha), memisahkan diri (dari Sanggha).@51
vibhaṅga@m.  pembagian, pembedaan, klasifikasi, pemilahan.@51
vibhajati@membagi(-bagi), membagikan, memilah-milah, merinci, menganalisis, mencerai-beraikan.@51
vibhatti@f.  bagian, kategori, ragam, kelompok, rincian; infleksi, deklensi, konjugasi.@51
vibhāga@nt.  pembagian, klasifikasi, uraian, pemilahan, pembedaan.@51
vibhāvayati@menjadi terang/gemilang, menjelaskan.@51
vimati@f.  keragu-raguan, kebingungan, kekhawatiran.@51
vimuccati@terbebas, dibebaskan.@51
vimuñcati@membebaskan, memancarkan.@51
vimutta@(pp dari vimuñcati ) terbebas.@51
vimutti@f.  kebebasan, pembebasan, pemancaran, yang terlepas (dari).@51
vimokkha (vimokha)@m.  pembebasan, kebebasan.@51
vimocaya@m.  terbebas, tiada melekat.@51
viya@seperti, sebagaimana, bagaikan, laksana; partikel keragu-raguan ; na viya maññe saya kira tidak; ~bhāva m. berkurang, mengecil.@51
virati@f.  (= veramaṇī ) hal menghindari, menahan diri dari, menjauhkan diri dari; (tiga virati: sampatta, samādāna, dan setughāta DA i 305; versi lain DhsA 154 tisso viratiyo).@51
viramati@berhenti, berpantang, menjauhkan diri, menahan diri.@51
viravati@berteriak, memekik, menjerit; berderik-derik, berderak-derak, berciut-ciut, berdesak; kaus. virāveti membunyikan.@51
virahita@a.  kosong, tanpa, bebas dari, tiada.@51
virāga@m.  tanpa nafsu, hal berpaling dari, tiadanya (lenyapnya) minat terhadap, tak berhasrat, hal pudar, murni, bersih dan bebas; kearahatan; pītiyā ca virāgā upekkhako ca vihāsiṃ berpaling dari kegiuran (batin) dan berdiam dalam keseimbangan batin.@51
viriya@nt.  “keadaan seorang nan perkasa”, giat, semangat, aktif berupaya.@51
virūḷha@(pp dari virūhati )  setelah tumbuh, tumbuh.@51
virūḷhi@f.  pertumbuhan.@51
virūhati@tumbuh, bertunas.@51
virecana@nt.  obat pencuci perut, pencahar.@51
virocati@memancar, menyinari, menjadi cemerlang.@51
virodha@m.  rintangan, hambatan, lawan.@51
vilagga@a.  menempel, ramping, tersangkut.@51
vilapati@omong kosong; meratapi.@51
vilīva (viliva)@a.  terbuat dari bilah (bambu); bilah (bambu dsb); ~kāra m. perajin bambu, pembuat keranjang. [bilah ? ← Skt. bilma]@51
vilumpati@merampas, menjarah, mencaplok, mencuri, memusnahkan.@51
vilepana@nt.  urap, boreh (bau-bauan untuk melumasi badan supaya harum), kosmetik (bahan untuk mempercantik).@51
vilokita@(pp dari viloketi )  nt. memandang ke belakang, berpaling ke belakang.@51
viloketi@menyeksamati, memeriksa, mempelajari, mencermati, merenungkan.@51
vivaṭa@a. tersingkap, terbuka, telanjang; sadar dan jernih, cerah batin.@51
vivaṭṭakappa@m.  pembentukan kembali dunia, pertumbuhan dunia ( = vaḍḍhamāno ).@51
vivaṭṭati@tergelar; memulai lagi; melenceng dari.@51
vivadati@bertengkar, cekcok, berselisih, berbantahan.@51
vivarati@membuka, menyingkapkan, membuat jelas, menganalisis; kaus. vivarāpeti menyingkap, membuka.@51
vivāda@m.  pertengkaran, percekcokan, perselisihan, perbantahan, pertentangan.@51
vivāha@m. nt.  “mengirim atau membawa pergi” (= kaññādānaṃ  memberi atau menyerahkan anak gadis); perkawinan.@51
vivicca@(setelah) menjauhkan diri dari; jauh dari, menjauhi, membebaskan diri dari, mengasingkan diri.@51
viveka@m.  pelepasan atau pemisahan atau penjauhan (diri); penanggalan; penyepian, pengasingan diri; penyendirian; pengucilan, pembebasan, bebas.@51
viveceti@memisahkan, memilahkan, membedakan, mengkritik.@51
visa@nt.  racun. [bisa ← Skt. viṣa]@51
visaṃyoga@m.  bebas dari belenggu, pemisahan diri, pemutusan ikatan.@51
visaṃvādeti@memperdaya dengan kata-kata, mengingkari kata sendiri, ingkar, menipu, berdusta, berbohong.@51
visakkiyadūta@m.  utusan atau kurir khusus, utusan atau kurir yang tak sanggup (mampu).@51
visaṭṭhi@f.  pengeluaran, hal mengeluarkan; mendambakan, melekat.@51
visabhāga@a.  berbeda, berlainan, tak biasa, luar biasa, tidak umum.@51
visama@a.  tak rata, tak sama, tak serasi, berlawanan; tak sesuai, salah; ganjil, aneh, tak pantas; nt. tempat yang tak rata, bahaya, atau sulit dijangkau; jalan yang sulit ditapaki; ketidakrataan, keburukan, perilaku salah, ketidakpantasan; visamena  dengan cara yang salah.@51
visaya@m.  tempat, wilayah, dunia, alam, daerah, lingkungan; jangkauan, rentang, medan, cakupan, ranah objek, objek, sifat, objek indra, kesenangan indriawi.@51
visahati@mampu, berani.@51
visāraka@a.  menyebar, merentang, memuai, mengembang, melebar, melantur, meluas.@51
visārada@a.  percaya diri, mantap, tidak canggung, bijaksana, terampil, mahir, tidak kikuk, tanpa sungkan.@51
visiṭṭha@a.  menonjol, kontras, luar biasa, dominan, kentara, mencolok, superior, lebih unggul.@51
visuṃ@secara terpisah, tersendiri; visum visum  masing-masing, satu per satu; visukaraṇa  nt. pemisahan.@51
visuṃgāma@m.  tanah perdikan.@51
visuddha@(pp dari visujjhati )  bersih, murni, suci, jernih, bening, cemerlang, tiada noda. [wisuda ← Skt. visuddha]@51
visuddhi@f.  kecemerlangan, semarak, kemegahan, keunggulan; kemurnian, kesucian, penyucian; kebajikan.@51
visūka@nt.  gerakan yang tiada henti-hentinya, geliat-geliut, pelintir, puntiran, pertunjukan. (=vipphandita )@51
visūcikā@f. penyakit kolera.@51
vissa@a.  semua, setiap seluruh, segenap; nt. bau daging mentah; dunia; ~dhamma  Dhamma duniawi.@51
vissajjana@ (vissajjanā  f.)  nt.  pemberian, penyerahan, pengeluaran, pengiriman, pelontaran; jawaban.@51
vissajjeti@(kaus. dari vissajjati ) mengeluarkan, mengirim, menyingkirkan, melonggarkan, melepaskan, memberikan, menyerahkan; menjawab, menyahut.@51
vissasati (vissāseti) @ memercayai, bersahabat dengan, berkarib.@51
vissāsa@m.  kepercayaan, keakraban, kekariban, persetujuan bersama.@51
vissuta@a.  terkenal, termasyhur.@51
vihata@(pp dari vihanati )  dibunuh, dimusnahkan, dipukul, dilumpuhkan, berakhir; lebar.@51
vihanati@memukul, membunuh, mengakhiri, menghabisi, mengenyahkan.@51
viharati@hidup, berdiam, bersemayam, berada, singgah, berkunjung. [ = iriyati, vattati, pāleti,  yapeti, yāpeti, carati]@51
vihāra@m.  hal melewatkan waktu, berdiam di suatu tempat, hidup, tinggal, berada; tempat tinggal, berdiam,menghuni; keadaan kehidupan, kondisi, gaya hidup; kediaman, pondok, gubuk, hunian, kamar tunggal; tempat tinggal atau pernaungan pribadi bhikkhu untuk masa wassa (vassāvāsa ) tempat pertemuan para bhikkhu, tempat istirahat atau hiburan; bangunan yang lebih besar untuk tempat para bhikkhu; wihara (semula merujuk ke gubuk, lalu berkembang menjadi sederetan kamar tinggal pribadi yang dihubungkan dengan sebuah beranda atau pamukha). [biara/wihara ← Skt. vihāra]@51
vihārin@a.  berdiam, tinggal, hidup, berada.@51
vihita@(pp dari vidahati ) a.  tersusun, yang telah disiapkan, disediakan, dilengkapi, ditentukan@51
viheṭheti@menganiaya, menyusahkan, mengganggu, menyakiti, mendongkolkan.@51
vīta@a.  bebas dari, tanpa.@51
vītikkama@m.  melampaui, melanggar, melewati, berjalan, berlangsung.@51
vītināmeti@membuat melewatkan waktu, menghabiskan waktu, hidup, melewati, menunggu.@51
vītivatta@a.  setelah melewati atau mengatasi, ditembusi, terlewati.@51
vītisāreti@menyampaikan, saling menukar (ucapan salam), beruluk-salam.@51
vīmaṃsati (vīmaṃseti)@“mencoba memikirkan”, mempertimbangkan, memeriksa, mencermati, menemukan, menyelidiki, mengkaji, menguji, menelusuri, merenungkan, menjajaki.@51
vīmaṃsā@f.  pertimbangan, pemeriksaan, pengujian, percobaan, penyelidikan, uji-coba; iddhipāda yang ke-4@51
vīsati@f.  dua puluh.@51
vīhi@m.  beras merah, beras coklat, beras pirang.@51
vuccati@(pass. dari vatti )  disebut.@51
vuṭṭhahati (vuṭṭhāti@) bangkit, terbit, dihasilkan; muncul dari, keluar dari, kembali dari.@51
vuṭṭhāpeti@(kaus. dari vuṭṭhahati )  menahbiskan, merehabilitasi, bangkit dari, keluar dari, berpaling dari.@51
vuṭṭhi@f.  hujan.@51
vuṭṭhika@a.  ada hujan.@51
vuṭṭhita@(pp dari vuṭṭhahati )  keluar (dari), bangkit dari, terbit, sekembali dari, tinggal pergi.@51
vuḍḍha (vuddha)  @(pp dari vaḍḍhati ) tua, sepuh, uzur, jompo, renta, rimpuh, berida (aṅgapaccaṅgānaṃ vuddhimariyādappatte sīlācārādiguṇavuddhiyutte); ~vaya usia tua.@51
vuḍḍhi@f.  pertumbuhan, perkembangan, kemajuan, kemakmuran; kedewasaan; ~ppatta  a. sudah dewasa.@51
vutta@1. (pp dari vatti ) dikatakan; 2. (pp dari vapati ) ditaburkan (biji/benih); dicukur.@51
vutti@f.  tingkah laku, gaya, gaya hidup, praktik, penggunaan, kebiasaan.@51
vuttha@(pp dari vasati ) telah berdiam, tinggal atau hidup.@51
vuddha@☞  vuḍḍha@51
vuddhi@☞  vuḍḍhi@51
vusita@(pp dari vasati ) sudah berdiam, terpenuhkan, tersempurnakan sudah, terlakoni.@51
vūpasanta@ (pp dari vūpasammati ) damai, kalem, tenang, hening, reda.@51
vūpasama@m. peredaan, pemadaman, pengenyahan, penenangan, penanggalan, penguasaan atas; hal menjadi reda, tenang, terkuasai, terkendali, lenyap, tersingkir.@51
vega@m.  cepat, sigap, impuls, kekuatan, kecepatan; vegena  (= vegasā ) adv. dengan cepat.@51
vejja@m. dokter, penyembuh, tenaga medis; ~kamma  nt. praktik pengobatan.@51
vejjikā@f.  praktik pengobatan.@51
veṭha@m. pembungkus, pembalut, lilitan.@51
veṭhana@nt.  sekeliling, seputar; serban, ubel-ubel, ikat kepala, tutup kepala; pembungkus, pakaian, selendang, syal.@51
veṇi@f.  kelabang atau kepang; seikat atau selampit rambut.@51
vetta@nt.  ranting, tangkai, benda yang menjalar, rotan.@51
vedanaṭṭa@a.  dilanda kesakitan.@51
vedanā@f.  perasaan, sensasi; sensasi sakit, penderitaan, kesakitan (dukkhavedanā).@51
vedayita@(pp dari vedeti )  dirasakan, dialami.@51
vedalla@nt. bunga rampai, salah satu ragam kitab suci (▶ navaṅgabuddhasāsana ).@51
vedita@(pp dari vedeti )  dialami, dirasakan, dimaklumi.@51
vedeti@merasakan, menangkap, mencerap, mengalami (vediyati ).@51
venayika@m.  seorang nihilis; ahli dalam winaya, terampil dalam winaya, orang mampu mengekang atau mengendalikan diri, orang yang terkekang atau terkendali.@51
vepurisikā@f.  wanita berwujud pria (misalnya berkumis dan berjanggut), wanita yang secara seksual seperti laki-laki, banci.@51
vepulla@nt.  perkembangan penuh, tergenapkan; hal berlimpah, banyak, penuh, kelimpahan; hal membesar, meruak.@51
vematika@a.  merasa ragu-ragu, merasa sangsi, tidak pasti, bimbang.@51
veyyākaraṇa@m. nt. jawaban, penjelasan, pemaparan; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana );  m. orang yang ahli dalam menjelaskan atau menjawab, seorang ahli tata bahasa.@51
veyyāvacca@nt.  pelayanan, perhatian; kerja, pekerjaan, tugas, kewajiban.@51
vera@nt.  kebencian, perseteruan, permusuhan.@51
verañjā@f.  nama sebuah kota.@51
velā@f. waktu, kala, saat; pantai; (per)batas(an), batasan, kendali; tumpukan, kumpulan.@51
veḷu@m.  bambu, buluh, aur. [buluh ← Skt. veṇu]@51
vevacana@nt.  sebutan, julukan, sinonim.@51
vesī (vesiyā)@f.  wanita berkasta rendah; pelacur; ~dvāra  bordil, rumah pelacuran.@51
vessa@m.  orang yang berkasta waisya. [waisya ← Skt. vaiṡya]@51
vehāsa@m.  penyangga; udara, langit, surga; hal berkalang atau melayang di udara.@51
vo@1. kata partikel penekan, mungkin = eva ; 2. bentuk enklitik dari tumhe ; bentuk Ak. Ins. Dat. dan Gen. dari tuvaṃ  (tvaṃ ).@51
vokāra@(vokāra+)   dan pañca@51
votthapana (voṭṭhapana)@nt.  hal menetapkan, menentukan; ~kicca nt. hal berperan untuk menetapkan.@51
vodāna@nt.  hal membersihkan, membuat putih bersih; kemurnian, pemurnian, penyucian.@51
voropeti (oropeti)@mencabut, menghilangkan, membuang; jīvitā voropeti mencabut nyawa.@51
voharati@mengungkapkan, menegaskan, menetapkan, memutuskan, memerintah, mengelola; pass. vohariyati  dipanggil.@51
vohāra@(vohāra+)   perkataan yang sesuai; perdagangan, bisnis; ungkapan umum, istilah umum; dialek; tuntutan hukum, dakwaan, hukum, kewajiban hukum, praktik hukum, ilmu hukum; nama sejenis monster laut yang menawan perahu.@51
vohārika@m.  yang berkaitan dengan tuntutan hukum, hukum, kehakiman, hakim.@51
vyaggha@m.  harimau, macan (Felis tigris).@51
vyañjana@(vyañjana+)   penis); huruf (dari suatu kata) (vyañjanato secara harafiah); bumbu, rempah-rempah, kari, lauk.@51
vyatta@a.  berpengalaman, ulung, pandai, piawai, terpelajar, bijak, cermat, bijaksana.@51
vyanta@a.  tersingkir, terpencil; nt. ujung, akhir.@51
vyantibhavati@berhenti, berakhir, musnah, binasa, lenyap.@51
vyasana@nt.  kemalangan, musibah, malapetaka, keruntuhan, kehilangan, kesengsaraan.@51
vyākaroti@menjelaskan, menjawab; meramalkan.@51
vyāpajjha@a. nt.  kesusahan, gangguan, disakiti.@51
vyāpāda@m.  hal menjahati, niat jahat.@51
vyābādheti (byābādheti)@menganiaya, menyakiti, mengganggu, melukai.@51
vyūha@m.  tumpukan, deretan, pajangan.@51
vyūhati (viyūhati)@berdiri berderet-deret; berpajang, mengambil, membawa pergi, memindahkan, menyingkirkan.@51
sa@1. itu, ia, dia; 2. bahwa, bahwasanya (sā’haṃ dhammaṃ nāssosiṃ bahwa saya tidak mendengar Dhamma); jika, kalau begitu, maka, sungguh, begitu (sa kho so bhikkhu ….  upakkileso ti iti viditvā …. upakkilesaṃ pajahati begitu ia mengenali…).@51
saṃyamati@mengamalkan pengendalian diri;  kaus. saññāmeti mengendalikan, mengekang.@51
saṃyācikā@f.  memohon, minta, yang diminta; saṃyācikāya adv.  dengan meminta bersama, dengan mengumpulkan sumbangan sukarela.@51
saṃyoga@m.  ikatan, belenggu; persatuan, perkumpulan; hubungan (dalam suatu kalimat), susunan atau bentuk.@51
saṃyojana@nt.  ikatan, belenggu.@51
saṃvaṭṭakappa@m.  kehancuran dunia, peleburan dunia ( = parihāyamāno ).@51
saṃvaṭṭati@tergulung; mengalami kehancuran, berakhir, musnah.@51
saṃvaṇṇana@nt.  pemujian, pujian.@51
saṃvaṇṇeti@memuji-muji, menyanjung.@51
saṃvattati@menuntun menuju, mengarah pada, bermanfaat untuk, membuat, mengakibatkan.@51
saṃvattanika@a.  membawa, mendatangkan, menghasilkan, mengakibatkan, sering mengalami.@51
saṃvaddhana@nt.  hal bertambah, bertumbuh, berkembang.@51
saṃvara@m.  pengendalian, pengekangan, pemahaman.@51
saṃvarati@mengendalikan diri, memegang, mengekang.@51
saṃvāsa@m.  tinggal bersama, hidup bersama; persekutuan, kekariban, hubungan seksual, kumpul kebo, sepenghunian.@51
saṃvigga@ (pp dari saṃvijjati ) tergugah, risau karena takut, dengan hati yang bergolak.@51
saṃvidahati@berunding, berkoordinasi, berembuk, memutuskan, menetapkan, menyediakan, menyiapkan, menyajikan, membereskan, menyelesaikan.@51
saṃvidahana@nt.  pengaturan, penyusunan, perencanaan, penetapan, janji; ketentuan, syarat; koordinasi.@51
saṃvidhāvahāra@m.  pencurian terencana; pencurian melalui persekongkolan.@51
saṃsagga@m.  kontak, sentuhan, hubungan, persatuan, pertautan, penyambungan.@51
saṃsaraṇa@nt.  arus, aliran; tirai geser, kerai (bidai) yang dapat disingkirkan.@51
saṃsarati@bergerak atau berpindah terus menerus; datang berulang-ulang, terlahir berulang-ulang.@51
saṃsāmeti@(kaus. dari saṃ  + ṡam ) “memuluskan”, melipat (tikar pembaringan), (senāsanaṃ saṃsāmetvā  merapikan peristirahatan).@51
saṃsāra@m.  perpindahan, hal terus menerus berjalan atau bergerak, peredaran, kelahiran berulang-ulang, samsara. [sengsara ← Skt. saṃsāra]@51
saṃsibbita@ (pp dari saṃsibbati )  terlilit, terjalin.@51
saṃsīdati@tenggelam, hanyut dalam (terpikat akan); tembus.@51
saṃhara@m.  mengumpulkan.@51
saṃhita@(pp dari sandahati )  berkaitan, dilengkapi dengan, memiliki, membawa.@51
sauttara@a. memiliki sesuatu yang melebihinya.@51
sauddesa@a.  dengan penjelasan, dengan (pe)rinci(an), dengan nama sebutan.@51
saka@a.  sendiri; sakaṃ te  semuanya milik Anda (salam untuk raja).@51
sakaṭa@m. nt.  kereta, gerobak.@51
sakadāgāmin@a. ☞sakadāgāmī@51
sakadāgāmī@m.  yang akan kembali sekali lagi (terlahir sebagai manusia), yang telah mencapai tingkat kesucian kedua.@51
sakala@a. semua, seluruh, segenap.@51
sakasaṭa@a. salah, tidak benar, keliru.@51
sakid ( = sakiṃ)@adv.  sekali.@51
sakuṇa@m.  burung.@51
sakuntaka@m.  sejenis burung, sejenis burung hering.@51
sakka@1.  m.  Dewa Sakka, pemimpin para dewa di surga Tāvatiṃsa; 2. m. orang dari suku Sakya.@51
sakkacca(m)@(ger. dari sakkaroti )  adv.  dengan hormat, takzim, cermat, serius, respek.@51
sakkata@(pp dari sakkaroti )  dihormati, diperlakukan atau dilayani dengan layak.@51
sakkaroti@menghormati, menghargai, memuliakan, respek terhadap, menerima keramahtamahan.@51
sakkā@(indekl.)  mampu, bisa, mungkin.@51
sakkāya@m.  adanya badan atau diri; ~diṭṭhi  f.  pandangan bahwa ada suatu diri pada badan ini atau salah satu dari gugusan badan ini, ilusi adanya suatu diri.@51
sakkāra@m.  keramahtamahan, hormat, sembah.@51
sakkuṇeyyata@nt.  kemungkinan, kebolehjadian.@51
sakkoti@mampu, sanggup.@51
sakkharā@f.  (batu) kerikil, kerikil kecil (batu lada); pecahan barang tanah; bijian, butiran; hablur, kristal; gula pasir; batu (hitam/asah).@51
sakkhali (sakkhalikā)@f.  1. lubang telinga; 2. sejenis kue (basah) atau manisan/halwa; penganan; kudapan.@51
sakkhi@ yang (melihat) dengan mata sendiri, sebagai saksi, yang mengalami sendiri; sakkhiṃ karoti menyaksikan dengan mata sendiri, minta (seseorang/genetif) bertindak sebagai saksi;  ~diṭṭha  a. menyaksikan dengan mata sendiri. [saksi ← Skt. sākṣī]@51
sakyaputta@m.  putra kaum Sakya.@51
sakyaputtiya@m.  siswa atau pengikut putra kaum Sakya.@51
sakhila@a.  ramah, bersahabat, menyenangkan.@51
saguṇa@a.  berpadu, bersatu, bertakak (terjadi dari dua helai); saguṇaṃ karoti  menakak.@51
sagotta@m.  sanak, kaum, marga.@51
sagga@m. surga, yang terang benderang. [surga ← Skt. svarga]@51
saṃkaḍḍhati@mengumpulkan; mencermati, memeriksa.@51
saṅkati@meragukan, menimbulkan kecurigaan.@51
saṅkappa@m.  pikiran, niat, kehendak, maksud, rencana, pengerahan pikiran. ( = vitakka )@51
saṅkama@m.  lintasan, jembatan, titian.@51
saṃkamati@menjelajahi, melintasi, berpindah, mengoper, mentransfer, mengalihkan, menapak, melangkah, melimpahkan.@51
saṅkampati@bergetar, berguncang, menggegar, menggelatar, bergoyang.@51
saṅkasāyati@menjadi lemah, bersiap, tunduk terhadap.@51
saṅkassara@a.  yang meragukan, bobrok.@51
saṅkāmeti@(kaus. dari saṅkamati ) melewatkan, membuat pergi ke, memindahkan, menggeser, mengganti, menukar; datang atau muncul bersama-sama.@51
saṃkiṇṇa@(pp dari saṅkirati )  a.  tercampur, tidak murni, penuh dengan; bingung, berdesakan.@51
saṅkiya@a.  mencurigakan, cemas.@51
saṃkilesa@m.  noda, kotoran, pencemar (lawan dari visuddhi ).@51
saṃketa@m.  isyarat, persetujuan, perjanjian, tempat yang ditetapkan, tempat berkumpul; saṃketaṃ gacchati  mematuhi perjanjian, datang ke pertemuan;  asaṅketena  tanpa penetapan tempat;  ~kamma nt.  persetujuan, permufakatan. [sengketa ← Skt. saṅketa]@51
saṅkha@m.  1. (kulit) kerang, keong/siput besar, lokan, giwang (siput mutiara); 2. sejenis tanaman air; ~likhita  terpoles atau mengkilap seperti kulit kerang (siput mutiara), laksana kulit kerang nan gemilap; cemerlang, sempurna. [sangka ← Skt. saṅkha]@51
saṅkhaya@m.  kemusnahan, kelenyapan, sirna, pengakhiran.@51
saṇkhalikā@f.  rantai.@51
saṅkhā@f.  pembilangan, penghitungan, penaksiran; bilangan; tentuan, definisi, kata, nama; saṅkhaṃ gacchati  dirumuskan, dikatakan, disebut, dimaksud, dibilang; saṅkhaṃ na upeti (nopeti) tak dapat disebut sebagai, tidak dihitung sebagai, tidak dianggap sebagai, tidak dapat ditentukan sebagai.@51
saṅkhāta@(pp dari saṅkhāyati )  disepakati sebagai, dihitung sebagai, dianggap, dinamai, disebut.@51
saṅkhāyati@muncul; menghitung; ger. saṅkhāya  setelah mempertimbangkan, merenungkan, mencermati.@51
saṅkhāra@m.  1. pl. semua (fenomena-fenomena) yang berkondisi (citta, cetasikā, rūpa); aniccā vata saṅkhārā; 2. faktor-faktor mental, bentuk-bentuk mental (batin), yang meliputi seluruh cetasika kecuali perasaan (vedanā), dan persepsi (saññā); salah satu dari lima khandha (agregat atau kumpulan) kemelekatan; unsur pembentuk; 3. niat, sañcetanā, abhisaṅkhara, kamma, sebagai faktor kedua dalam dua belas mata rantai paṭicca-samuppāda; faktor penggerak; pendorong; kekuatan (gaya); faktor pembentuk (segala sesuatu).@51
saṃkhitta@(pp dari saṅkhipati )  ringkas, singkat; tidak terpusat, melantur, tanpa perhatian; mengerut, tipis, mengecil, ramping, lampai, langsing.@51
saṅkhepa@m.  penyingkatan, ringkasan, ikhtisar, intisari, rangkuman; kumpulan, himpunan, kelompok, gundukan, tumpukan, timbunan; saṅkhepena  adv. seakan-akan, seolah-olah, bagaikan.@51
saṅgacchati@berkumpul bersama, datang berkumpul, bertemu dengan; ger. saṃgamma .@51
saṅgaṇikā@f.  pergaulan, pergerombolan, sosialisasi, persekutuan.@51
saṅgaṇhāti@terdiri dari, mencakup, meliputi, mengumpulkan, berisikan, , merangkum, mengandung, menyingkatkan, memperlakukan dengan ramah (simpatik), bersimpati dengan, menyokong, berkenan, menolong, melindungi, merangkul.@51
saṅgaha@1. m. hal mengumpulkan, berkumpul, merangkul; kumpulan, cakupan, kelompok; rangkuman, risalah, koleksi (Kitab Suci); keramahtamahan, bantuan, simpati, tindakan (perbuatan) simpatik; saṅgahaṃ gacchati  terdiri dari, termasuk, tercakup dalam; 2. nt. pengendalian, rintangan, ikatan.@51
saṅgahita (saṅgahīta)  @(pp dari saṅgaṇhāti )  terdiri dari, meliputi, mencakup, terangkul, tercakup, terkandung, termasuk, terkelompok, terkumpul, terangkai, terangkum, terangkul, tergolong, terkekang, terkendali, berniat baik.@51
saṅgāma@m.  pertarungan, pertempuran, peperangan. [senggama ← Skt. saṅgāma]@51
saṅgāmeti@bertarung, bertempur, berperang dengan.@51
saṅgāyati@melantunkan, menguncar, menuturkan kembali.@51
saṅgāyana@nt.  hal melantunkan, menguncarkan, menuturkan kembali; Konsili Buddhis.@51
saṅgāhaka@a.  mengumpulkan, merangkul, merangkum, melakukan perbuatan simpatik; sais.@51
saṅgha@m.  kumpulan, rombongan, persamuhan, peguyuban; sanggha, persamuhan para bhikkhu.@51
saṅghaṭṭana@nt.  (f. saṅghaṭṭanā )  hal beradu bersama, kontak, tabrakan, persenggolan, pembenturan.@51
saṅghāṭī@f.  jubah luar (berlapis ganda), sangghati.@51
saṅghāta@m.  hal menghantam, membunuh, memperadukan, memetik (jari); pengumpulan, kumpulan, agregat; nama dari salah satu dari delapan neraka utama.@51
sace@jika, apabila, kalau.@51
sacca@a.  benar, betul; sebetulnya, sesungguhnya; nt. kebenaran, alasan. [setia ← Skt.  satya]@51
saccavādin@a.  yang selalu mengatakan yang sebenarnya, jujur.@51
sacchikaroti@menyaksikan sendiri; mewujudkan; mengalami sendiri. [saksi ← Skt. sākṣin]@51
sacchikiriyā@f.  realisasi, perwujudan, hal mengalami.@51
sajjita@(pp dari sajjeti )  dikirim, diberangkatkan, dilepaskan, dikeluarkan, diberikan, disiapkan, tercukupi.@51
sajjhāya@m.  pengulangan, penghafalan, belajar, mempelajari.@51
sañcaraṇa@nt.  hilir mudik, tempat pertemuan; lalu lintas.@51
sañcaritta@nt.  bolak-balik, bertindak sebagai perantara atau penghubung.@51
sañcalati@tak stabil, goyah, gual-gail, labil, gelisah; kaus. sañcāleti menggoyahkan, mengguncang.@51
sañcicca@adv.  dengan sengaja, dengan sadar, secara terencana.@51
sañcetanika@a.  dengan sengaja.@51
saṃcopana@nt.  hal menyentuh, menjamah, bergerak, penggerayangan, hal berkeliaran.@51
sañjānana@nt.  (sañjānanā  f.)  hal mengetahui, mencerap, menangkap, mengenali; sifat, ciri.@51
sañjānāti@mengetahui, menyadari, menginsafi, mencerap; berpikir, menduga, mengira; memanggil, menyebut, menamakan, memberi nama panggilan.@51
sañjāyati@dilahirkan, dihasilkan.@51
sañjhā@f.  senja. [senja ← Skt. sandhyā]@51
saññā@f.  pengertian, kesadaran, pencerapan, persepsi, pengenalan, penyadaran; konsepsi, ide, gagasan, pikiran; tanda, isyarat, kesan, ingatan.@51
saññāpeti@(kaus. dari sañjānāti )  mempermaklumkan, memberi tahu, mengajar; memprotes, membantah, membujuk, meyakinkan, mengesankan, membuat terkesan; menenangkan, menenteramkan, mendamaikan.@51
saññin@a.  sadar, menyadari, menangkap, memiliki persepsi.@51
saṭṭhi@enam puluh.@51
saṭha@a.  licik, suka menipu atau mengelabui; m. tipuan.@51
saṇikaṃ@adv. perlahan-lahan, pelan-pelan, berangsur-angsur, dengan lembut.@51
saṇṭhapeti (saṇṭhāpeti)@(kaus. dari santiṭṭhati ) membereskan, mendirikan, menertibkan, mengatur, melipat (melempit).@51
saṇṭhāna@nt.  bentuk, susunan, posisi, sifat (dasar), wujud, rupa, penampakan; bahan bakar; peristirahatan, balai pertemuan, ranah publik (pasar).@51
saṇḍa@m.  onggokan, kumpulan, rumpun, belukar.@51
saṇḍāsa@m.  pinset, penjepit, capit, sepit, angkup.@51
saṇha@a.  mulus, lembut, halus; sopan, santun, ramah.@51
sata@a.  ingat, waspada, eling, awas, penuh sati, sadar; nt.  seratus;  ~padī f. lipan, halipan, kelabang; ~sahassa nt. seratus ribu.@51
sataṃ@bentuk gen. pl. dari “sant ’, ‘of the true ones’ = santānam .@51
sati@f.  ingatan, keawasan, kewaspadaan, kesadaran (diri), batin nan terjaga, tak leka (dari), hal eling atau ingat, perhatian murni, sati (upaṭṭhitā sati  batin yang awas, penuh sati, dengan eling, dengan sati tertegak).@51
satimant@a.  dengan sadar, dengan awas,waspada, eling, dengan penuh sati.@51
satta@a. 1. tujuh; [sapta ← sapta]; 2. (pp dari sajjati ) melekat pada menempel pada; 3. (pp dari sapati ) terkutuk, disumpahi;  m. makhluk hidup; jiwa; inti (substansi). [satwa ← sattva]@51
sattama@1.  a. terbaik, terunggul, terhebat; 2. ketujuh, ke-7, VII.@51
satti@f.  1. kemampuan, kekuatan, kesaktian; 2. pisau, belati, pedang; tombak, lembing. [sakti ← Skt. ṡakti]@51
sattha@1. nt. senjata (tajam), pedang, pisau; 2. nt. ilmu, seni, pengetahuan [sastra ← Skt. ṡāstra];3. karavan, kafilah; 4. (pp dari sāsati ) diberitahu, diajari; 5. a. mampu, cakap, kompeten;  bernapas.@51
satthar@m.  guru.@51
satthi@f.  paha.@51
sadā@adv.  selalu, senantiasa.@51
sadisa@a.  mirip, seperti, sama.@51
sadda@m.  suara, bunyi; kata (ayaṃ hi pariyāya-saddo desanāvāra-kāraṇa vattati); ~lakkhaṇa  etimologi; ~vidū ahli tatabahasa. [sabda ← Skt.  ṡabda]@51
saddahati@mempercayai, meyakini.@51
saddha@a.  percaya, yakin, beriman; mudah percaya, mudah diperdayai; upacara pemakaman untuk menghormati keluarga yang telah meninggal dengan mempersembahkan makanan dan hadiah kepada para brahmana.@51
saddhamma@m.  Dhamma nan sejati, kebenaran atau ajaran yang sejati (sesungguhnya).@51
saddhā@f.  keyakinan, kepercayaan, iman; ~deyya  nt. pemberian atau derma atau persembahan berdasarkan keyakinan, manipulator keyakinan (theft of faith).@51
saddhiṃ@bersama-sama.@51
saddhivihārika@m.  rekan sepenghunian, rekan sesama bhikkhu; murid (dari upajjhāya ), murid pendamping.@51
sanivāra@m.  Hari Sabtu.@51
sant@(ppr dari atthi )  1. ada, eksis; 2. baik, bagus, benar.@51
santa@1. (pp dari sammati ) tenang, kalem, damai, murni; 2. (pp dari sammati ) lelah, capai, lesu, lunglai.@51
santaka@a.  1. milik; karena, lantaran; di bawah (kekuasaan), dalam lingkup; 2. terbatas, berhingga.@51
santati@f.  kesinambungan, kelangsungan, kontinuitas, proses, garis silsilah atau keturunan.@51
santappati@dipanasi, dibuat kesal; berduka cita, bersedih hati; kaus. santappeti  membakar, menghanguskan, menyiksa; memuaskan, menyenangkan. [santap ?]@51
santāna@nt. (pen)jalaran, percabangan; sulur, carang; satu di antara lima pohon surgawi; kontinuitas, rangkaian, rentetan, silsilah.@51
santika@nt.  sekitar, seputar, dekat, di depan, dalam kehadiran, di hadapan.@51
santikā@f.  sejenis permainan; “spellicans“ atau “spillikins“.@51
santiṭṭhati (saṇṭhahati, saṇṭhāti)@berdiri, berdiri diam, tetap, terus; muncul; ditegakkan, didirikan, ditertibkan, diatur; melekat pada, tertambat pada, berkukuh pada; menunggu, menantikan.@51
santuṭṭhi@f.  kepuasan, marem (puas hati, senang).@51
santuṭṭhitā@f.  keadaan puas.@51
santhata@(pp dari santharati ) tersebar, bertaburan dengan, ditutupi, dilingkupi, berpelapis, terbentang, terentang, ditebar.@51
santharati@menebarkan, membentangkan, menutupi, melapisi; kaus. santharāpeti menyebabkan terbentang.@51
sandati@mengalir.@51
sandamānikā@f.  kereta pertempuran atau perang.@51
sandahati@menempatkan bersama, menghubungkan, menyusun.@51
sandiṭṭha@(pp dari sandissati )  tampak bersama, bersahabat, kenalan.@51
sandissati@tampak bersama, terlibat dalam, cocok dengan, bersesuaian dengan, hidup sejalan dengan, hidup seiring dengan;  kaus. sandasseti mengajar, mewejang, membandingkan, mencermati, memeriksa.@51
sandhāna@nt.  persatuan, persekutuan, persahabatan, ikatan, belenggu; menyatu berkesinambungan (manifestasi dari citta).@51
sandhāya@setelah dipadukan, sehubungan dengan, dengan merujuk pada, terhadap, berhubungan dengan.@51
sandhi@m. f.  penyatuan, perpaduan, penyambungan; lubang, penembusan, penerobosan; jurang; sambungan; gabungan; sandi. [sandi ← Skt. sandhi]@51
sannipatati@berkumpul, datang bersama-sama; kaus. sannipāteti mengumpulkan, mengadakan pertemuan; kaus. II  sannipātāpeti menyebabkan diadakan pertemuan atau dipanggil.@51
sannipāta@m.  penyatuan, perpaduan, kejadian yang kebetulan; orang-orang yang berkumpul, pertemuan, kumpulan, perkerumunan; kumpulan cairan lendir tubuh; sanding kata.@51
sannibha@a. mirip, seperti.@51
sannisajjā@f.  tempat pertemuan.@51
sannisinna@ (pp dari sannisīdati ) duduk bersama, menjadi mapan.@51
sannisīdati@terduduk, mereda; kaus. sannisādeti  menenangkan, meredakan; kaus II. sannisīdāpeti  menghentikan.@51
sannissita@a.  berlandaskan, berdasarkan, berkaitan dengan, berhubungan dengan, bergantung pada, bersandar pada, ditopang oleh.@51
sapatta@m.  bermusuhan, lawan, rival, saingan, musuh bebuyutan.@51
sapattī@f.  co-wife; sesama istri.@51
sapadānaṃ@adv.  “dengan langkah yang sama” (tanpa sela); berkesinambungan, sinambung; sapadānaṃ carati  pergi berpindapata tanpa selangan atau bersela, berjalan dari rumah ke rumah.@51
sappa@m.  ular.@51
sappāya@a.  layak, bermanfaat, cocok, sesuai, pantas;  nt. sesuatu yang bermanfaat, menolong, manfaat; ~kiriyā  memberi obat.@51
sappi@nt.  gi, cairan mentega, mentega cair, mentega jernih, minyak samin; ~maṇḍa kekat atau krim mentega jernih, kepala gi.@51
sappurisa@m.  orang yang baik, orang yang berguna. (= ariya )@51
sabala@a.  berbintik-bintik, bermosaik, beraneka ragam (warna).@51
sabba@a.  semua, seluruh, segenap, setiap; sabbena  sabbaṃ segala-galanya, sama sekali; ~nāma kataganti orang; ~lahusa  teringan.@51
sabbaññū@a. yang mengetahui semuanya; m. Sang Maha Tahu.@51
sabbattha@adv.  di mana-mana, dalam kondisi apa pun@51
sabbatra@☞  sabbattha@51
sabbadā@adv.  selalu, senantiasa, setiap hari.@51
sabbaso@a.  menyeluruh, utuh.@51
sabrahmacarin@a.  rekan sepenghidupan suci.@51
sabhā@f.  balai, balai pertemuan; penginapan atau pemondokan umum (khalayak ramai), pesanggrahan.@51
sabhāga@a.  umum, sekelompok, sejenis, sama, mirip, seperti.@51
sama@m.  ketenangan, ketenteraman; kelelahan;  a.  sama, rata, datar; mirip, seperti, serupa; seimbang, tegak lurus, adil; sebanding, sama tengah; semuanya (samatiṃsa  semuanya tiga puluh; tiga puluh secara keseluruhan; samena dengan adil; samaṃ sama(-sama). [sama ← Skt. sama]@51
samaka@a. sama; adv. secara sama.@51
samagga@a.  bersatu, serasi, rukun, akur, sebati (bersatu padu, sangat mesra, sesuai).@51
samaṅgin@a.  dianugerahi dengan, memiliki; samaṅgībhūta nt. memiliki, dilengkapi dengan; samaṅgi karoti  memperlengkapi dengan.@51
samacārin@a. hidup dalam kedamaian.@51
samaṇa@m.  ‘orang yang berdaya-upaya’, orang yang meninggalkan kehidupan berumah tangga dan hidup mengembara atau bertapa (di hutan) mengendalikan nafsu dan bermeditasi; pertapa.@51
samaṇaka@m.  petapa jahat atau hina; ‘sedikit mirip petapa’.@51
samatitthika@a. rata atau setinggi dengan tepian alias cukup penuh.@51
samatta@1. nt. kesamaan, keseimbangan, keadilan; 2. a. selesai, tuntas, beres, kelar, lengkap, menyeluruh, sempurna.@51
samattha@a. mampu, kuat, berdaya.@51
samatha@m.  penenangan, ketenangan batin; peredaan; penyelesaian, pengendapan.@51
samanugāhati@menanyakan alasannya, menanyakan secara saksama, mendesak, mencecar, menyidik; ppr. med. samanuggā-hiyamāna  didesak.@51
samanupassati@melihat.@51
samanubhāsati@berbicara, merundingkan, mempelajari bersama-sama, mengajak bicara, menasihati, menegur.@51
samanussarati@mengenang, mengingat.@51
samanta@a.  semua, seluruh, sepenuhnya, segenap, sekeliling, semua sisi; samantā vesāliṃ seantero Wesali; samantato nagarassa seluruh kota; samāsamantato  segenap, di mana-mana.@51
samannāgata@a.  yang diikuti oleh, memiliki, yang dianugerahi dengan, yang disertai dengan, yang diliputi, yang penuh dengan.@51
samappita@(pp dari samappeti )  diserahkan, dikirimkan, diberikan; dianugerahi dengan, memiliki, dipengaruhi, memiliki sifat.@51
samappeti@menyampaikan, memberikan, mengirimkan, melakukan, menaruh.@51
samaya@ m. saat; kala; kondisi; konggregasi (himpunan); perkumpulan; musim; kesempatan; akhir. [Menurut Buddhaghosa, samaya mempunyai sembilan arti : (1) samavāya (hal berkumpul, berjumpa bersama); (2) khaṇa (kesempatan); (3) kāla (musim atau waktu; saradasamaya); (4) samūha (massa, gerombolan); (5) hetu (kondisi); (6) diṭṭhi (pandangan atau pendapat); (7) paṭilābha (perolehan); (8) pahāna (pengenyahan atau penanggalan); (9) paṭivedha (penembusan).@51
samassasati@dibuat segar; kaus. samassāseti  menenangkan, meringankan, menyegarkan, melegakan.@51
samāgacchati@bertemu bersama, berkumpul, masuk dengan, bersua, pergi, melihat.@51
samācāra@m.  perilaku, tingkah laku, sepak terjang, kelakuan, tindak-tanduk.@51
samādapeti@membuat atau menyuruh mengambil, menggugah, menghasut, mendorong, membangkitkan.@51
samādahati@mengumpulkan, memusatkan (pikiran), memasuki samadhi; tenang, menyalakan.@51
samādāna@nt.  hal mengambil, membawa, menjalankan, mengamalkan, bertekad, berjanji.@51
samādiyati@mengambil untuk dijalankan, menjalankan, mematuhi, mengusung, mengamalkan, berikhtiar, berupaya; samādāya vattati berikhtiar dan mempraktikkan.@51
samādisati@menunjukkan, memerintahkan, menyuruh.@51
samādhāna@nt.  menempatkan bersama, menyandingkan, menambatkan, terpusat, konsentrasi, selaras, serasi.@51
samādhi@m.  konsentrasi (pikiran/batin); samadhi. [semadi ← Skt. samādhi]@51
samādhiyati@pass. dari samādahati .@51
samāna@sama, mirip; ada, hadir; sejenis dewa;  ~upajjhāya upajjhaya bersama-sama.@51
samānatta@a.  seimbang, setara, kebersamaan.@51
samānattatā@f.  keseimbangan, kesetaraan, kebersamaan, sehidup sependeritaan (sepenanggungan).@51
samāpajjati@mencapai, memasuki; menjadi, terjadi; mewujudkan, menjelmakan, melakukan, membuat terjadi.@51
samāpatti@f. pencapaian; tingkatan atau taraf meditasi.@51
samāpana@nt.  dorongan, hal tergugah, tergerak.@51
samāpanna@(pp dari samāpajjati ) setelah mencapai, tiba pada, memasuki, bergabung dalam.@51
samāpeti@menyelesaikan, membereskan, menuntaskan, mengakhiri.@51
samāyoga@m.  penggabungan, penyatuan, penjalinan.@51
samāhita@(pp dari samādahati )  tenang, mantap, terkendali, terpusat; telah mencapai; yang telah diletakkan/dipasang. (samāhitattā eva ca ekaggaṃ acalaṃ nipphandaṃ)@51
samiñjati@membekuk, menekuk (melipat), digerakkan, diguncang.@51
samukkheṭita@a.  dinistakan, dicampakkan.@51
samugga@m. kotak, keranjang.@51
samugghāta@m.  pencabutan, penghapusan, penyingkiran, pengakhiran, peniadaan.@51
samucchindati@mencabut sampai ke akar-akarnya, memotong, melenyapkan, menghancurkan, menanggalkan.@51
samucchinna@a.  tercabut, terpotong.@51
samuṭṭhahati@timbul, muncul; kaus. samuṭṭhāpeti  memulai, mengemuka, timbul.@51
samuṭṭhāna@nt.  kemunculan, sebab.@51
samuttejeti@menggairahkan, menggembirakan, penuh dengan antusiasme.@51
samudaya@m.  hal muncul, asal-muasal, asal mula; pancaran, pancuran; hasil pendapatan.@51
samudāgama@m.  awal, timbul, hasil; samudāgamato paṭṭhāya  pertama-tama.@51
samudācarati@berlaku, dipraktikkan, diterapkan, berlangsung, terjadi; memperlakukan; berbicara dengan, memanggil, menyapa; mempraktikkan, membual, menyatakan, berkoar.@51
samudāciṇṇa@(pp dari samudācarati )  dipraktikkan, hanyut dalam.@51
samudāhara@nt. percakapan, pembicaraan, ucapan, ungkapan.@51
samudda@m.  samudra, lautan. [samudra ← Skt. samudra]@51
samuddharati@mengangkat, mengambil keluar dari, mengambil pergi, mengentaskan, menyelamatkan dari.@51
samupeta@a.  sepenuhnya dianugerahi dengan, memiliki, bersifat, tergolong.@51
samullapati@membicarakan, bercakap-cakap.@51
samūhanati@mengenyahkan, mencabut, menghapus, menghilangkan, membatalkan, meniadakan, mengakhiri.@51
sameti@berkumpul bersama, bertemu, bergabung dengan, bersatu, berpadu, mengetahui, mempertimbangkan, memikirkan; ger. samecca  bergabung bersama, setelah dikuasai, dipelajari.@51
samodhāneti@menggabungkan, mengumpulkan, menghubungkan, mengaitkan.@51
sampakampati@bergetar, berguncang, menggegar, menggelatar, bergoyang.@51
sampajañña@nt.  pemahaman jernih; (Menurut DA. 1:183 ada empat jenis : sātthaka, sappāya, gocara, dan asammoha).@51
sampajāna@a.  pemahaman nan jelas, jernih memahami (sata-sampajāna  dengan penuh sati dan pemahaman); tahu betul, dengan penuh kesadaran, penuh pemahaman, dengan sengaja (sampajāna-musāvāda berbohong dengan sengaja).@51
sampajjati@mencapai, berhasil, berjaya, sukses; menjadi, terjadi.@51
sampajjalita@a.  menyala, terbakar berkobar-kobar.@51
sampatta@(pp dari sampāpuṇāti )  tercapai, tiba, hadir, ditemui, dialami.@51
sampatti@f.  keberhasilan, sukses, capaian, hal mewujudkan, kebahagiaan, berkah, keberuntungan, kemujuran; keunggulan, kecemerlangan; keluhuran, kemuliaan, kemakmuran, kesejahteraan.@51
sampadā@f.  capaian (hasil yang dicapai), sukses, keberhasilan (prestasi), kebahagiaan, berkah, keberuntungan, kemujuran.@51
sampadāna@nt.  bentuk datif.@51
sampaduṭṭha@a. bersekongkol, berselingkuh, berbuat jahat.@51
sampanna@(pp dari sampajjati ) berhasil, penuh dengan, dilengkapi dengan, dibekali dengan, dilingkupi; lengkap, sempurna, memiliki, berbekal, patut (tayidaṃ bho gotama na sampannam evā ti), cocok, lezat. [sempana ← Skt. sampanna]@51
sampayutta@m.  berasosiasi dengan, bersekutu dengan, bertautan dengan, berhubungan dengan, berkaitan dengan.@51
sampayoga@m.  persatuan, persekutuan.@51
samparāya@m.  keadaan mendatang, dunia berikut.@51
samparāyika@a.  berhubungan dengan dunia mendatang.@51
sampavāreti@membuat menerima, menawarkan, menyuguhi, melayani dengan.@51
sampavedhati@bergetar, berguncang, menggegar, menggelatar, bergoyang.@51
sampasādana@nt.  ketenangan, kedamaian, keheningan, kebeningan batin, kepercayaan diri.@51
sampahaṃsati@gembira, riang; kaus. sampahaṃseti  menggembirakan, menyenangkan, menghibur, mendorong, membesarkan hati.@51
sampādeti@(kaus. dari sampajjati )  memperoleh, mendapat(kan), mampu menghasilkan (menelurkan); berupaya, berjuang, berupaya meraih.@51
sampāpuṇāti@mencapai, meraih, tiba di, bertemu dengan; kaus. sampāpeti  membawa, membuat mencapai.@51
saṃpīḷeti@menekan, menggencet, mencemaskan, menindih, menghimpit.@51
sampha@a. nt.  tidak keruan; samphaṃ bhāsati berbicara tidak keruan, omong kosong, bercakap angin; ~ppalāpa  pembicaraan yang tidak keruan, omong kosong.@51
samphassa@m.  kontak, sentuhan, reaksi.@51
sambahula@a.  banyak, beberapa, sejumlah.@51
sambāhati@menggosok, melangir (mencuci kepala), berkeramas.@51
sambodhi@f.  pencerahan (batin); kebijaksanaan tertinggi.@51
sambhajati@berkawan dengan, bergaul dengan, mencintai, melekat pada, lengket pada, sayang pada, setia akan.@51
sambhata@m.  hal mengumpulkan, menyimpan; nt. simpanan, perbekalan, perlengkapan.@51
sambhatta@(pp dari sambhajati ) sayang, setia, teman.@51
sambhavati (sambhuṇāti, sambhoti)@dihasilkan, muncul, timbul, pantas, cocok, kompeten, layak, hadir, menyaksikan, berada bersama-sama, mampu.@51
sambhāra@m.  timbunan, produk, persiapan, bekal, pelengkap, perangkat; bahan, material, bahan baku; unsur, elemen, komponen, faktor pokok; penghimpunan.@51
sambhāveti@(kaus. dari sambhavati )  melakukan, mengusahakan, mencapai, (melakukan) dengan sepenuh hati, meraih, menghasilkan, menelurkan, mempertim-bangkan (menganggap), menghormati, menghargai.@51
sambhāsā@f.  percakapan, perbincangan, pembicaraan.@51
sambhindati@mencampurkan.@51
sambhinna@(pp dari sambhindati ) tercampur; (wanita) yang jenis kelaminnya tidak jelas, (wanita) yang berlubang campur (anus dan lubang kemaluan bercampur); terkuras, pecah.@51
sambhoga@makan, hidup bersama dengan, mengecap, menyantap, menikmati.@51
samma@1. panggilan keakraban; 2. canang, gembreng; 3. (= sammā ); ~kāra a. secara benar.@51
sammajjati@menyapu, menggosok, mengusap.@51
sammajjana@nt.  hal menyapu.@51
sammaṭṭha@(pp dari sammajjati )  disapu, dibersihkan, tergosok, mulus.@51
sammata@(pp dari sammannati )  dianggap sebagai; dihormati; disetujui, disahkan, dibenarkan.@51
sammaddati@menginjak-injak, merapah.@51
sammannati@menyetujui, membenarkan, mengiakan, menyungguhkan, mengizinkan, mengabulkan, mengesahkan, memilih; menghormati.@51
sammasati@menyentuh, menangkap, mencengkeram, mencerap, memahami, menguasai; merenungkan, bermeditasi atas.@51
sammasana@nt.  penangkapan, penggenggaman, penguasaan, pemahaman; ~cāra  m. lingkup atau ranah pemahaman.@51
sammā@secara pantas, benar, sesuai, menyeluruh, seutuhnya, betul, terbaik, sempurna; ~sambodhi f. pencerahan sempurna; kebuddhaan tertinggi.@51
sammiñjati (sammiñjeti) @ menekuk, melipat.@51
sammiñjita@(pp dari sammiñjati )  menekuk.@51
sammukha@a.  berhadap-hadapan dengan, dalam kehadiran, hadir, di depan; sammukhā  (abl.) berhadapan, sebelum, di depan; di depan persamuhan lengkap orang-orang yang memenuhi syarat.@51
sammuṭṭha@(pp dari sammussati ) lengah, lalai, lupa, alpa, tidak ingat (= na ssarati).@51
sammuti@f.  persetujuan, izin; pilihan, utusan; penetapan (perbatasan/sempadan); pendapat umum, permufakatan yang secara umum diterima; opini, doktrin; definisi, penjernihan, pernyataan; ungkapan populer, kata atau nama belaka; tradisi.@51
sammussati@lupa, lengah.@51
sammūḷha@m.  terhanyut (tergila-gila), bingung.@51
sammodati@turut berbahagia, bersuka cita, saling menyalami, beruluk-salam, ramah menyalami.@51
sammodanīya@a.  menyenangkan, bersahabat, tulus, ramah, akur.@51
sayati@1.  (= seti)  berbaring; 2. bersandar pada.@51
sayana@nt.  hal berbaring, tidur; ranjang, dipan, tempat tidur.@51
sayaṃ@diri sendiri; oleh diri sendiri; sayambhū m. Sang Pencipta, yang mewujud dengan sendirinya. [saya ← Skt. svayaṃ]@51
sara@1. m. alang-alang Saccharum sara; 2. m. panah (yang terbuat dari alang-alang jenis tersebut); 3. a. berjalan, bergerak, mengikuti; cair, mengalir; 4. m. nt. danau; 5. a. mengenang, mengingat;  m. suara, bunyi, intonasi, aksen, vokal, huruf hidup. [suara ← Skt. svara]@51
saraṇa@nt.  perlindungan, naungan, lindungan, pertolongan, bantuan. [sarana ← Skt. ṡaraṇa]@51
sarati@1. berjalan, mengalir, lari, bergerak sepanjang;  kaus.  sāreti membuat berjalan, menggosok, mencampurkan; 2. ingat; kaus. sāreti  mengingatkan; 3. menggilas.@51
sarikkhaka@a.  sesuai dengan, mirip, seperti. (=sarikkha )@51
sarīra@nt.  badan (jasmani); mayat, jasad; tulang; relik. [sarira ← Skt. ṡarīra]@51
sarūpa@a.  yang berwujud sama, serupa; memiliki badan (wujud); sarūpato  dari sisi dirinya sendiri (from their own side). [serupa ← Skt. sarūpa]@51
salākahattha@m.  tebak gambar telapak.@51
salākā@f.  panah; batangan kecil; pasak; bilah atau helai rumput; kupon atau kartu suara undi; bingkai payung; sejenis jarum; penis; batang kayu pipih kecil yang digunakan dalam pemungutan suara atau pembagian makanan; ~vutti f.  hidup bersandar pada tiket makanan atau hidup bersandar pada helaian rumput (undian kupon makanan).@51
salila@nt. (aliran) air.@51
salla@nt.  anak panah, tusukan, cocok, sunduk, pacak.@51
sallakkheti@mengamati, memeriksa, mencermati; mencamkan; memahami; menyadari, menyimpulkan, merenungkan, mempertimbangkan; kaus. sallakkhāpeti  membuat diperhatikan, membujuk, membuat mempertimbangkan.@51
sallīna@a.  lamban, ciut-menyusut.@51
sallekha@m.  penghapusan, penyingkiran atau pengenyahan (kotoran batin).@51
sasa@m.  kelinci.@51
sasī@m.  bulan.@51
sasura@m.  ayah mertua.@51
sassa@nt. padi-padian; panen; ~kamma  nt. cocok tanam; ~kāla  m. waktu panen, saat panen.@51
sassata@a.  langgeng, kekal, abadi; ~vada  m. (penganut) paham keabadian; eternalis, eternalisme.@51
sassū (sassu)@f.  ibu mertua.@51
saha@bersama, dengan; ~dhammika  a. rekan sesama Dhamma, yang sesuai dengan Dhamma, seturut Dhamma.@51
sahattha@m.  dengan tangan sendiri.@51
sahavya@nt.  hal menjadi sahabat atau sekutu. [sahabat ← Skt. sāhāyya]@51
sahavyatā@f.  hal menjadi sahabat atau sekutu; ditengah-tengah.@51
sahasā@adv.  cepat-cepat, terburu-buru, tiba-tiba; tanpa berpikir panjang.@51
sahassa@nt. seribu.@51
sahāya@m.  kawan, rekan, teman, sobat. [sahaya ← Skt. sahāya]@51
sahāyaka@a.  kawan, teman, sekutu.@51
sāka@nt.  1. sayur-sayuran, tanaman pot, tanaman herba; 2. pohon jati (Tectona grandis).@51
sākaccheti@membicarakan, membahas, mendiskusikan.@51
sākuṇika@m.  penangkap burung.@51
sākyamuni@m.  orang suci dari suku Sakya, Buddha Gotama.@51
sākhā@f.  ranting, cabang; ~bhaṅga  seikat kayu bakar.@51
sāgara@m.  lautan, samudra, segara. [segara ← Skt. sāgara]@51
sājīva@nt.  tata hidup; jalan hidup; tata aturan yang mengatur tata kehidupan para bhikkhu; ~samāpanna  yang telah bergabung dalam jalan hidup.@51
sāṭaka@m.  pakaian luar, jubah, kain; pelapis, lamina, kulit, jangat.@51
sāṇī@f.  kain rami; sekat, tabir, tirai, tenda; sāṇipasibbaka  kantung kain rami.@51
sāta@a.  menyenangkan; nt. kesenangan, kegembiraan, enak.@51
sāttha@a.  berguna, bermanfaat; bermakna.@51
sādiyati@menikmati, menyetujui, membiarkan, membolehkan, berkenan, bersedia.@51
sādhāraṇa@a.  umum, bersama.@51
sādhita@(pp dari sādheti )  telah dirampungkan, diselesaikan, dijalankan, disiapkan.@51
sādhiya@a.  yang dapat dirampungkan, dibereskan, diselesaikan.@51
sādhu@a.  baik, bagus, bajik, bermanfaat, saleh, berguna, silahkan.@51
sādhukāra@m.  hal menyoraki, hal mengucapkan sādhu tanda setuju atau mendukung.@51
sādheti@menyelesaikan, merampungkan, membuat tumbuh berkembang, menyiapkan, melakukan, melaksanakan, mengadakan, menjalankan, mengakibatkan, memperjelas, menyimpulkan, membuktikan, membereskan utang, menarik kembali uang,@51
sāpateyya@nt.  harta kekayaan.@51
sāma@1. m. hitam, gelap; kuning, keemasan, indah; 2. nt.  nyanyian, kidung (suci), kebaktian.@51
sāmaṃ@sendiri, diri sendiri.@51
sāmaggī@f.  lengkap, paripurna, bersatu-padu, manunggal.@51
sāmañña@1. nt. yang umum, yang awam, yang sama, kesamaan, sebutan umum, kebersamaan, kesatuan, persesuaian, garis besar; 2. a.  sesuai dengan kepetapaan sejati; berupaya menjadi seorang samana atau petapa;  nt. kesamanaan, kepetapaan, status atau kehidupan kepetapaan.@51
sāmaṇera@m.  samanera, calon bhikkhu.@51
sāmaṇerī@f.  seorang calon bhikkhuni yang belum cukup umur untuk diupasampada menjadi bhikkhuni.@51
sāmanta@a.  bersebelahan, berdekatan, setara, bersambungan.@51
sāmāka@m.  sejenis padi-padian, Panicum frumentaceum.@51
sāmika@m.  pemilik; suami, wali; yang empunya, sponsor.@51
sāmin@m.  pemilik, penguasa, tuan; wali; suami. [suami ← Skt.svāmin]@51
sāmīci@f.  sesuai, pantas, patut, ~kamma  perbuatan yang pantas yakni penghormatan.@51
sāya@m.  senja atau malam; adv. sāyaṃ  pada malam hari.@51
sāyaṇha@m.  sore hari; petang (pk 3-5).@51
sāyati@mencicipi, mengecap, makan.@51
sāyaniya@m.  cicipan, rasa; makanan lezat, enak, sedap.@51
sāra@a.  yang esensial (perlu sekali, mendasar, hakiki); yang terbaik, yang terunggul, kuat; m. yang terdalam, bagian yang terkeras dari sesuatu, inti batang pohon; kayu jenis terbaik; substansi, intisari, bagian terpilih (sāre patiṭṭhito tegak di atas atau berlandaskan yang paling esensial); nilai. [sari ← Skt. sāra/sārin]@51
sārajjati@terpikat pada, tergila-gila pada.@51
sāratta@(pp dari sārajjati )  bersemangat berapi-api, dengan penuh nafsu, terpikat pada, tergila-gila pada.@51
sārathi (sārathī) @ m.  penjinak hewan.@51
sāraddha@a.  menggebu-gebu, meluap-luap, meledak-ledak, ganas, galak, rusuh. (asāraddha = passaddhattā, vigatadaratho  tenang, bebas dari kegelisahan)@51
sārāṇīya@a.  yang pantas diingat-ingat atau dikenang; sopan, bersahabat, menyenangkan.@51
sāri@m.  buah catur.@51
sāla@m. pohon Sal (?) (Shorea robusta); seraya atau pohon meranti (Shorea leprosula).@51
sālā@f.  aula, ruang yang besar, rumah, balai, gedung; bangsal, kandang.@51
sāli@m.  beras (jenis padi gogo, padi ladang, padi huma).@51
sālohita@m.  sanak famili, kerabat.@51
sāvaka@m.  penyimak, murid, siswa; ~saṅgha  meliputi bhikkhusaṅgha dan saṅgha dewa dan umat awam (siswa Sang Buddha); mencakup pula Ariyasaṅgha.@51
sāvajja@a.  tercela, salah; nt. cela, dosa, kesalahan.@51
sāvatthī @ f. nama ibu kota kerajaan Kosala (salah satu rajanya adalah Raja Pasenadi).@51
sāveti@(kaus. dari suṇāti ) memperdengarkan, memberitahu, menyatakan, mengumumkan, menyebutkan.@51
sāsana@nt.  wejangan, ajaran, petuah, petunjuk, pesan, pengarahan. [sasana ← Skt. ṡāsana]@51
sāsapa@m.  biji moster (mostar).@51
sāhatthika@a.  dengan tangan sendiri.@51
siṃsapā@f.  pohon Dalbergia sisu (pohon yang kuat dan besar).@51
sikkhati@belajar, berlatih, melatih.@51
sikkhamānā@f.  seorang wanita yang sedang menjalani masa percobaan sebelum ditahbiskan menjadi seorang bhikkhuni.@51
sikharaṇī@f.  wanita cacat kelamin.@51
sikkhā@f.  latihan, pelajaran; ~pada nt. peraturan latihan, pokok latihan.@51
sikhā@f.  titik, ujung, puncak; nyala api.@51
sigāla (siṅgāla)@m.  jakal (Canis aureus); serigala. [serigala ← Skt. sṛgāla]@51
sijjhati@berhasil, beres, berfaedah, cocok.@51
siñcati@memerciki, menyirami, mengeluarkan air (dari dalam perahu); pass. siccati .@51
sita@1. a. tajam; 2. (pp dari sayati ) tertusuk; bersandar pada, melekat pada; 3. (pp dari sinoti ) terikat, terpikat; 4. a. putih; 5. nt. senyum.@51
sithila@a.  longgar, relaks, santai (melonggar), leluasa, tunduk, taat.@51
siddha@1.  a.  telah dimasak;  2. (pp dari sijjhati ) telah berakhir, berhasil, selesai; m. sejenis resi yang memiliki kekuatan gaib.@51
sineha (sneha)@m.  cairan kental, cairan yang lengket-lengket, air atau getah tumbuh-tumbuhan; lemak; cinta, kasih, nafsu, keinginan.@51
sippa@nt.  seni, cabang ilmu pengetahuan, keterampilan atau kepandaian.@51
sippālaya@m. nt.  universitas, perguruan tinggi.@51
sibbati@menjahit, menjerumat, menisik.@51
sira@nt. m.  kepala.@51
silā@f.  batu, batu karang.@51
sīgha@a.  cepat; sīghaṃ adv.  dengan cepat.@51
sīta@a. nt.  dingin, sejuk.@51
sītala@a.  dingin, sejuk, tenang; nt. kedinginan; sītalībhāva menjadi dingin.@51
sīmā@f.  batasan, sima.@51
sīla@nt.  sifat, tabiat, perangai, watak, perilaku, tingkah laku; budi pekerti, akhlak, moralitas, tabiat baik, perangai baik. [sila ← ṡīla]@51
sīlana@tenang, mantap.@51
sīlavant@a.  bajik, bermoral, mematuhi sila, berakhlak baik, bersusila.@51
sīliya@nt.  perilaku, tindak-tanduk, karakter, tabiat.@51
sīvathikā@f.  pekuburan, pemakaman; tempat pembuangan mayat.@51
sīsa@nt.  timah; kepala, puncak, bagian tertinggi, depan, judul; titik (bagian) utama; bulir (padi), tongkol (jagung); ~ābhitāpa  kelengar matahari, sakit kepala.@51
sīha@m.  singa. [singa ← Skt. siṃha]@51
sīhī@f.  singa betina.@51
sukara@a.  mudah.@51
sukka@1. m.  planet, bintang; nt. (air) mani, sperma; ~vāra  m. Hari Jumat; 2. a. putih, cemerlang, terang, murni, bagus; ~pakkha  m. paruh terang, suklapaksa.@51
sukkhati@mengering.@51
sukha@nt.  kebahagiaan, kenyamanan, nyenyak, perasaan bahagia, kebahagiaan jasmaniah. [suka ← Skt. sukha]@51
sukhallika@mengumbar nafsu.@51
sukhita@(pp dari sukheti )  bahagia, sejahtera, senang.@51
sukheti@membuat bahagia, membahagiakan.@51
sukhedhita@a.  = sukha  ṭhita  bahagia.@51
sugata@ ( = sugatiṃ  gata ) a.  dalam kondisi atau alam yang bahagia/ menyenangkan; yang beruntung, penuh berkah; yang telah mencapai alam bahagia, yang telah sukses bertempuh.@51
sugati@f. alam bahagia.@51
suṅka@m. nt.  bea, pajak, cukai; laba, keuntungan.@51
suṅkaghāta@m.  pos cukai, tempat penarikan cukai.@51
sucara@a.  mudah, gampang.@51
sucarita@nt.  perilaku benar/baik.@51
sujati@menyakitkan.@51
suñña@a.  kosong, tak berpenghuni, hampa, bukan sesuatu yang substansial, fenomenal; ~āgāra m.  tempat kosong, lokasi tak berpenghuni, tempat yang sunyi atau sepi.@51
suññata@a.  kosong; hampa; tanpa nafsu, niat jahat dan kamma, terutama jiwa atau ego.@51
suṭṭhu@baik.@51
suṭṭhutā@f.  kebaikan, keunggulan.@51
suṇāti@(suṇoti ) mendengar(kan), menyimak; sūyati , suyyati .@51
suṇisā@f.  menantu perempuan.@51
suṇhā@f.  menantu (perempuan).@51
sutta@1. (pp dari supati ) tertidur; nt. tidur; 2. nt. benang, tali, untai; sutta, wejangan (ajaran-ajaran yang dikumpulkan dalam sutta-pitaka); salah satu ragam kitab suci (▶ navaṅga-buddhasāsana ); peraturan (dari pāṭimokkha); bab, bagian, nas, wejangan; syair purba, kutipan; kitab peraturan, buku nas, buku pegangan. [sutra ← Skt. sūtra]@51
suttaka@nt.  benang, untaian manik-manik atau permata.@51
suttantika@a.  yang mahir atau terpelajar atau pakar dalam hal Suttanta.@51
sudda@m.  orang yang berkasta sudra. [sudra ← Skt. ṡūdra]@51
suddha@(pp dari sujjhati ) bersih, murni, bening; sederhana, belaka, semata-mata, takcampur.@51
suddhika@a.  yang berhubungan dengan kesucian, suci, murni, polos, sahaja, sederhana, ortodoks, tertata rapi, bergaris tepi (berpembatas).@51
sudhā@f.  makanan para dewa, (air) amerta; kapur (lime), semen, plester dinding, pemutihan.@51
sunakha@m.  anjing.@51
sundara@a.  indah, bagus, baik.@51
supati (suppati, soppati)@tidur.@51
supina@m. nt.  mimpi; ~anta m. mimpi; supinantena  sedang dalam mimpi.@51
subha@a.  cemerlang, elok, penuh berkah, beralamat baik, menyenangkan, menarik (hati), baik;  nt. kesejahteraan, kebaikan, hal menyenangkan, kebersihan, keelokan, kesenangan.@51
subhaga@a.  beruntung, cantik, penuh pesona.@51
sumutta@a.  terbebas dengan baik, betul-betul lepas (dari).@51
sumbhaka@a.  yang tercampak, yang terjatuh, retak, peot.@51
suyyati@pass. dari suṇāti .@51
sura@m.  dewa.@51
surā@f.  minuman hasil fermentasi; a. gagah berani; m. pahlawan, matahari.@51
suriya@m.  surya, matahari. [surya ← Skt. sūrya]@51
sulasī@f.  kemangi, lampes, ruku-ruku (Ocimum sanctum); selasih, selasih jantan (?), selasih hitam (?) (Ocimum basillicum). [selasih ← Skt. surasī]@51
suvaṇṇa@a.  berwarna bagus, indah, bagus, menawan hati;  nt. emas, emas lantakan.@51
suve@☞  sve@51
susāna@nt.  pekuburan, pemakaman; tempat peletakan mayat sampai membusuk.@51
susikkhita@a.  yang telah belajar dengan baik, terlatih baik; telah menguasai penuh, mudah dilatih, jinak, patuh.@51
susira@a.  berongga, bergerowong.@51
susu@1. m. bocah, anak laki-laki; 2. suara “susu; suara mendesis; 3. nama sejenis hewan air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sussati','<p class="definition">mengering, melayu, menjadi haus, memudar, layu hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūkara','<p class="definition">m.  babi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūkarika','<p class="definition">m.  penjagal babi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūcaka','<p class="definition">m.  pengadu, pemfitnah, pegunjing, orang berlidah dua, pengadu domba.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūci','<p class="definition">f.  jarum; tusuk konde, pasak sanggul; gerendel pintu; pin, jarum penyemat, peniti, pasak; palang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūnā','<p class="definition">f.  pejagalan, penjagalan, rumah jagal; sūnaghara  rumah jagal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūpa','<p class="definition">m.  sup, kari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sūra','<p class="definition">1. a.  gagah berani;  m.  pahlawan, orang yang gagah berani; 2. m.  matahari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sekha','<p class="definition">(sekkha ) m.  yang sedang berlatih, yang masih perlu berlatih, tak sempurna; yang masih harus belajar, yang belum mencapai kearahatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seṭṭha','<p class="definition">a.  yang terkemuka, unggul, terbaik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seṭṭhi','<p class="definition">m.  kepala serikat sekerja, bendaharawan, bankir, saudagar kaya, saudagar besar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seta','<p class="definition">a. putih, murni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('setaṭṭhika','<p class="definition">m.  bertulang belulang, dilanda bencana kelaparan;  f. jamur, lumut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('setu','<p class="definition">m.  jembatan; jalan lintasan yang ditinggikan melewati rawa-rawa dsb; ~ghāta a.  meruntuhkan jembatan (yang menghubungkan suatu tempat).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sedeti','<p class="definition">(kaus. dari sijjhati )  membuat berpeluh, menghangatkan, menguapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('senā','<p class="definition">f.  pasukan, (bala) tentara, laskar (yang terdiri dari hatthī, assā, rathā, pattī).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('senāsana','<p class="definition">nt. tempat berbaring dan duduk, tempat pernaungan di mana seseorang dapat duduk dan berbaring, tempat pembaringan, tempat tinggal, kediaman, peristirahatan; perlengkapan peristirahatan; ~cārika a.  berkelana dari satu peristirahatan ke peristirahatan lainnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seyya','<p class="definition">a.  lebih baik, lebih bagus.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seyyathā','<p class="definition">adv. seperti, sebagaimana, bagaikan ~pi  sama seperti, sebagaimana, bagaikan; seyyathīdaṃ sebagai berikut, yakni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seyyā','<p class="definition">f.  tempat tidur, ranjang, katil, pembaringan, peraduan; dipan; kasur, tilam, bantal, karpet, seprei, tikar, pelapik lantai, penutup lantai, jangat hewan, kain duduk, lapik duduk, kain penutup; hal berbaring, tidur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sela','<p class="definition">a.  berbatu-batu; m. batu, karang, kristal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sevati','<p class="definition">melayani, bergaul dengan, mengambil jalan, berpaling kepada, mempraktikkan, memeluk, menggunakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sevanā','<p class="definition">f.  hal mengikuti, bergaul dengan, hidup bersama; hal meladeni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sevāla','<p class="definition">m.  tanaman lumut Blyxa actandra; rumput air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sesa(ka)','<p class="definition">m.  sisa. [sisa ← Skt. ṡeṣa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('soka','<p class="definition">m.  kesedihan, kepiluan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sogata','<p class="definition">m.  pengikut Sang Sugata, pengikut Buddha, umat Buddha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('socati','<p class="definition">berdukacita atas, belasungkawa atas, berkabung atas, bersedih hati atas</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('soceyya','<p class="definition">nt.  kemurnian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('soṇḍika','<p class="definition">m.  penyuling dan penjual minuman keras; pemabuk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('soṇḍikā','<p class="definition">f.  sulur tanaman menjalar; daging berlada; telaga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sota','<p class="definition">1. nt. telinga, indra pendengaran; 2. m. nt.  arus, air bah, aliran air yang deras.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sotāpanna','<p class="definition">m.  orang yang telah masuk arus, orang yang telah mencapai tingkat kesucian pertama.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sotti','<p class="definition">f.  penggosok badan (perlengkapan mandi).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sotthi','<p class="definition">f.  baik, aman, sejahtera, selamat (Sotthi bhadante hotu rañño, sotthi janapadassāti).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sodheti','<p class="definition">(kaus. dari sujjhati )  membersihkan, memurnikan, memeriksa, mencari, memperbaiki, menyingkirkan, memutihkan (utang).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sobbha','<p class="definition">m.  lubang, ceruk nan dalam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sobhati','<p class="definition">bersinar, bercahaya, tampak elok, bagus, cemerlang; kaus. sobheti membuat gemerlapan, memperindah, menyemarakkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('somanassa','<p class="definition">nt.  kegembiraan, kesukacitaan, kebahagiaan, kenyamanan batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sorivāra','<p class="definition">m.  Hari Sabtu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('svākkhāta','<p class="definition">a.  telah dibabarkan dengan baik; telah sempurna dipaparkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('svāgata','<p class="definition">m.  sambutan, selamat datang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('svātana','<p class="definition">berkaitan dengan esok; svātanāya untuk hari berikutnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sve','<p class="definition">adv.  besok, keesokan harinya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ha','<p class="definition">(kata penegas) hei, hallo, oh;  iti ha begitulah; itihītihaṃ begitu dan begitu; heva  yakni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('haṃsati','<p class="definition">meremang, merinding, menggidikkan bulu roma, tegak bulu badan, bulu romanya berdiri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('haṭṭha','<p class="definition">(pp dari haṃsati )  meremang, merinding, berdiri bulu romanya; gembira, bersuka cita, bahagia, girang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hattha','<p class="definition">m.  tangan; lengan bawah; ukuran satu hasta (Menurut Bhikkhu Thanissaro, 1 hasta = 24 aṅgula ; 1 sugatahattha  = 50 cm); ~pāsa m. seperentangan tangan, jangkauan tangan. [hasta ← Skt. hasta]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hatthin','<p class="definition">m.  gajah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hadaya','<p class="definition">m.  hati, batin; ~ṃgama berkenan di hati; ~vatthu  nt. landasan hati, landasan batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hanati','<p class="definition">menghantam, memukul, menggebuk, menghajar, mendera, menebah, mengirik; membunuh, menghancurkan, membinasakan, menyingkirkan; berak; pass. haññati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('handa','<p class="definition">baiklah, sekarang, okei, marilah, aduh; sini; (handāhaṃ  baiklah, saya …).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('haraṇaka','<p class="definition">nt.  barang-barang yang bisa diangkut, barang-barang yang dapat dipindah-pindahkan, yang sedang dibawa, yang sedang dalam perjalanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('harati','<p class="definition">membawa, membawa serta; mengambil, mengumpulkan, menawarkan, menyingkirkan, membawa pergi, merampas, mencuri, menghancurkan, membinasakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('harāpeti','<p class="definition">menyebabkan dibawa, menawarkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('harāyati','<p class="definition">merasa malu, merasa tertekan atau jengkel, dongkol, cemas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('harita','<p class="definition">a. hijau, hijau pucat, kekuning-kuningan; segar (haritena gomayena paṭhaviṃ opuñjāpetvā); nt. sayuran, hijauan, tanaman; haritā  f. emas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('halāhala','<p class="definition">m. 1. sejenis racun yang mematikan; 2. kegaduhan, kerusuhan, kekacauan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hasati (hassati)','<p class="definition">tertawa, bergembira; meringkik; kaus.  hāseti  membuat tertawa, menggembirakan, menyenangkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hasita','<p class="definition">(pp dari hasati ) tertawa; bergembira;  nt.  tawa, kegembiraan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hāpeti','<p class="definition">1. mengabaikan, menanggalkan, menghilangkan; menunda; mengurangi; mengalahkan; hilang; 2. mempersembahkan, menyembah, memupuk, memelihara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hāyati','<p class="definition">(pass. dari jahati ) ditinggalkan, berkurang, mengecil, lenyap, menghilang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hāraka','<p class="definition">a.  membawa, mengambil, memperoleh, memindahkan; m. pembawa, pengambil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hāriya','<p class="definition">a.  membawa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hi','<p class="definition">sebab, karena, sungguh (tañ hi tassa  ia sungguh), tentu saja, memang; lah; tena hi baiklah kalau begitu, karena itu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hita','<p class="definition">a.  bermanfaat; m. sahabat, penolong; nt. manfaat, kemaslahatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hitesin','<p class="definition">mengharapkan kesejahteraan pihak lain.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hiyyo','<p class="definition">adv.  kemarin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hirañña','<p class="definition">nt.  emas, emas kepingan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hiri (hirī)','<p class="definition">f.  rasa malu, keseganan. (Vism 464 kāyaduccaritādīhi hiriyatī ti hiri; lajjāyetaṃ adhivacanaṃ.)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hīna','<p class="definition">(pp dari jahati ) rendah, nista, hina-dina, terkutuk, inferior; kekurangan. [hina ← Skt. hīna]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hīnāyāvatta','<p class="definition">m.  orang yang kembali ke kehidupan duniawi, orang yang kembali ke kehidupan rendah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hīyo','<p class="definition">☞  hiyyo</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('heṭṭhā','<p class="definition">di bawah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('heṭṭhimā','<p class="definition">a. terendah, lebih rendah; (tingkat) dasariah; ~tala  lapisan terbawah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hetu','<p class="definition">m.  “akar penyebab”, alasan, sebab, kondisi; demi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hemanta','<p class="definition">m.  musim dingin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('heraññika','<p class="definition">m.  tukang emas, pakar emas, pandai emas, penukar mata uang; ~phalaka m. nt. bilah/papan/meja sang penukar mata uang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṃsakūṭa','<p class="definition">(aṃsa+kūṭa)  m. nt. pundak, bahu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akiriyavāda','<p class="definition">(akiriya+vāda)  a. yang berpaham (yang dikemukakan pūraṇa-kassapa) bahwa semua perbuatan tidak menghasilkan ganjaran; yang menganut paham tanpa-tindakan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhadassa','<p class="definition">(akkha+dassa)   m. seseorang yang mencermati (memeriksa) dadu; wasit; hakim;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhadhutta','<p class="definition">(akkha+dhutta)   m. pejudi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('akkhirogin','<p class="definition">(akkhi+rogin)   a. berpenyakit mata, menderita penyakit mata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aggakārikā','<p class="definition">(agga+kārikā)  pencoba pertama, pencicip (pengecap) pertama, contoh (sampel), uji-coba pertama;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aggamahesī','<p class="definition">(agga+mahesī)  f. permaisuri (istri raja yang utama).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgajāta','<p class="definition">(aṅga+jāta)  m.  “bagian pembeda”, diri pria atau wanita, alat kelamin;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgamaṅgāni','<p class="definition">(aṅga+maṅgāni)  semua anggota tubuh, sekujur badan..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgārakaṭāha','<p class="definition">(aṅgāra+kaṭāha)   m. nt. wadah bara api, anglo.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṅgulī','<p class="definition">(aṅgulī  (aṅguli)+)   (aṅguli)poṭha  snapping or cracking the fingers, memetik jari, menjentikkan jari.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('accharāsaṅghāta','<p class="definition">(accharā+saṅghāta)   memetik jari, menjentikkan jari (= aṅgulipoṭhana ). [apsara ← skt. apsarā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajapāla','<p class="definition">(aja+pāla)   penggembala kambing.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajinakkhipa','<p class="definition">(ajina+kkhipa)  nt.  jubah yang terbuat dari jalinan potongan/setrip kulit antelop hitam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ajjatagge','<p class="definition">(ajja+tagge)   adv.  mulai hari ini, sejak sekarang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṭṭassara','<p class="definition">(aṭṭa+ssara)   m. suara mengerang atau merintih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aḍḍhayoga','<p class="definition">(aḍḍha+yoga)  m. bangunan yang atapnya seperti lengkungan sayap burung garuda, bangunan yang atapnya miring ke satu sisi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aḍḍhasāra','<p class="definition">(aḍḍha+sāra)  a.  bernilai setengah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṇḍakosa','<p class="definition">(aṇḍa+kosa)  m.  cangkang telur;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('aṇḍaūpaka','<p class="definition">(aṇḍa+ūpaka)   nt.  kumparan, bantalan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atikkantamānusaka','<p class="definition">(atikkanta+mānusaka)  melebihi manusia biasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atirekacīvara','<p class="definition">(atireka+cīvara)  jubah ekstra;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atirekapāda','<p class="definition">(atireka+pāda)  lebih dari satu pāda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attadaṇḍa','<p class="definition">(atta+daṇḍa)   dia yang memegang sebuah tongkat di tangan, orang yang ganas;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attañjaha','<p class="definition">(atta+ñjaha)   meninggalkan apa yang telah diterima (dianggap) atau diasumsikan; mahāniddesa menjelaskan attaṃ  pahāya sebagai attadiṭṭhiṃ pahāya yakni melepaskan 62 pandangan salah; 2. (pp dari añjati ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attan','<p class="definition">(attan (atta)  +)  (atta)  kilamatha  m. penyiksaan diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('attahāvapaṭilāha','<p class="definition">(attabhāva+aṭilāha)   m. penjelmaan menjadi sesosok makhluk.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthauppatti','<p class="definition">(attha+uppatti)   makna situasional;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthakara','<p class="definition">(attha+kara)   a. bermanfaat, berfaedah, berguna;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthacariyā','<p class="definition">(attha+cariyā)   f. perbuatan atau tindakan yang bermanfaat, yang mendatangkan kemaslahatan atau kesejahteraan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthavasa','<p class="definition">(attha+vasa)  kemasukakalan, alasan, akibat, sebab;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('atthasaṃhita','<p class="definition">(attha+saṃhita)   a. bermanfaat, membawa manfaat, menguntungkan, mendatangkan kemaslahatan; 2. nt. rumah, kediaman, peristirahatan. [harta/ arti/arta ← skt. artha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('addhānamagga','<p class="definition">(addhāna+magga)   m. jalan raya, jalan lintasan, perjalanan jauh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anekapariyāyena','<p class="definition">(aneka+pariyāyena)   dengan berbagai cara, dengan beragam cara;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anekavihita','<p class="definition">(aneka+vihita)  aneka macam, beragam. [aneka ← skt. aneka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('anokāsakata','<p class="definition">(anokāsa+kata)   tanpa mendapatkan izin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('antomano','<p class="definition">(anto+mano)   murung, sayu, sedih, muram.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('andhakāra','<p class="definition">(andha+kāra)  m.  kegelapan, kebingungan, kebutaan, kedunguan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apassenaphalaka','<p class="definition">(apassena+phalaka)  papan penopang (kepala).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('apāyamukha','<p class="definition">(apāya+mukha)   nt. jalan menuju kehancuran atau pengurasan atau kemerosotan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('appaāyuka','<p class="definition">(appa+āyuka)   berusia pendek.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ahutadhamma','<p class="definition">(abbhuta+amma)   fenomena misterius, sesuatu yang menawan hati, ajaib; salah satu ragam kitab suci (▶ navaṅgabuddhasāsana); 2. nt. taruhan; abbhutaṃ karoti (sahassena) bertaruh (1000 kepeng).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayonisomanasikaroti','<p class="definition">(ayoniso+manasikaroti)  tanpa menghiraukan, tidak memperhatikan secara patut atau bijaksana, tidak mengindahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ayyaputta','<p class="definition">(ayya+putta)  m. tuan muda.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('asuhakathā','<p class="definition">(asubha+athā)  wejangan perihal kenajisan, khotbah perihal kotor menjijikkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('assapuṭa','<p class="definition">(assa+puṭa)  tas/kantung yang disandang di pundak; 2. sudut, titik; caturassa segi empat; 3. kuda; [aswa ← skt. aṡva] 4. gen. dat. sg. dari ayaṃ  (ini, nya); 5. sg. pot. ketiga dari asmi  (atthi ) kalau saja, sekiranya, semoga. (pissa dia punya juga ….; tayassa tiga buah milik dia)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ānāpānasati','<p class="definition">(ānāpāna+sati)   penegakan satu atau penyadaran terhadap napas masuk dan napas keluar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āpāthagata','<p class="definition">(āpātha+gata)   masuk dalam lingkup atau fokus (bidikan), tampak, muncul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āmagandha','<p class="definition">(āma+gandha)   bau bangkai.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āraddhaviriya','<p class="definition">(āraddha+viriya)   nt. gigih penuh semangat, penuh semangat..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ārahavatthu','<p class="definition">(ārabbha+tthu)   kesempatan untuk berupaya, kewajiban, keprihatinan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ālokasandhi','<p class="definition">(āloka+sandhi)  m. f.  lubang pengintip, jendela.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āhatacitta','<p class="definition">(āhata+citta)   nt. batin yang dirundung kebencian, dendam.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthaṃnama','<p class="definition">(itthaṃ+nama)   bernama demikian, dipanggil demikian, disebut demikian, dinamai demikian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('itthi','<p class="definition">(itthi (itthī)+)  (itthī)dhana nt. harta istri, maskawin, mahar. [istri ← skt. strī]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddhipāṭihāriya','<p class="definition">(iddhi+pāṭihāriya)  nt.  mukjizat kekuatan gaib;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddhipāda','<p class="definition">(iddhi+pāda)   m. nt. sarana keberhasilan, landasan kemampuan gaib, landasan daya batin;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iddhivisaya','<p class="definition">(iddhi+visaya)  m. rentang atau jangkauan daya (gaib).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('iriyāpatha','<p class="definition">(iriyā+patha)   m. cara berperilaku, cara bertingkah laku, cara bergerak, tindak-tanduk, perilaku baik, gerakan, sepak terjang, gerak-gerik, sikap.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('isisattama','<p class="definition">(isi+sattama)   tujuh orang suci (vipassin, sikhin, vessabhu, kakusandha, koṇāgamana, kassapa, dan gotama). [resi ← skt. ṛṣi]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('issāpakata','<p class="definition">(issā+pakata)  a. diliputi iri hati, penuh iri hati, berwatak suka iri hati, dilanda iri hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uccāliṅgapāṇaka','<p class="definition">(uccāliṅga+pāṇaka)   m. ulat bulu atau cacing-cacingan (= lomasapāṇaka ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ucchedavāda','<p class="definition">(uccheda+vāda)  a.  yang berpaham bahwa setelah seseorang meninggal segalanya pun tamat sudah (tiada kelahiran kembali), yang menganut paham kemusnahan, annihilasionis.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttari','<p class="definition">(uttari (uttariṃ)+)  (uttariṃ)manussadhamma m.  kualitas yang mengungguli manusia biasa, kemampuan lebih terhadap manusia awam; pencapaian daya supramanusia.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttānamukha','<p class="definition">(uttāna+mukha)   berbicara jelas, mudah dipahami, berwajah terbuka;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uttānaseyyaka','<p class="definition">(uttāna+seyyaka)   “berbaring telentang”, bayi..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('udaravaṭṭi','<p class="definition">(udara+vaṭṭi)  kantung perut, perut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uddhaṃmukha','<p class="definition">(uddhaṃ+mukha)   adv. menghadap ke atas/hulu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upaṭṭhākakula','<p class="definition">(upaṭṭhāka+kula)   nt. keluarga pelayan, keluarga pengabdi, keluarga penyokong (penopang), dayaka.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('upahataindriya','<p class="definition">(upahata+indriya)   cacat indra.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uposathaagga','<p class="definition">(uposatha+agga)   (uposathāgāra ) tempat penyelenggaraan uposatha, tempat pelantunan patimokkha;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uposathakamma','<p class="definition">(uposatha+kamma)   pertemuan atau upacara yang berhubungan dengan hari uposatha; uposathaṃ karoti  melakukan ibadat uposatha; uposathaṃ upavasati  mengamalkan uposatha, menjalani ibadat uposatha, melakukan puasa uposatha (dengan menjalankan delapan sila); uposathaṃ samādiyati  mengambil sila uposatha (delapan sila). [puasa/upawasa ← skt. upavasa(tha)]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('uhatovyañjanaka','<p class="definition">(ubhato+yañjanaka)   berkelamin ganda; hermafrodit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('usaha','<p class="definition">(usabha+)   pria perkasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekauddesa','<p class="definition">(eka+uddesa)  m. kompak dalam satu patimokkha, berada dalam satu pelantunan patimokkha;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekaeka','<p class="definition">(eka+eka)   a. satu per satu, masing-masing, setiap;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekapahārena','<p class="definition">(eka+pahārena)   secara serentak.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekatokaroti','<p class="definition">(ekato+karoti)   mengumpulkan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ekodihāva','<p class="definition">(ekodi+hāva)  m.  hal atau keadaan terpusat, terkonsentrasi; kemenunggalan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('evarūpa','<p class="definition">(eva+rūpa)   seperti itu, sedemikian, berwujud seperti itu, cantik, bajik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odakaantika','<p class="definition">(odaka+antika)  tempat di seputar air, tempat dekat air, “berakhir dengan air”, pembilasan akhir, pembilasan dengan air, pembilasan setelah bersenggama, berakhir dengan pembasuhan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odaniyaghara','<p class="definition">(odaniya+ghara)   dapur nasi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭisuttaka','<p class="definition">(kaṭi+suttaka)    nt. ikat pinggang, pelilit pinggul.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṭṭhahāraka','<p class="definition">(kaṭṭha+hāraka)  pengumpul kayu bakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṭakaāpassaya','<p class="definition">(kaṇṭaka+āpassaya)   pembaringan berduri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṭhasuttaka','<p class="definition">(kaṇṭha+suttaka)   nt. kalung manik-manik, hiasan kalung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṇachidda','<p class="definition">(kaṇṇa+chidda)  nt.  lubang telinga;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kaṇṇasuttaka','<p class="definition">(kaṇṇa+suttaka)  nt.  benang dari sudut ke sudut; garis kain, untaian hiasan telinga..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katikāsaṇṭhāna','<p class="definition">(katikā+saṇṭhāna)  nt. formulir (surat) perjanjian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('katthacid','<p class="definition">(kattha+cid)  di suatu tempat, di mana pun.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kammapathā','<p class="definition">(kamma+pathā)  modus perbuatan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kammavācā','<p class="definition">(kamma+vācā)  f. resolusi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kammavācāriya','<p class="definition">(kamma+vācāriya)  m.  pimpinan rapat sanggha. (cetanāhaṃ bhikkhave kammaṃ vadāmi cetayitvā kammaṃ karoti kāyena vācāya manasā a. 3:415) [karma ← skt. karma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('karamaraānītā','<p class="definition">(karamara+ānītā)   budak wanita (tawanan perang) yang kemudian dijadikan sebagai istri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kalyāṇadhamma','<p class="definition">(kalyāṇa+dhamma)  a.  penuh kebajikan; m. kebajikan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāmaguṇa','<p class="definition">(kāma+guṇa)   m.  (faktor atau kualitas) kesenangan indriawi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāmahoga','<p class="definition">(kāma+hoga)  m. hal menikmati kesenangan indriawi; kāmesu kāmasukhallika kegandrungan dan suka cita terhadap kesenangan indriawi; vatthu</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāyadaḷhīahula','<p class="definition">(kāya+daḷhīahula)  a.  gemar mengekarkan tubuh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kālakaṇṇī','<p class="definition">(kāla+kaṇṇī)   m. yang bertelinga hitam, orang sial. [kala ← skt. kāla]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kāḷakaṇṇī','<p class="definition">(kāḷa+kaṇṇī)  bertelinga hitam, sial, tak beruntung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kittisadda','<p class="definition">(kitti+sadda)   m. reputasi, nama harum.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kiriyā','<p class="definition">(kiriyā (kriyā)+)  (kriyā)vibhatti f.  konjugasi kata kerja.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kumhakāra','<p class="definition">(kumbha+āra)  pembuat (barang-barang) tembikar; kundi (pengrajin barang yang terbuat dari tanah liat). [kumba ← skt. kumbha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kulaputta','<p class="definition">(kula+putta)   m. putra berbudi, putra keluarga terpandang. [keluarga ← skt. kulavarga]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kusacīra','<p class="definition">(kusa+cīra)   rajutan rumput kusa. [kusa ← skt. kuṡa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kūṭaāgāra','<p class="definition">(kūṭa+āgāra)  nt. bangunan beratap runcing, bangunan bermenara, bangunan bertingkat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('kevalaparipuṇṇa','<p class="definition">(kevala+paripuṇṇa)   utuh menyeluruh, lengkap mencakup semuanya); namun; kevalaṃ  adv. hanya (na kevalañ ca viriyam eva sati pi me ārammaṇābhi-mukhībhāvena upaṭṭhitā ahosi)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khaṇḍaākhaṇḍika','<p class="definition">(khaṇḍa+ākhaṇḍika)  potong demi potong, pecahan belaka, hancur berkeping-keping.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khāraudaka','<p class="definition">(khāra+udaka)  nt.  air kaustik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khittacitta','<p class="definition">(khitta+citta)  nt.  pikiran yang kacau, bingung, gusar, kalut, kalap, hilang pikiran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('khilajāta','<p class="definition">(khila+jāta)   geregetan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gaṇanāpatha','<p class="definition">(gaṇanā+patha)   m. perhitungan waktu, jangka waktu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahapātana','<p class="definition">(gabbha+�tana)   nt. pengguguran kandungan, aborsi, ramuan penggugur kandungan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahaseyyā','<p class="definition">(gabbha+yyā)   terbaring dalam rahim, dikandung. [garba ← skt. garbha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gamhīrasita','<p class="definition">(gambhīra+ita)   terletak amat dalam; sahih.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahakūṭa','<p class="definition">(gaha+kūṭa)  m. nt. balok nok (ridge-pole);</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahaṭṭha','<p class="definition">(gaha+ṭṭha)  m. perumah tangga;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gahapati','<p class="definition">(gaha+pati)   m. pemilik rumah, kepala rumah tangga. [gerha ← skt. gṛha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gāmakūṭa','<p class="definition">(gāma+kūṭa)   nt. penipu, penjilat, peleceh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gilānapaccayahesajja','<p class="definition">(gilāna+paccayahesajja)   obat penyembuh sakit, obat-obatan. [gila/gulana ← skt. glāna]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('guruvāra','<p class="definition">(guru+vāra)  m.  hari kamis. [guru ← skt. guru]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gūthakūpa','<p class="definition">(gūtha+kūpa)   m. kakus, jamban, tandas, peturasan, tempat buang air.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('govikattana','<p class="definition">(go+vikattana)   nt. pisau penjagal sapi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gharaāvāsa','<p class="definition">(ghara+āvāsa)   kehidupan berumah tangga;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('gharaandhana','<p class="definition">(ghara+andhana)   nt. ikatan rumah tangga; hal menikahkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('cakkaheda','<p class="definition">(cakka+heda)   m. menghancurkan kewibawaan atau kerukunan atau keharmonisan (keselarasan), menabur perselisihan atau perpecahan; pembangkangan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('cakkavāḷa','<p class="definition">(cakka+vāḷa)   m. nt.  cakrawala, lingkaran (dunia), lengkungan, serangkaian penyangga yang melingkari dunia; pl. sistem dunia. [cakra/cakram Ü skt. cakra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('cakkhuhūta','<p class="definition">(cakkhu+hūta)  nt. bermata celik.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('candavāra','<p class="definition">(canda+vāra)  m.  hari senin. [candra Ü skt. candra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('cittarūpaṃ','<p class="definition">(citta+rūpaṃ)   sebagaimana yang dipikirkan, sejauh yang diharapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ciraṭṭhitika','<p class="definition">(cira+ṭṭhitika)  bertahan lama.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('coraghāta','<p class="definition">(cora+ghāta)   m. algojo pencuri. [curi ← skt. √cur]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('chāyārūpa','<p class="definition">(chāyā+rūpa)   nt. potret, foto. [cahaya ← skt. chāyā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('janapadacārikā','<p class="definition">(janapada+cārikā)   penjelajahan negara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('jātarūpa','<p class="definition">(jāta+rūpa)  m. logam murni, emas (yang belum diolah; yang sudah diolah ▶ suvaṇṇa ).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('jānumaṇḍala','<p class="definition">(jānu+maṇḍala)  tempurung lutut.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('jīvitaindriya','<p class="definition">(jīvita+indriya)  nt. daya hidup, daya pengendali kelangsungan hidup.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ñatticatuttha','<p class="definition">(ñatti+catuttha)    satu mosi + tiga resolusi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ñātivyasana','<p class="definition">(ñāti+vyasana)   nt.  musibah kehilangan sanak keluarga.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tālapakka','<p class="definition">(tāla+pakka)  nt. buah siwalan. [tal ← skt. tāla]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tāḷachidda','<p class="definition">(tāḷa+chidda)  nt. lubang kunci. [tala ← skt. tāla]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tāvakālika','<p class="definition">(tāva+kālika)   a. (untuk) sementara (waktu).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tiracchānagata','<p class="definition">(tiracchāna+gata)  hewan; binatang (buas).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tirokaraṇī','<p class="definition">(tiro+karaṇī)   f. tirai, selubung, tabir;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tirogāma','<p class="definition">(tiro+gāma)   m. perkampungan luar, dusun lain atau seberang, perkampungan jauh.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tirokkhavāca','<p class="definition">(tirokkha+vāca)   omongan menghina atau menyepelekan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('tuṇhīhāva','<p class="definition">(tuṇhī+hāva)  m.  diam membisu, diam tidak bersuara.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('thālīpāka','<p class="definition">(thālī+pāka)  m. persembahan barli atau nasi yang dimasak dalam susu, santapan barli susu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('thīnamiddha','<p class="definition">(thīna+middha)   lesu-lamban.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('thūla','<p class="definition">(thūla (thulla)+)  (thulla)accaya m. pelanggaran serius, pelanggaran berat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('theyyacitta','<p class="definition">(theyya+citta)   pikiran untuk mencuri;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('theyyasaṅkhātaṃ','<p class="definition">(theyya+saṅkhātaṃ)  adv.  dengan cara mencuri, dengan cara yang dianggap sebagai mencuri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dadātii','<p class="definition">(dadāti+i)  mengorbankan jiwa; pass. diyyati, dīyati .</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dantapoṇa','<p class="definition">(danta+poṇa)  nt. tusuk gigi; 2. (pp dari dameti )  dijinakkan, dikendalikan, ditaklukkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dārugaha','<p class="definition">(dāru+gaha)  m.  gudang kayu;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dārudhītalikā','<p class="definition">(dāru+dhītalikā)  f.  boneka kayu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('diṭṭhadhamma','<p class="definition">(diṭṭha+dhamma)   dunia ini, kelahiran ini, keadaan ini, keberadaan ini.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('divātaraṃ','<p class="definition">(divā+taraṃ)  adv. agak siang;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('divāvihāra','<p class="definition">(divā+vihāra)  m.  istirahat siang, tidur siang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dīghajāti','<p class="definition">(dīgha+jāti)  f. ular.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dussayuga','<p class="definition">(dussa+yuga)   selengkap pakaian, satu setel pakaian, selengkap sandang.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('deyyadhamma','<p class="definition">(deyya+dhamma)  m. hadiah, pemberian.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('devagaha','<p class="definition">(deva+gaha)  m.  kuil, candi; milik kerajaan. [dewa ← skt. deva]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhajagga','<p class="definition">(dhaja+gga)  puncak panji, puncak rujukan. [duaja ← skt. dhvaja]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhamanisanthatagatta','<p class="definition">(dhamani+santhatagatta)  urat nadi di sekujur badan tampak jelas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhammacakkhu','<p class="definition">(dhamma+cakkhu)   yang bermata dhamma, yang telah melihat dhamma (empat ariyasacca);</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhammavāda','<p class="definition">(dhamma+vāda)   teori dhamma;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhammasāmin','<p class="definition">(dhamma+sāmin)  m.  wali dhamma (julukan sang buddha). [dharma ← skt. dharma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhuvacoḷa','<p class="definition">(dhuva+coḷa)   selalu tersumbat kain;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('dhuvalohita','<p class="definition">(dhuva+lohita)   selalu berdarah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('natthikavāda','<p class="definition">(natthika+vāda)   m.  seorang nihilis.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('navakamma','<p class="definition">(nava+kamma)    nt.  pembangunan baru, pemugaran, perbaikan, renovasi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('navaṅga-uddha-sāsana','<p class="definition">(nava+ṅga-uddha-sāsana)  sembilan langgam ajaran sang buddha yakni sutta, geyya, veyyākaraṇa, gāthā, udāna, itivuttaka,  jātaka, abbhutadhamma, vedalla..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāmavihatti','<p class="definition">(nāma+vihatti)  f.  deklensi kata benda; nāmaṃ karoti menamakan, menjuluki. [nama ← skt. nāma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāsanaantika','<p class="definition">(nāsana+antika)  a. yang berada di bawah hukuman pengusiran; (menurut v.a. 428 ada tiga jenis: saṃvāsa, liṅga, dan daṇḍakamma).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nāsikasota','<p class="definition">(nāsika+sota)  m. nt.  lubang hidung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nikhanati','<p class="definition">(nikhanati (nikhaṇati)+)  (nikhaṇati)  mengedipkan mata.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nijadesa','<p class="definition">(nija+desa)  m.  negeri sendiri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('niddāārāmana','<p class="definition">(niddā+ārāmana)   gemar tidur. [nidera ← skt. nidrā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('nimittakamma','<p class="definition">(nimitta+kamma)  nt. (pe)ramalan, (pe)nujuman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paṃsukūla','<p class="definition">(paṃsu+kūla)  benda (misalnya kain) usang dari tumpukan sampah, kain usang, barang buangan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paṃsukūlika','<p class="definition">(paṃsu+kūlika)   orang yang mengenakan pakaian yang terbuat dari kain usang tumpukan sampah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pakiṇṇakakathā','<p class="definition">(pakiṇṇaka+kathā)  aneka bahasan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pakkhajāta','<p class="definition">(pakkha+jāta)  m.  yang bersayap, unggas; 2. a.  tampak, jelas, seperti, mirip; 3. m.  orang pincang. [paksa ← skt. pakṣa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paggaṇhātii','<p class="definition">(paggaṇhāti+i)  mengangkat sembah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pacchāsamaṇa','<p class="definition">(pacchā+samaṇa)   petapa atau bhikkhu yunior yang berjalan di belakang seorang senior dalam suatu perjalanan (sebagai pendamping atau pelayan);</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pacchāhatta','<p class="definition">(pacchā+hatta)  usai makan. [pasca ← skt. paṡcā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pañhavyākaraṇa','<p class="definition">(pañha+vyākaraṇa)   cara menjawab pertanyaan (ada empat yakni ekaṃsa, vibhajja, paṭipucchā, dan ṭhapanīya d iii 229; a i 197 sq; ii 46; miln 339).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paṭhamatara','<p class="definition">(paṭhama+tara)  adv. yang pertama, yang pertama-tama, pada awalnya. [pertama ← skt. prathama]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paṇḍupalāsa','<p class="definition">(paṇḍu+palāsa)   daun layu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattaādhāraka','<p class="definition">(patta+ādhāraka)  m. nt. kaki patta, penyangga patta;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattaānumodana','<p class="definition">(patta+ānumodana)   turut bergembira terhadap apa yang telah didapatkan (jasa-jasa kebajikan);</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattaāḷhaka','<p class="definition">(patta+āḷhaka)  takaran mainan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattakalla','<p class="definition">(patta+kalla)  a.  sudah siap, sesuai;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattakāla','<p class="definition">(patta+kāla)   m. sudah tiba waktunya, sudah saatnya;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattakkhandha','<p class="definition">(patta+kkhandha)  a.  dengan “pundak seperti daun”, dengan pundak terjuntai, lesu, putus asa, kecewa, kesal, murung.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pattidāna','<p class="definition">(patti+dāna)   pelimpahan jasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('padaṭṭhāna','<p class="definition">(pada+ṭṭhāna)   nt. pijakan, tumpuan; sebab terdekat (langsung).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paatakhaṇḍa','<p class="definition">(pabbata+aṇḍa)   m. nt. jalan pintas sempit di daerah pegunungan; celah patahan pegunungan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('paramattha','<p class="definition">(parama+ttha)  yang paling hakiki.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('parikamma°','<p class="definition">(parikamma+°)   dengan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pariyattidhamma','<p class="definition">(pariyatti+dhamma)  m.  yang tercakup dalam mempelajari kitab suci.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('parihaṭa','<p class="definition">(parihaṭa (parihata)  +)  (parihata)    diliputi keberuntungan, diliputi kebahagiaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('parihārapatha','<p class="definition">(parihāra+patha)   m. permainan galasin, “hopscotch“. [pelihara ← skt. parihāra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pavutthajāti','<p class="definition">(pavuttha+jāti)  orang yang tidak termasuk dalam kasta apa pun;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pavutthapatikā','<p class="definition">(pavuttha+patikā)  itthi  seorang wanita yang suaminya tidak berdiam di rumah (sedang merantau atau bepergian).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pasādahañña','<p class="definition">(pasāda+hañña)  ungkapan keyakinan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('passāvamagga','<p class="definition">(passāva+magga)  lubang kemaluan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pānaāgāra','<p class="definition">(pāna+āgāra)   nt. kedai minuman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pāḷi','<p class="definition">(pāḷi (pāli)+)  (pāli)bhāsā  bahasa babon.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('piṇḍacārika','<p class="definition">(piṇḍa+cārika)   m.  orang yang pergi berpindapata;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('piṇḍapāta','<p class="definition">(piṇḍa+pāta)   m. makanan derma (yang diterima dalam patta), pindapata; hal berpindapata;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('piṇḍapātika','<p class="definition">(piṇḍa+pātika)   m. orang yang hanya menyantap makanan yang diterima dalam pattanya (yang hanya makan dari hasil pindapata).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('puñjakita','<p class="definition">(puñja+kita)  a. onggokan, tumpukan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('puthusīlā','<p class="definition">(puthu+sīlā)   f. lempengan batu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('puahāsin','<p class="definition">(pubba+�sin)   yang menegur pertama, yang pertama berbicara. [purwa/purba ← pūrva]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('peyyavajja','<p class="definition">(peyya+vajja)   nt. ucapan yang ramah menyenangkan, ucapan yang berkenan di hati.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pesanakāraka','<p class="definition">(pesana+kāraka)  (</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('pesanakārikā','<p class="definition">(pesana+kārikā)  ) pelayan, pembawa pesan. [pesan ← skt. ?]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('phāsuvihāra','<p class="definition">(phāsu+vihāra)  kenyamanan, ketenteraman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('andhanaāgāra','<p class="definition">(bandhana+�gāra)  nt. rumah tahanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('āḷhataraṃ','<p class="definition">(bāḷha+araṃ)   jauh lebih, amat sangat; bāḷhaṃ  adv. dengan kuat, sangat, amat, keras.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odhipakkhika','<p class="definition">(bodhi+akkhika)   (= pakkhiya ) bagian dari pencerahan (batin); pokok-pokok pencerahan (batin); penopang (menuju) pencerahan;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odhirukkha','<p class="definition">(bodhi+ukkha)   m. pohon bodhi (assattha, ficus religiosa);</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('odhisatta','<p class="definition">(bodhi+atta)   m. calon buddha, seseorang yang nantinya akan menjadi buddha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hattasammada','<p class="definition">(bhatta+ammada)   rasa kantuk setelah makan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('haddakappa','<p class="definition">(bhadda+appa)    m. kappa (kurun waktu) yang penuh berkah, kappa sekarang di mana telah dan akan muncul lima buddha yakni koṇāgamana, kakusandha, kassapa, gotama, dan metteya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hākuṭikahākuṭiko','<p class="definition">(bhākuṭika+ākuṭiko)   selalu mengernyitkan alis, angkuh; f. bhākuṭikā  kernyit.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hāṇavāra','<p class="definition">(bhāṇa+āra)   bab kitab suci, babak tuturan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hikkhācariya','<p class="definition">(bhikkhā+ariya)  berkeliling untuk mengemis, berkeliling untuk mendapatkan derma makanan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hittikhīla','<p class="definition">(bhitti+hīla)  m.  pasak dinding.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hinnapaṭa','<p class="definition">(bhinna+aṭa)  kain sobek, kain perca;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hinnapaṭadhara','<p class="definition">(bhinna+aṭadhara)   mengenakan kain tambal seribu. [▶ bhinneka tunggal ika]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hiyyohāva','<p class="definition">(bhiyyo+āva)  m.  lebih banyak, bertambah banyak, pelipatgandaan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hiyyosomattāya','<p class="definition">(bhiyyoso+attāya)  amat sangat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hīruttāṇa','<p class="definition">(bhīru+tāṇa)  nt. pernaungan bagi yang merasa takut; a. yang melindungi mereka yang merasa takut; yang terlindung dari ketakutan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hūtapua','<p class="definition">(bhūta+ua)  a.  sebelumnya;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hūtapuaṃ','<p class="definition">(bhūta+uaṃ)  adv.  sebelum semua muncul, pada zaman dahulu kala, nun jauh sebelumnya;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hūtavejjaka','<p class="definition">(bhūta+ejjaka)    m. dukun pengusir setan, dukun pengusir  roh jahat, dukun penyembuh kerasukan roh jahat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hedanasaṃvattanika','<p class="definition">(bhedana+aṃvattanika)   a. membawa (atau menuntun menuju) perpecahan atau perselisihan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('maṃsapesi','<p class="definition">(maṃsa+pesi)  f. potongan daging, gumpalan daging. [mangsa ← skt. māṃsa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('majjhimapurisa','<p class="definition">(majjhima+purisa)   orang dengan perawakan sedang; orang kedua.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('maṇḍanajātika','<p class="definition">(maṇḍana+jātika)  yang bersifat (gemar akan) dandanan, gemar berhias.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('matapatika','<p class="definition">(mata+patika)   a. menjanda. [mati ← skt. mṛta/mṛti]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mammachedaka','<p class="definition">(mamma+chedaka)  menusuk hati, menyerang, menyakitkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mālāvaccha','<p class="definition">(mālā+vaccha)   m. tanaman bunga hias, tumbuhan bunga hias.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mittaāmacca','<p class="definition">(mitta+āmacca)   m. handai tolan. [mitra ← skt. mitra]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mihitapua','<p class="definition">(mihita+pua)  dengan senyum.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mukhatuṇḍaka','<p class="definition">(mukha+tuṇḍaka)  nt.  paruh, moncong;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('mukhavaṇṇa','<p class="definition">(mukha+vaṇṇa)  m. cahaya muka, air muka. [muka ← skt. mukha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('muṭṭhasacca','<p class="definition">(muṭṭha+sacca)   nt. suka lupa, kelengahan, kelalaian;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('muṭṭhassati','<p class="definition">(muṭṭha+ssati)   a. lengah, lalai, suka lupa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('muduhūta','<p class="definition">(mudu+hūta)  a. lembut, lunak, empuk, lentur, gemulai. [merdu ← mṛdu]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('musāvāda','<p class="definition">(musā+vāda)  m. berbohong, kebohongan, dusta.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yakkhasegara','<p class="definition">(yakkha+segara)</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yakkhatali','<p class="definition">(yakkha+tali)  arus); gergasi (raksasa yang besar, suka makan orang), raksasa, buta.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yathāraddha','<p class="definition">(yathā+raddha)   ( = ālabdha ) secukupnya, sekenanya, tanpa bumbu, ala kadarnya;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yathāvajja','<p class="definition">(yathā+vajja)   “seperti yang terkutuk”, menirukan orang cacat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yuganaddha','<p class="definition">(yuga+naddha)  m.  pemasangan kuk pada, penggandengan, pemaduan; a. berpadu, harmonis.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yuttayoga','<p class="definition">(yutta+yoga)   m. pengerahan usaha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('yonisomanasikāra','<p class="definition">(yoniso+manasikāra)  m.  perhatian yang semestinya (kondisi ini muncul juga pada kusalacitta yang tidak disertai dengan paññā).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('rattaññu','<p class="definition">(ratta+ññu)   lama, berjalan lama, berdiri lama, terkenal.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('ravivāra','<p class="definition">(ravi+vāra)  m.  hari minggu. [rawi Ü skt. ravi]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('lūkhappasanna','<p class="definition">(lūkha+ppasanna)   a. menaruh keyakinan pada orang yang jembel berdisiplin keras, menghormati orang yang berpenampilan lusuh. [rusak ← skt. rukṣa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('leḍḍupāta','<p class="definition">(leḍḍu+pāta)   sepelemparan bongkahan tanah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('lokauttara','<p class="definition">(loka+uttara)   a. di atas/luar keduniawian, adiduniawi. [loka ← skt. loka]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('loṇasovīraka','<p class="definition">(loṇa+sovīraka)  nt. bubur asam yang diberi garam; campuran dari aneka herba, aneka tanaman, aneka buah, aneka padi-padian, aneka kacang-kacangan, aneka daging, madu, gula, sendawa, garam, rempah-rempah, dan sebagainya; disimpan dalam tempayan selama dua sampai tiga tahun, digunakan sebagai obat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('lomahaṃsa','<p class="definition">(loma+haṃsa)  m. menggidikkan bulu roma; meremang, merinding, menyeramkan, seram (berdiri bulu roma). [roma ← skt. roma(n)]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('lohakumhī','<p class="definition">(loha+kumhī)  f. cerek atau bejana logam;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('lohakaṭāha','<p class="definition">(loha+kaṭāha)   wadah tembaga (atau kuningan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vaṃsañña','<p class="definition">(vaṃsa+ñña)   warisan turun-temurun yang luhur. [wangsa/bangsa ← skt. vaṃsa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vaccamagga','<p class="definition">(vacca+magga)   anus, dubur.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vaṭṭaūpaccheda','<p class="definition">(vaṭṭa+ūpaccheda)  penghancuran (pemutusan) siklus kelahiran kembali.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vaṇṇavant','<p class="definition">(vaṇṇa+vant)  a.  indah, cantik, elok, rupawan, adun-temadun. [warna ← skt. varṇa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vanasaṇḍa','<p class="definition">(vana+saṇḍa)  hutan belantara. [wana ← skt. vana]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vaya','<p class="definition">(vaya (vayo)  +)  (vayo)  gata  dalam usia tua. [bea/biaya ← skt. vyaya]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vassaāvāsa','<p class="definition">(vassa+āvāsa)  m. hal berdiam di satu tempat saat musim hujan, hal hidup melewatkan masa musim hujan. [warsa ← skt. varṣa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vākacīra','<p class="definition">(vāka+cīra)  busana petapa terbuat dari kulit kayu; rajutan jangat kayu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vātapāna','<p class="definition">(vāta+pāna)  m. kisi-kisi jendela, jendela;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vātamaṇḍalikā','<p class="definition">(vāta+maṇḍalikā)  f. angin puyuh, hembusan angin, angin topan, badai, angin taufan..</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vālaṇḍupaka','<p class="definition">(vāla+ṇḍupaka)  m. nt.  sikat bulu (kumparan/bantalan bulu) a.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vāḷayakkha','<p class="definition">(vāḷa+yakkha)   yakkha buas.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vijjādhara','<p class="definition">(vijjā+dhara)   m. ahli mantra atau jampi-jampi; tukang sihir. [widya ← skt. vidyā]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('viyahāva','<p class="definition">(viya+hāva)  m. berkurang, mengecil.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vilīva','<p class="definition">(vilīva (viliva)+)  (viliva)kāra m. perajin bambu, pembuat keranjang. [bilah ? ← skt. bilma]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vissadhamma','<p class="definition">(vissa+dhamma)   dhamma duniawi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vuḍḍha','<p class="definition">(vuḍḍha (vuddha)  +)  (vuddha)  vaya usia tua.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vuḍḍhippatta','<p class="definition">(vuḍḍhi+ppatta)   a. sudah dewasa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vejjakamma','<p class="definition">(vejja+kamma)   nt. praktik pengobatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vesī','<p class="definition">(vesī (vesiyā)+)  (vesiyā)dvāra  bordil, rumah pelacuran.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('vokārahava','<p class="definition">(vokāra+hava)  ); hal yang sepele, tak berharga; gangguan, kesulitan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('votthapana','<p class="definition">(votthapana (voṭṭhapana)+)  (voṭṭhapana)kicca nt. hal berperan untuk menetapkan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sakkāyadiṭṭhi','<p class="definition">(sakkāya+diṭṭhi)   f.  pandangan bahwa ada suatu diri pada badan ini atau salah satu dari gugusan badan ini, ilusi adanya suatu diri.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sakkhidiṭṭha','<p class="definition">(sakkhi+diṭṭha)   a. menyaksikan dengan mata sendiri. [saksi ← skt. sākṣī]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saṃketakamma','<p class="definition">(saṃketa+kamma)  nt.  persetujuan, permufakatan. [sengketa ← skt. saṅketa]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saṅkhalikhita','<p class="definition">(saṅkha+likhita)   terpoles atau mengkilap seperti kulit kerang (siput mutiara), laksana kulit kerang nan gemilap; cemerlang, sempurna. [sangka ← skt. saṅkha]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('satapadī','<p class="definition">(sata+padī)  f. lipan, halipan, kelabang;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('satasahassa','<p class="definition">(sata+sahassa)  nt. seratus ribu.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saddalakkhaṇa','<p class="definition">(sadda+lakkhaṇa)   etimologi;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saddavidū','<p class="definition">(sadda+vidū)  ahli tatabahasa. [sabda ← skt.  ṡabda]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saddhādeyya','<p class="definition">(saddhā+deyya)   nt. pemberian atau derma atau persembahan berdasarkan keyakinan, manipulator keyakinan (theft of faith).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sappāyakiriyā','<p class="definition">(sappāya+kiriyā)   memberi obat.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sappimaṇḍa','<p class="definition">(sappi+maṇḍa)  kekat atau krim mentega jernih, kepala gi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saanāma','<p class="definition">(sabba+�ma)  kataganti orang;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('saalahusa','<p class="definition">(sabba+husa)   teringan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('samānaupajjhāya','<p class="definition">(samāna+upajjhāya)  upajjhaya bersama-sama.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('samphappalāpa','<p class="definition">(sampha+ppalāpa)   pembicaraan yang tidak keruan, omong kosong.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sammakāra','<p class="definition">(samma+kāra)  a. secara benar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sammasanacāra','<p class="definition">(sammasana+cāra)   m. lingkup atau ranah pemahaman.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sammāsamodhi','<p class="definition">(sammā+samodhi)  f. pencerahan sempurna; kebuddhaan tertinggi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('salākāvutti','<p class="definition">(salākā+vutti)  f.  hidup bersandar pada tiket makanan atau hidup bersandar pada helaian rumput (undian kupon makanan).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sassakamma','<p class="definition">(sassa+kamma)   nt. cocok tanam;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sassakāla','<p class="definition">(sassa+kāla)   m. waktu panen, saat panen.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sassatavada','<p class="definition">(sassata+vada)   m. (penganut) paham keabadian; eternalis, eternalisme.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sahadhammika','<p class="definition">(saha+dhammika)   a. rekan sesama dhamma, yang sesuai dengan dhamma, seturut dhamma.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sākhāhaṅga','<p class="definition">(sākhā+haṅga)   seikat kayu bakar.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sājīvasamāpanna','<p class="definition">(sājīva+samāpanna)   yang telah bergabung dalam jalan hidup.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sāmīcikamma','<p class="definition">(sāmīci+kamma)   perbuatan yang pantas yakni penghormatan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sāvakasaṅgha','<p class="definition">(sāvaka+saṅgha)   meliputi bhikkhusaṅgha dan saṅgha dewa dan umat awam (siswa sang buddha); mencakup pula ariyasaṅgha.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sikkhāpada','<p class="definition">(sikkhā+pada)  nt. peraturan latihan, pokok latihan.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sīsaāhitāpa','<p class="definition">(sīsa+āhitāpa)   kelengar matahari, sakit kepala.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sukkavāra','<p class="definition">(sukka+vāra)   m. hari jumat; 2. a. putih, cemerlang, terang, murni, bagus;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('sukkapakkha','<p class="definition">(sukka+pakkha)   m. paruh terang, suklapaksa.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('suññaāgāra','<p class="definition">(suñña+āgāra)  m.  tempat kosong, lokasi tak berpenghuni, tempat yang sunyi atau sepi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('supinaanta','<p class="definition">(supina+anta)  m. mimpi; supinantena  sedang dalam mimpi.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('setughāta','<p class="definition">(setu+ghāta)  a.  meruntuhkan jembatan (yang menghubungkan suatu tempat).</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('senāsanacārika','<p class="definition">(senāsana+cārika)  a.  berkelana dari satu peristirahatan ke peristirahatan lainnya.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('seyyathāpi','<p class="definition">(seyyathā+pi)   sama seperti, sebagaimana, bagaikan; seyyathīdaṃ sebagai berikut, yakni.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hatthapāsa','<p class="definition">(hattha+pāsa)  m. seperentangan tangan, jangkauan tangan. [hasta ← skt. hasta]</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hadayaṃgama','<p class="definition">(hadaya+ṃgama)  berkenan di hati;</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('hadayavatthu','<p class="definition">(hadaya+vatthu)   nt. landasan hati, landasan batin.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('heṭṭhimātala','<p class="definition">(heṭṭhimā+tala)   lapisan terbawah.</p>',51);
INSERT INTO "dictionary" ("word","definition","book_id") VALUES ('heraññikaphalaka','<p class="definition">(heraññika+phalaka)  m. nt. bilah/papan/meja sang penukar mata uang.</p>',51);
COMMIT;
