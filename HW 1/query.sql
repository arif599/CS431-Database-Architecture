-- Multiple query statements for book

SELECT publisher FROM shaika.book; -- Returns all the publishers from the book table

SELECT title, pages FROM shaika.book WHERE name = 'William Golding'; -- Returns title and pages of books writen by William Golding

SELECT name FROM shaika.book WHERE EXTRACT(YEAR FROM pubdate) = 2021; -- Returns author name of books published in 2021