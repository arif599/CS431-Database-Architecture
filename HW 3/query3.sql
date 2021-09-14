-- Gets the titles of all books reviewed by a particular reviewer name
SELECT title 
FROM shaika.review 
JOIN shaika.reviewer ON review.id = reviewer_id 
JOIN shaika.edition ON review.reviewedid = edition.asin 
WHERE reviewer.name = 'Odille Suston';

-- Gets the names of reviewers who have reviewed books that are in a specific language (Spanish) other than English
SELECT reviewer.name, title 
FROM shaika.review 
JOIN shaika.reviewer ON review.id = reviewer_id 
JOIN shaika.edition ON review.reviewedid = edition.asin 
WHERE language = 'Spanish';

-- Gets the reviewer name, rating, comment and date of review for all reviews of a given title which is then ordered by date of review
SELECT reviewer.name, rating, comments, review_date 
FROM shaika.review 
JOIN shaika.reviewer ON review.id = reviewer.id 
JOIN shaika.edition ON review.reviewedid = edition.asin 
WHERE title = 'The Inheritors';


-- Gets the reviewer name, country of reviewer, rating and comment for all reviews if the reviewer if from countries other than the United States
SELECT reviewer.name, rating, comments, review_date 
FROM shaika.review 
JOIN shaika.reviewer ON review.id = reviewer.id 
JOIN shaika.edition ON review.reviewedid = edition.asin 
WHERE country != 'United States';

-- Gets names of any reviewers who review books by an author with the same name, plus the title of such a book
SELECT reviewer.name, title 
FROM shaika.review 
JOIN shaika.reviewer ON review.id = reviewer.id 
JOIN shaika.edition ON review.reviewedid = edition.asin 
WHERE lower(reviewer.name) = lower(edition.name);

-- Gets titles of books without reviews
SELECT title
FROM shaika.edition
LEFT JOIN shaika.review ON edition.asin = review.reviewedid
WHERE reviewedid IS NULL;

-- Gets titles of books with only 5 star reviews
SELECT title
FROM shaika.edition
LEFT JOIN shaika.review ON edition.asin = review.reviewedid
WHERE rating = 5;

-- Lists the 3 most recently published books
SELECT title, pubdate
FROM shaika.edition
ORDER BY pubdate DESC LIMIT 3;

-- Gets the title of highest-scoring book in database, as determined by an average of the scores by the different votes
SELECT title, avg(rating)
FROM shaika.review
JOIN shaika.edition ON review.reviewedid = edition.asin
GROUP BY title
ORDER BY avg(rating) DESC LIMIT 1;