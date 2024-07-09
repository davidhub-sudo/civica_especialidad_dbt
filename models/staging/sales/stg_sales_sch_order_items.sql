{{
  config(
    materialized='view'
  )
}}

WITH src_sales_order_items AS (
    SELECT * 
    FROM {{ source('sales', 'order_items') }}
    ),

renamed_casted AS (SELECT * FROM src_sales_order_items)
SELECT * FROM renamed_casted


