{{ config(materialized='table') }}

with source_data as (

    select 1 as id,
      234 as product_id,
     '2023-01-01' as date,
      2 as quantity,
      100.50 as cost,
      1 as customer_id 
    union all 
    select 2 as id,
      235 as product_id,
     '2023-01-02' as date,
      1 as quantity,
      30.12 as cost,
      1 as customer_id 
)

select *
from source_data