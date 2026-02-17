with source as (
    select * from {{ source('raw', 'fhv_tripdata') }}
)

, renamed as (
    select
        -- identifiers
        cast(dispatching_base_num as varchar) as dispatching_base_num,
        cast(pickup_datetime as timestamp) as pickup_datetime,
        cast(dropoff_datetime as timestamp) as dropoff_datetime,
        cast(pulocationid as integer) as pickup_location_id,
        cast(dolocationid as integer) as dropoff_location_id,
        cast(sr_flag as varchar) as sr_flag,
        cast(affiliated_base_number as varchar) as affiliated_base_number
    from source
)

select * from renamed
WHERE dispatching_base_num IS NOT NULL -- Filter out records with null dispatching_base_num (data quality requirement)
