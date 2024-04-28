{% test test_is_column_null(model, column_name) %}

    select * from {{ model }} where {{ column_name }} is null

{% endtest %}
