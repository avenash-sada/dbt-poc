{{ config(materialized='table') }}

with source_data as (
    select string, timestamp from `sadaindia-tvm-poc-de`.google_sheets.poc_sheets
)

select UPPER(string) as upper_string, timestamp as time_stamp
from source_data