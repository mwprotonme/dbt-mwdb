{% test minimum_row_count(model, min_row_count) %}
{{ config(severity='warn') }}
SELECT count(*) as cnt 
FROM {{ model }} 
HAVING count(*) < {{ min_row_count }}
{% endtest %}