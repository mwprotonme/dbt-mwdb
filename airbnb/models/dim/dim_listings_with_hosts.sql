WITH l AS (
    SELECT * from {{ ref('dim_listings_cleansed') }}
),
h AS (
    SELECT * FROM {{ ref('dim_hosts_cleansed') }}
)
SELECT l.listing_id,
       l.listing_name,
       l.room_type,
       l.minimum_nights,
       l.price,
       l.host_id,
       h.host_name,
       h.IS_SUPERHOST as host_is_superhost,
       l.CREATED_AT,
       GREATEST(l.UPDATED_AT, h.UPDATED_AT) as UPDATED_AT
FROM l
LEFT join h on (h.host_id = l.host_id)
