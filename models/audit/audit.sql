{% set old_etl_relation=ref('int_orders__pivoted_jinja') %}

{% set dbt_relation=ref('int_orders__pivoted') %}

{{ audit_helper.compare_relations(
    a_relation=old_etl_relation,
    b_relation=dbt_relation,
    primary_key="order_id"
) }}