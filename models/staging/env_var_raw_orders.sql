select *
from {{ source('jaffle_shop', 'raw_orders') }}
where order_date >= '{{ env_var("DBT_START_DATE") }}'