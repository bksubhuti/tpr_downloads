Begin Transaction;
DELETE from tocs where book_id = 'annya_iit_chants';
DELETE from books where id = 'annya_iit_chants';
DELETE from pages where bookid = 'annya_iit_chants';
DELETE from fts_pages where bookid = 'annya_iit_chants';
DELETE from category where id = 'annya_iit_chant';
COMMIT;
Begin Transaction;
INSERT INTO category (id, name, basket) Select 'annya_iit_chant', 'Chanting', 'annya' WHERE NOT EXISTS(SELECT 1 FROM category WHERE id = 'annya_iit_chant');
INSERT INTO books (id, basket, category, name, firstpage, lastpage, pagecount) VALUES ('annya_iit_chants', 'annya', 'annya_iit_chant', 'IIT Chants', 1, 1, 1); 

COMMIT;Begin Transaction;
INSERT INTO tocs (book_id, name, type, page_number) VALUES ('annya_iit_chants', '
      01. First utterance of the Buddha
    ', 'title', 1);
COMMIT;
