{{  
config(
        materialized='ephemeral',
    )
}}

select o.*,c.is_active,c.first_name,c.last_name
from {{ ref('stg_orders') }} as o
join {{ ref('stg_customers') }} as c
on o.customer_id = c.customer_id