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

{% macro query_and_log_example_2() %}

    {% set query %}
      select true as bool
    {% endset %}

    {% if execute %}
        {% set results = run_query(query).columns[0].values()[0] %}      
        {{ log('SQL results: ' ~ results, info = True) }}
        {{ results }}

        select 
            {{ results }} as is_real
        from a_real_table
    {% endif %}

{% endmacro %}