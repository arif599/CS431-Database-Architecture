-- Bad insert staments that should not be allowed

INSERT INTO shaika.book(ASIN, title, name, publisher, pubdate, pages)
VALUES ('0060935464', 'Woke', 'Vivek Ramaswamy', 'Center Street', '2020-06-17', 368), -- ASIN already exits
('1982173610', 'Billy Summers', 'Stephen King', 'Scribner', '2020-08-03', 0), -- Incorrect page count of 0
('7294764849', '', 'Robert Greene', 'Penguin Books', '2000-09-01', 452); -- No book title
					    