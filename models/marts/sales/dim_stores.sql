with stores as (
    select 
        STORE_ID
    , STORE_NAME
    , PHONE
    , EMAIL
    , STREET
    , STREET_NUMBER
    , STREET_NAME
    , CITY
    , STATE
    , ZIP_CODE
     from {{ ref('stg_sales_sch_stores')}}
)

select * from stores