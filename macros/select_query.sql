{% macro select_query(columns, table_name, condition="", order_by="", limit="") %}
    select {{ columns | join(", ") }}
    from {{ table_name }}
    {% if condition %} where {{ condition }} {% endif %}
    {% if order_by %} order by {{ order_by }} {% endif %}
    {% if limit %} limit {{ limit }} {% endif %}
{% endmacro %}
