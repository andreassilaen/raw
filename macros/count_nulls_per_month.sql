{% macro count_nulls_per_month(column_name) %}
    select
        format_timestamp(
            '%Y-%m', timestamp_trunc(lpep_pickup_datetime, month)
        ) as month,
        count(1) as total_{{ column_name }}_null
    from {{ source("raw", "nyc_taxi_trip") }}
    where {{ column_name }} is null
    group by month
{% endmacro %}
