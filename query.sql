SELECT
    *
FROM
    beer_reviews b
WHERE
    b.review_profilename ilike '%greg%'
LIMIT 1000; 