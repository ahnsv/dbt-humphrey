{{ config(materialized='table') }}

select id, first_name || ' ' || last_name as full_name, email from {{ ref('customers') }}