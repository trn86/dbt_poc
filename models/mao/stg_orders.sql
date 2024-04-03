{{  
config(
        alias = 'stg_orders',
        schema= 'defined',
        materialized='table',
    )
}}

select *
from {{ source('oxford','orders') }}
