{{ config(materialized="table") }}

select
    format_timestamp('%Y-%m', timestamp_trunc(lpep_pickup_datetime, month))
        as month,
    sum(passenger_count) as total_passengers
from {{ source("raw", "nyc_taxi_trip") }}
group by month
