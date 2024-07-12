with customers as (
    select 
      CUSTOMER_ID
    , FIRST_NAME
    , LAST_NAME
    , PHONE
    , EMAIL
    , STREET
    , STREET_NUMBER
    , STREET_NAME
    , CITY
    , STATE
    , ZIP_CODE
     from {{ ref('stg_sales_sch_customers')}}
)

select * from customers