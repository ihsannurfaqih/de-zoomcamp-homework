-- sample data
select * from yellow_tripdata limit 10;

-- How many rows are there for the Yellow Taxi data for all CSV files in the year 2020
select
    count(*)
from yellow_tripdata
where true
    and filename like '%2020%';

-- How many rows are there for the Green Taxi data for all CSV files in the year 2020?
select
    count(*)
from green_tripdata
where true
    and filename like '%2020%';

-- How many rows are there for the Yellow Taxi data for the March 2021 CSV file? (1 point)
select
    count(*)
from yellow_tripdata
where true
    and filename like '%2021-03%';