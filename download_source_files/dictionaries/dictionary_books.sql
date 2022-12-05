BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "dictionary_books" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT,
	"user_order"	INTEGER,
	"user_choice"	INTEGER,
	PRIMARY KEY("id")
);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (1,'တိပိဋက ပါဠိ-မြန်မာ အဘိဓာန်',5,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (2,'ဦးဟုတ်စိန် ပါဠိ-မြန်မာအဘိဓာန်',6,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (3,'ဓာတွတ္ထပန်းကုံး',7,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (4,'ပါဠိဓာတ်အဘိဓာန်',8,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (5,'PTS Pali-English Dictionary',3,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (6,'Concise Pali-English Dictionary',2,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (8,'Pali English Ultimate (PEU)',1,1);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (9,'Pali Proper Names (DPPN)',4,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (11,'Digital Pāḷi Dictionary',0,1);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (18,'English English Worldnet',11,1);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (21,'Pali Chinese 1',9,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (22,'Pali Chinese 2',10,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (31,'Sinhala 1',12,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (32,'Sinhala 2',13,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (41,'Hindi 1',14,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (51,'Pali Indonesian',15,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (61,'Pali German',16,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (71,'Pali Vietnamese 1',17,0);
INSERT INTO "dictionary_books" ("id","name","user_order","user_choice") VALUES (72,'Pali Vietnamese 2',18,0);
COMMIT;
