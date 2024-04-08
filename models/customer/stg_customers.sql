{{  
config(
        alias = 'stg_customers',
        schema= 'defined',
        materialized='table',
    )
}}

select *
from {{ source('oxford','customers') }}
