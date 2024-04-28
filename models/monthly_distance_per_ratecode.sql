{{ config(materialized="table") }}

select
    ratecodeid,
    format_timestamp('%Y-%m', timestamp_trunc(lpep_pickup_datetime, month))
        as month,
    sum(trip_distance) as total_trip_distance
from {{ source("raw", "nyc_taxi_trip") }}
group by month, ratecodeid
order by month, ratecodeid
