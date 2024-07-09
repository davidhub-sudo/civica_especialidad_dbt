{{
  config(
    materialized='view'
  )
}}

WITH src_sales_staffs AS (
    SELECT * 
    FROM {{ source('sales', 'staffs') }}
    ),

renamed_casted AS (SELECT * FROM src_sales_staffs)
SELECT * FROM renamed_casted


