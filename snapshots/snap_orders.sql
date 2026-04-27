{% snapshot snap_new_orders %}

{{
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='timestamp',
        updated_at='_etl_loaded_at',
    )
}}

select *
from {{ ref('raw_orders') }}

{% endsnapshot %}