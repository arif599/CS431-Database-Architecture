-- Chainging the name of the book table to edition 
ALTER TABLE shaika.book RENAME TO edition;

-- Updating insert_bad.sql records
UPDATE shaika.edition SET ASIN = '4521598753' WHERE ASIN = '0060935464'; -- Correcting bad insert of ASIN already exits
UPDATE shaika.edition SET pages = 255 WHERE pages = 0; -- Correcting bad insert of page count of 0
UPDATE shaika.edition SET title = 'The Hunger Games' WHERE title = ''; -- Correcting bad insert of no book title

-- Altering the edition table
ALTER TABLE shaika.edition ADD CONSTRAINT ASIN PRIMARY KEY(ASIN); -- Making ASIN a primary key
ALTER TABLE shaika.edition ADD CONSTRAINT pages CHECK(pages > 0); -- Adding a check constrait which makes sure pages positive
ALTER TABLE shaika.edition 
	ADD format VARCHAR(50) NOT NULL DEFAULT 'MLA', -- Adding a new Column called format
	ADD language VARCHAR(50) NOT NULL DEFAULT 'English', -- Adding a new Column called language
	ADD price MONEY NOT NULL DEFAULT 0 CHECK(price::numeric >= 0); -- Adding a new Column called price
	
-- Updating existing records to match with new design
UPDATE shaika.edition SET format='Book', language='English', price='19.99' WHERE ASIN='4521598753';
UPDATE shaika.edition SET format='Audiobook', language='Spanish', price='14.99'  WHERE ASIN='1982173610';
UPDATE shaika.edition SET format='Audiobook', language='English', price='9.99'  WHERE ASIN='7294764849';
UPDATE shaika.edition SET format='Audiobook', language='English', price='19.99' WHERE ASIN='9780374500';
UPDATE shaika.edition SET format='Book', language='Spanish', price='14.99'  WHERE ASIN='0008460930';
UPDATE shaika.edition SET format='Book', language='English', price='9.99'  WHERE ASIN='0571329098';
UPDATE shaika.edition SET format='Book', language='English', price='19.99' WHERE ASIN='0399501487';
UPDATE shaika.edition SET format='Book', language='Spanish', price='14.99'  WHERE ASIN='0060935464';

	
-- Creating a table for reviewer	
CREATE TABLE shaika.reviewer(
	id BIGSERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(225) NOT NULL,
	country VARCHAR(225) NOT NULL	
);

-- Creating a table for review	
CREATE TABLE shaika.review(
	id bigserial PRIMARY KEY NOT NULL,
	comments TEXT NOT NULL,
	review_date DATE NOT NULL,
	reviewer_id BIGINT REFERENCES shaika.reviewer(id) NOT NULL,
	reviewedid VARCHAR(100) REFERENCES shaika.edition(ASIN) NOT NULL,
	rating INT NOT NULL
);
	