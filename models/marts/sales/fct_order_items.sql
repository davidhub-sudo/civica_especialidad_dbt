with orders as (
    select * from {{ ref('stg_sales_sch_orders')}}
),

order_items as (
    select * from {{ ref('stg_sales_sch_order_items')}}
),

final as (
    select 
          a.order_id     
        , a.item_id
        , a.product_id
        , a.quantity
        , a.list_price
        , a.discount
        , b.customer_id
        , b.staff_id
        , b.store_id
        , b.order_date
        , b.required_date 
        , b.shipped_date
        , b.order_id as order_status_id  
    from order_items as a
    left join orders as b
    ON a.order_id = b.order_id
)

select * from final