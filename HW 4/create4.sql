-- Creating a table for all editions of a book called collection	
CREATE TABLE shaika.collection(
	edition_id VARCHAR(100) REFERENCES shaika.edition(ASIN) NOT NULL, -- id of the edition
    edition_number INT NOT NULL, -- edition number/volume of the book
    new_price MONEY NOT NULL CHECK(new_price::numeric >= 0), -- the new price of the book based on the edition
	new_pages INT CHECK(new_pages > 0), -- the new page count of the book based on the edition
	new_format VARCHAR(50) NOT NULL, -- the new format of the book based on the edition
	new_language VARCHAR(50) NOT NULL -- the new language of the book based on the edition
);  

-- Creating a table for review	
CREATE TABLE shaika.lamp(
	product_asin VARCHAR(100) PRIMARY KEY NOT NULL, -- id of the lmap
	title VARCHAR(100) NOT NULL, -- title for a lamp
    description TEXT NOT NULL, -- description of the product lamp
	inventory INT NOT NULL, -- lamp inventory count
	material VARCHAR(100) NOT NULL -- material of the lamp
);

-- Creating a table that will relate the size and price for lamp
CREATE TABLE shaika.lamppairs(
	lamp_id VARCHAR(100) REFERENCES shaika.lamp(product_asin) NOT NULL, -- reference lamp 
	size VARCHAR(100) NOT NULL, -- size of the lamp
	price MONEY NOT NULL CHECK(price::numeric >= 0) -- price of the lamp based on price
);
