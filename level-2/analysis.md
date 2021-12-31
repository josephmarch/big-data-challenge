#Summary of Findings and Analysis
Joseph March
2021-12-30

##Overview
The purpose of the analysis was to investigate whether Vine reviews are free of bias and worthwhile.

##Process
Data was originally gathered in level-1 from reviews available on Amazon relating to Video Games and Software. This was broken into 4 tables: review_id_table, products, customers, and vine_table. In level-2, the vine_table data from both sets of reviews was united together into a single set for analysis. SQL commands were run to determine the number of reviews that were from vine (paid) users and from non-vine (non-paid) users, as well as the number of 5-star and 1-star reviews, average rating, and number of helpful votes from vine and non-vine users.

##Results
Vine reviews do not appear to suffer from an abundance of bias and are, on the whole, regarded as more valuable than non-vine reviews. Roughly 56% of non-vine reviews are 5-star reviews, and roughly 13% of non-vine reviews are 1-star reviews, meaning 69% of non-vine reviews fall in the two extremes. Comparatively, roughly 34% of vine reviews are 5-star reviews, and roughly 4% of vine reviews are 1-star reviews, meaning 38% of vine reviews fall in the two extremes. Average ratings overall are higher from non-vine reviewers at 3.98 on average compared to 3.91, but overall ratings are close enough to show bias does not appear to be a factor. Lastly, the number of helpful votes when compared to the number of reviews showed that vine user reviews are considered 14% more helpful than non-vine user reviews.
