{{
  config(
    materialized='view'
  )
}}

WITH src_sales_customers AS (
    SELECT * 
    FROM {{ source('sales', 'customers') }}
    ),

/*
renamed_casted AS (
    SELECT
          CUSTOMER_ID
        , FIRST_NAME
        , LAST_NAME
        , PHONE
        , EMAIL
        , STREET
        , CITY
        , STATE
        , ZIP_CODE
        , FIVETRAN_DELETED
        , FIVETRAN_SYNCED
    FROM src_sales_customers
    )
*/
renamed_casted AS (SELECT * FROM src_sales_customers)
SELECT * FROM renamed_casted


