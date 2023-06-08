{{
    config(
        materialized='incremental',
        unique_key='upper_string'
    )
}}

with source_data as (
    select string, timestamp from `sadaindia-tvm-poc-de`.google_sheets.poc_sheets
)

select UPPER(string) as upper_string, timestamp as time_stamp
from source_data

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where PARSE_TIMESTAMP("%m/%d/%Y %H:%M:%S", time_stamp) > (select max(PARSE_TIMESTAMP("%m/%d/%Y %H:%M:%S", time_stamp)) from {{ this }})

{% endif %}