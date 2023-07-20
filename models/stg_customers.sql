
{{ config(materialized='table') }}

with source_data as (

    select 1 as id,
     'jonny' as first_name,
      'cash' as last_name
    union all
    select 2 as id,
     'rodney' as first_name,
      'bash' as  last_name

)

select *
from source_data