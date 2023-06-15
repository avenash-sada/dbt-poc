{{
    config(
        materialized='incremental',
        unique_key='email'
    )
}}

with source_data as (
    select first_name, last_name, job_title, email, salary, _fivetran_synced from {{source('poc','poc_sheets')}}
    where salary > 9500
)

select Concat(first_name, " ", last_name) as full_name, job_title, email, salary, _fivetran_synced
from source_data

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where _fivetran_synced > (select max(_fivetran_synced) from {{ this }})

{% endif %}
