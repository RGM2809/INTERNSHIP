use rgm;
create table testdate(
new_id int,
new_cat varchar(255));

insert into testdate(new_id,new_cat)
values (100,"Agni"),
(200,"Agni"),
(500,"Dharti"),
(700,"Dharti"),
(200,"Vayu"),
(300,"Vayu"),
(500,"Vayu");

SELECT new_id,new_cat,
SUM(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS "total",
AVG(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS "Average",
COUNT(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS "count",
MIN(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS "min",
MAX(new_id) OVER (PARTITION BY new_cat ORDER BY new_id) AS "max"
FROM testdate;

SELECT 
    new_id, 
    new_cat,  -- Assuming you meant new_cat based on the previous table structure
    SUM(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Total",
    AVG(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Average",
    COUNT(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Count",
    MIN(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Min",
    MAX(new_id) OVER (ORDER BY new_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Max"
FROM testdate;
