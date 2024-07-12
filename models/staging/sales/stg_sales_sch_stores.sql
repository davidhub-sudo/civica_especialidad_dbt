{{
  config(
    materialized='view'
  )
}}

SELECT 
        STORE_ID
    , STORE_NAME
    , PHONE
    , EMAIL
    , STREET
    , CITY
    , STATE
    , ZIP_CODE
FROM {{ source('sales', 'stores') }}

