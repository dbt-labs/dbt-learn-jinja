{% macro pivot_data_step_1(column, values) %}
  {% for value in values %}
    sum(case when {{ column }} = '{{ value }}' then amount else 0 end) as {{ column }}_amount
  {% endfor %}
{% endmacro %}

{% macro pivot_data_step_2(column, values, then_val, else_val) %}
  {% for value in values %}
    sum(case when {{ column }} = '{{ value }}' then {{ then_val }} else {{ else_val}} end) as {{ column }}_amount
  {% endfor %}
{% endmacro %}

{% macro pivot_data_step_3(column, values, then_val, else_val) %}
  {% for value in values %}
    sum(case when {{ column }} = '{{ value }}' then {{ then_val }} else {{ else_val}} end) as {{ column }}_amount
  {% endfor %}
{% endmacro %}