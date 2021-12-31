-- Show table
SELECT * FROM vine_table;

-- Split the reviews between vine (paid) and non-vine (unpaid)
SELECT * FROM vine_table WHERE vine='Y';
SELECT * FROM vine_table WHERE vine='N';

-- Compare metrics between vine and non-vine reviews

-- Number of reviews
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y';
SELECT COUNT(review_id) FROM vine_table WHERE vine='N';
-- Findings: non-vine = 2,113,222, vine = 14,706

-- Number of 5-star reviews
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating=5;
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating=5;
-- Findings: non-vine = 1,175,883, vine = 4,988
-- Roughly 56% of non-vine reviews are 5 star reviews
-- Roughly 34% of vine reviews are 5 star reviews

-- Number of 1-star reviews
SELECT COUNT(review_id) FROM vine_table WHERE vine='Y' AND star_rating=1;
SELECT COUNT(review_id) FROM vine_table WHERE vine='N' AND star_rating=1;
-- Findings: non-vine = 265,599, vine = 564
-- Roughly 13% of non-vine reviews are 1 star reviews
-- Roughly 4% of vine reviews are 1 star reviews

-- Average rating
SELECT AVG(star_rating) FROM vine_table WHERE vine='Y';
SELECT AVG(star_rating) FROM vine_table WHERE vine='N';
-- Findings: non-vine = 3.9812031107001536, vine = 3.9079287365701074

-- Number of helpful votes
SELECT SUM(helpful_votes) FROM vine_table WHERE vine='Y';
SELECT SUM(helpful_votes) FROM vine_table WHERE vine='N';
-- Findings: non-vine = 5,483,541, vine = 43,318
-- When comparing number of helpful votes to number of reviews,
-- this showed the average number of helpful votes per review were
-- 2.95 for vine and 2.59 for non-vine