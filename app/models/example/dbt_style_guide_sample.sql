 -- Jaffle shop went international!
with

-- Import CTEs
regions as (
    select * from {{ ref('stg_jaffle_shop__regions') }}
),

nations as (
    select * from {{ ref('stg_jaffle_shop__nations') }}
),

suppliers as (
    select * from {{ ref('stg_jaffle_shop__suppliers') }}
),

-- Logical CTEs
locations as (
    select
        {{ dbt_utils.generate_surrogate_key([
            'regions.region_id',            
            'nations.nation_id'
        ]) }} as location_sk,
        regions.region_id,
        regions.region,
        regions.region_comment,
        nations.nation_id,
        nations.nation,
        nations.nation_comment
    from regions
    left join nations
        on regions.region_id = nations.region_id
),

final as (
    select
        suppliers.supplier_id,
        suppliers.location_id,
        locations.region_id,
        locations.nation_id,
        suppliers.supplier_name,
        suppliers.supplier_address,
        suppliers.phone_number,
        locations.region,
        locations.region_comment,
        locations.nation,
        locations.nation_comment,
        suppliers.account_balance
    from suppliers
    inner join locations
        on suppliers.location_id = locations.location_sk
)

-- Simple select statement
select * from final