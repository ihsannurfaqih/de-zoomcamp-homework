-- Total records of fct_monthly_zone_revenue
SELECT
	count(*)
FROM taxi_rides_ny.analytics_prod.fct_monthly_zone_revenue;

-- Zone with the highest revenue for Green taxis in 2020
select
	pickup_zone
	, sum(revenue_monthly_total_amount) as total_revenue
from taxi_rides_ny.analytics_prod.fct_monthly_zone_revenue
where true
	and service_type = 'Green'
	and revenue_month between '2020-01-01' and '2020-12-31'
GROUP BY pickup_zone
ORDER BY total_revenue desc;

-- Total trips for Green taxis in October 2019
select
	sum(total_monthly_trips)
from taxi_rides_ny.analytics_prod.fct_monthly_zone_revenue
where true
	and service_type = 'Green'
	and revenue_month between '2019-10-01' and '2019-10-31';

-- Total records in stg_fhv_tripdata (filter dispatching_base_num IS NULL)
select
	count(*)
from taxi_rides_ny.analytics_prod.stg_fhv_tripdata
