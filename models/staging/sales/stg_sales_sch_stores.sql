{{
  config(
    materialized='view'
  )
}}

WITH src_sales_stores AS (
    SELECT * 
    FROM {{ source('sales', 'stores') }}
    ),

renamed_casted AS (SELECT * FROM src_sales_stores)
SELECT * FROM renamed_casted


