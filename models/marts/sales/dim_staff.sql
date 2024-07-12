with staff as (
    select
      STAFF_ID
    , FIRST_NAME
    , LAST_NAME
    , EMAIL
    , PHONE
    , ACTIVE
    , STORE_ID
    , MANAGER_ID
     from {{ ref('stg_sales_sch_staffs')}}
)

select * from staff