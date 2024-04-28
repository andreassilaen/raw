{{ config(materialized="table") }}

select
    payment_type,
    format_timestamp('%Y-%m', timestamp_trunc(lpep_pickup_datetime, month))
        as month,
    count(*) as transaction_count,
    sum(total_amount) as total_amount,
    sum(total_amount) * 16241.5 as amount_idr
from `raw.nyc_taxi_trip`
group by month, payment_type
order by month, payment_type
