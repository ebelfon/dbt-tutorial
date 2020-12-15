select  TOP 100000 SS_CUSTOMER_SK
        ,SS_SOLD_DATE_SK
        ,SS_ITEM_SK
from snowflake_sample_data.TPCDS_SF100TCL.STORE_SALES