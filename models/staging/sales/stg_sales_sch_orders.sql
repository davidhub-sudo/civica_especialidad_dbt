{{
  config(
    materialized='view'
  )
}}

WITH src_sales_orders AS (
    SELECT * 
    FROM {{ source('sales', 'orders') }}
    ),

renamed_casted AS (SELECT * FROM src_sales_orders)
SELECT * FROM renamed_casted


