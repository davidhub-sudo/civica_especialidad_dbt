{{
  config(
    materialized='view'
  )
}}


SELECT
      CUSTOMER_ID
    , FIRST_NAME
    , LAST_NAME
    , PHONE
    , EMAIL
    , STREET
    , cast(TRIM(REGEXP_SUBSTR(STREET, '^[0-9]+')) as integer) as STREET_NUMBER
    , TRIM(SUBSTRING(STREET, LEN(STREET_NUMBER)+1)) as STREET_NAME
    , CITY
    , STATE
    , ZIP_CODE
FROM {{ source('sales', 'customers') }}

