-- find total rows
select
	COUNT(*)
from yellow_taxi;


-- find rows with fare_amount = 0
select
	count(*)
from yellow_taxi yt
where true
	and yt.fare_amount = 0;


select
	*
from yellow_taxi