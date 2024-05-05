-- Solution to problem 4 using aggregate and groupby
SELECT player_id, MIN(event_date) as first_login
FROM Activity GROUP BY player_id

-- Solution to problem 4 using aggregate and windows function
SELECT DISTINCT player_id, MIN(event_date) OVER (PARTITION BY player_id) AS first_login
FROM Activity 
