{% macro convert_to_rupiah(amount_usd) %}
    {{ amount_usd }} * 16241.5 as amount_idr
{% endmacro %}
