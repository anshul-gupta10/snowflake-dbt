-- this is important to prevent dbt parser to add prefix automatically
{% macro generate_schema_name(schema_name,database_name) %}
    {% if target.name == 'dev_pr'%}
        {{'PR_'+'REQUEST'}}
    {% else %}
        {{ schema_name if schema_name is not none else target.schema}}
    {% endif %}
{% endmacro%}

-- {% macro refer(dataset,tablename) %}

--     {% if dataset =='*'  %}
--        {{ ref('{{tablename}}') }}
--     {% else %}
--        {{dataset}}.{{tablename}}
--     {% endif %}

-- {% endmacro %}