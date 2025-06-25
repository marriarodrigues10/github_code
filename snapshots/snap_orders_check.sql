{% snapshot snap_orders_check %}


    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='ID',
          check_cols=['first_name','last_name'],
        )
    }}

    select * from {{ source('datafeed_shared_schema', 'customers_snaps') }}

{% endsnapshot %}