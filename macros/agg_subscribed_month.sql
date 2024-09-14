{% macro agg_subscribed_month(agg_func = 'min', subscribed_flag = 'is_subscribed_current_month', date_field = 'date_month', partition_by = 'user_id, subscription_id') %}
    {{ agg_func }}( CASE WHEN {{ subscribed_flag }} THEN {{ date_field }} END ) OVER ( PARTITION BY {{ partition_by }} )
{% endmacro %}
