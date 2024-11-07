# Write your MySQL query statement below
select user_id,concat(upper(left(name,1)),substr(lower(name),2,char_length(name))) as name from users order by user_id;