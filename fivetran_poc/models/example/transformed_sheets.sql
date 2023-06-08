{{ config(materialized='view') }}

with source_data as (
    select string from `sadaindia-tvm-poc-de`.google_sheets.poc_sheets
)

select UPPER(string) as upper_string, CURRENT_TIME() as now
from source_data