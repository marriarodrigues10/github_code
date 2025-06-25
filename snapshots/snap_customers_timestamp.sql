{% snapshot  snap_customers_timestamp %}
{{
    config(
      strategy='timestamp',
      unique_key='ID',
      updated_at='updated_at'
    )
}} 
select * 
from PROD.DBT_DEV.CUSTOMERS

{% endsnapshot %}
