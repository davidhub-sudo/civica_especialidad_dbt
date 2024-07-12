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
    , cast(TRIM(REGEXP_SUBSTR(STREET, '^[0-9]+')) as integer) as STREET_NUMBER
    , TRIM(SUBSTRING(STREET, LEN(STREET_NUMBER)+1)) as STREET_NAME
    , CITY
    , STATE
    , cast(ZIP_CODE as integer) as ZIP_CODE
FROM {{ source('sales', 'stores') }}

