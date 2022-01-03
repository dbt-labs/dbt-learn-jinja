{% macro query_and_log_example() %}

    {% set query %}
        select 'dbt' as data_tool
    {% endset %}

    {% if execute %}
    
        {{ log('Executing SQL ...', info = True) }}
        {% set results = run_query(query).columns[0].values()[0]  %}
        {{ log('SQL results: ' ~ results, info = True) }}

        {% if results == 'dbt' %}
            dbt is very cool!
        {% else %}
            where is my dbt?
        {% endif %} 
    
    {% endif %}
  
{% endmacro %}