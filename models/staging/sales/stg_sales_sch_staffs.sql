{{
  config(
    materialized='view'
  )
}}

SELECT 
      STAFF_ID
    , FIRST_NAME
    , LAST_NAME
    , EMAIL
    , PHONE
    , ACTIVE
    , STORE_ID
    , MANAGER_ID
FROM {{ source('sales', 'staffs') }}
    



