-- gets all the books that have multiple editions AND gets other books that don't have editions
SELECT asin, title, name, publisher, pubdate, new_price, new_pages, new_format, new_language
FROM shaika.edition JOIN shaika.collection -- getting multiple editions of a specific book
ON edition.asin = collection.edition_id
UNION -- combining results of various editions of the books with books that dont have other editions
SELECT asin, title, name, publisher, pubdate, price, pages, format, language
FROM shaika.edition LEFT OUTER JOIN shaika.collection -- getting all the other books that don't have an edition
ON edition.asin = collection.edition_id;

-- get all editions based on a given asin
SELECT asin, title, name, publisher, pubdate, edition_number, new_price, new_pages, new_format, new_language
FROM shaika.edition JOIN shaika.collection -- getting multiple editions of a specific book
ON edition.asin = collection.edition_id
WHERE asin = '0060935464';

-- get all lmap products with thier size & price pairs
SELECT title, description, inventory, material, size, price
FROM shaika.lamp JOIN shaika.lamppairs
ON lamp.product_asin = lamppairs.lamp_id;

-- get all the prices and sizes for lamp002
SELECT title, description, inventory, material, size, price
FROM shaika.lamp JOIN shaika.lamppairs
ON lamp.product_asin = lamppairs.lamp_id
WHERE product_asin = 'lamp002';

