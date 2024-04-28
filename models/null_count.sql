{{ config(materialized="table") }} {{ count_nulls_per_month("VendorID") }}
