select
    format_timestamp('%Y-%m', timestamp_trunc(lpep_pickup_datetime, month))
        as month,
    count(*) as total_null
from {{ source("raw", "nyc_taxi_trip") }}
where pulocationid is null
group by month
