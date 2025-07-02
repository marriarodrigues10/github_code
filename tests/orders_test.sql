
select * from {{source('datafeed_shared_schema','CUSTOMERS')}} where ID is null
