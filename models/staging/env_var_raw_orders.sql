select *
from {{ ref('raw_orders') }}

where order_date >= '{{ var("start_date") }}'