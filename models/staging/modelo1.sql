{{
  config(
    materialized='view'
  )
}}

WITH src_budget_products AS (
    SELECT * 
    FROM {{ source('google_sheets', 'personas') }}
    ),

renamed_casted AS (
    SELECT
          name
        , year
        , income
        , education
        , graduation
        , standing AS date_load
    FROM src_budget_products
    )

SELECT * FROM renamed_casted