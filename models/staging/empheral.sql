{{ config(
materialized=

'ephemeral'

)}}
select * from {{source('datafeed_shared_schema','raw_customer_data')}}