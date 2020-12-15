{{ config(materialized='table') }}
with cte
as
(
select top 100 
        C_CUSTOMER_ID
        ,C_FIRST_NAME
        ,C_LAST_NAME
        ,C_EMAIL_ADDRESS
from snowflake_sample_data.TPCDS_SF100TCL.customer
)
select * from  cte 