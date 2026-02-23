WITH review_values as
(
select CASE
        WHEN r.review_date < l.created_at THEN
            'review before listing'
        ELSE 'good'
        END as REVIEW_BEFORE
from {{ ref('fct_reviews') }} r
inner join {{ ref('dim_listings_cleansed') }} l
on l.listing_id = r.listing_id
)
SELECT *
FROM review_values
WHERE REVIEW_BEFORE != 'good'
limit 10