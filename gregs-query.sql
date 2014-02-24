
select
    b.review_aroma
    , b.review_overall
    , b.brewery_id
    , 1
from
    beer_reviews b
limit 10;