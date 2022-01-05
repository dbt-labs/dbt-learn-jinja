use role loader;

create schema raw.dbt_learn_jinja;

create table raw.dbt_learn_jinja.orders__shopify as (

    select 
        1 as order_id,
        45 as order_amount
        '2021-03-24 19:29:23.000'::timestamp as order_date
    
    union all 

    select 
        2 as order_id,
        35 as order_amount
        '2021-03-25 09:31:38.000'::timestamp as order_date

);


create table raw.dbt_learn_jinja.orders__amazon as (

    select 
        3 as order_id,
        45 as order_amount
        '2021-03-26 01:26:23.000'::timestamp as order_date
    
    union all 

    select 
        4 as order_id,
        450 as order_amount
        '2021-03-24 19:12:52.000'::timestamp as order_date

);

