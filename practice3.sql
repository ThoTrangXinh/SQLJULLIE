select name from students
where marks >75
order by right(name,3), ID

select 
user_id,
concat(upper(substring(name from 1 for 1)),lower(right(name,length(name)-1))) as name
from users

select tweet_id from tweets
where length(content) > 15

select 
activity_date as day,
count(distinct user_id) as active_users
from activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date


SELECT
manufacturer,
'$'||round(sum(total_sales)/1000000)||' million' as sale
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) DESC, manufacturer

SELECT 
extract(month from submit_date) as mth,
product_id as product,
round(avg(stars),2) as avg_stars
FROM reviews
group by extract(month from submit_date), product_id
order by extract(month from submit_date), product_id

SELECT
sender_id,
count(sender_id) as message_count
FROM messages
where EXTRACT(month from sent_date) = 8
and EXTRACT(year from sent_date) = 2022
group by sender_id
order by message_count DESC
limit 2

