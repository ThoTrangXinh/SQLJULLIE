select distinct city from station
where ID % 2 = 0

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;


SELECT 
ROUND(
CAST(SUM(item_count * order_occurrences) / SUM(order_occurrences) AS numeric)
,1)
FROM items_per_order;


SELECT distinct candidate_id
FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count (skill)=3
order by candidate_id

SELECT user_id,
date(max(post_date))-date(min(post_date)) as days_between
FROM posts
where post_date >= '2021-01-01' and post_date <= '2022-01-01'
group by user_id
having count (user_id) >=2


SELECT 
card_name,
max(issued_amount)-min(issued_amount) as difference
FROM monthly_cards_issued
group by card_name
order by difference DESC


SELECT manufacturer,
count (drug) as drug_count,
sum(cogs) - sum (total_sales) as total_loss
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_loss DESC


select * from cinema
where id % 2 = 1
and description not like '%boring%'
order by rating DESC

select user_id, 
count(follower_id) as 'followers_count'
from followers
group by user_id
order by user_id























