select
    *
from
    beer_reviews b
where    
    b.review_profilename ilike '%greg%'
limit 1000;
