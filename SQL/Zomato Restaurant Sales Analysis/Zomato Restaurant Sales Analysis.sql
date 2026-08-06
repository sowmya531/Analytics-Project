select * from zomato_small_100001;
--Query 01: Top-Rated Restaurants by Location and Cuisine
-- Which cuisine performs best in each Bangalore neighbourhood? 
SELECT location,cuisines,count(*) as total_restaurents,avg(rate)as avg_rating,sum(votes) as total_votes
from zomato_small_100001
where rate is not null and rate>0
group by location,cuisines
having count(*)>=5
order by avg_rating desc;
--Query 02: Peak Popularity Analysis
-- Which restaurant types receive the most customer engagement?
SELECT rest_type,online_order,count(*) as total_restaurants,avg(rate) as avg_rating,
avg(approx_cost_for) as avg_approx_cost,avg(votes) as avg_votes from zomato_small_100001
where rest_type is not NULL
group by rest_type,online_order
order by avg_votes DESC
limit 20;
--Query 03: Rank Restaurants Using Window Functions
--Within each location, which restaurants rank highest by rating?
select name,location,cuisines,rate,votes,
DENSE_RANK() OVER(PARTITION BY location order by rate desc) as rank
from zomato_small_100001
where rate>0 and votes>100;
--Query 04: Value-for-Money Segmentation
--Which restaurants deliver high ratings at a low price point?
with cte as(
  select name,location,rate,votes,approx_cost_for,
  ntile(4) over(order by approx_cost_for desc) as cost_rating,
  ntile(4) over(order by rate desc) as rating
  from zomato_small_100001
where rate>0 and votes>50 and approx_cost_for>0)
  select name,location,rate,votes,approx_cost_for,
  case
  when cost_rating=1 and rating=1 then 'Best_Value'
  when cost_rating=4 And rating=1 Then 'Premium'
  when cost_rating=1 and rating=4 then 'Avoid'
  else 'Standard'
  end as segment
  from cte
  order by segment,rating desc;
  