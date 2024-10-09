{{
    config(
        materialized='table'
    )
}}

with deposits as (

    select * from {{ref('stg_deposits')}}

),

expenses as (

    select * from {{ref('stg_expenses')}}

)

select * from deposits