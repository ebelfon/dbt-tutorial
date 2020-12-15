with cte
as
(
select * from {{ ref('stg_sales') }}
),

sales_cte 
as
(
    select  SS_CUSTOMER_SK
        ,min(SS_SOLD_DATE_SK) as first_sold_date
        ,max(SS_SOLD_DATE_SK) as current_sold_date
        ,count(SS_ITEM_SK) as number_of_orders
    from cte 
    group by SS_CUSTOMER_SK
)
select * from  sales_cte 