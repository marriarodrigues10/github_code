{{ config(
    materialized='table') 
    }}


with
emp_data as (
    select Emp_ID,
           First_Name, 
           salary,
           tax_amount,
           ({{calculate_amount('salary','tax_amount')}}) as total_amount
     from  
    {{source('datafeed_shared_schema','emp_tax')}}
)
select * from emp_data 

