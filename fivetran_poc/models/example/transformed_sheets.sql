{{ config(materialized='table') }}

with source_data as (
    select string from `sadaindia-tvm-poc-de`.google_sheets.poc_sheets
)

select UPPER(string)
from source_data