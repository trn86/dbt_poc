{{  
config(
        alias = 'customer_purchase_info',
        schema= 'defined',
        materialized='table',
    )
}}

select *
from {{ ref('ephmeral_cust_order') }}