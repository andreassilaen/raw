{{ config(
    materialized="table"
) }}

{{ select_query(
    ["*"],
    "raw.nyc_taxi_trip",
    condition="",
    order_by="",
    limit="5"
) }}
