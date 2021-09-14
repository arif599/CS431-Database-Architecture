-- Inserting values into reviewer table
INSERT INTO shaika.reviewer(name, country) VALUES 
	('Ronny Kordova', 'United States');
	('Odille Suston', 'Philippines'),
	('Maridel Wattam', 'China'),
	('Talya Busch', 'Thailand'),
	('Matthaeus Gillice', 'Poland'),
	('Leupold Woodland', 'France'),
	('Sonnie Pizey', 'France');

-- Inserting values into review table
INSERT INTO shaika.review(comments, review_date, reviewer_id, reviewedid, rating) VALUES
	('Amazing book!', '2021-9-1', 1, '0060935464', 5),
	('I found this book to be very intresting', '2021-9-1', 2, '0399501487', 4),
	('Must read!', '2021-9-1', 2, '0571329098', 5),
	('I liked it', '2021-9-1', 3, '0060935464', 4),
	('Worth it!', '2021-9-1', 4, '0008460930', 5),
	('Not good', '2021-9-1', 5, '0571329098', 1);	