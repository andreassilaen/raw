{{ config(materialized="table") }}
select *
from {{ source("raw", "nyc_taxi_trip") }}
