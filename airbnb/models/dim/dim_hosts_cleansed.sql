{{ 
  config(
    materialized = 'view'
  )
}}
WITH src_hosts as (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT HOST_ID,
       NVL(HOST_NAME, 'Anonymous') HOST_NAME,
       Iff(IS_SUPERHOST = 't', TRUE, FALSE) IS_SUPERHOST,
       CREATED_AT,
       UPDATED_AT
    FROM src_hosts
