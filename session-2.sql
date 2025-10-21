-- Learn SQL


-- SELECT > DISTINCT > TOP > FROM > WHERE > GROUP BY > HAVING > ORDER BY

GROUP BY
    --All columns in the select must be either aggregated or included in GROUP BY

    select 
	    country,
	    first_name,
	    SUM(score) AS 'Total_Score'
    from customers 
    group by country, first_name

    -- Find the total score and total customer by country
    select 
	    country,
	    SUM(score) AS 'Total_Score',
	    COUNT(id) AS total_customers
    from customers 
    group by country

HAVING 
    -- USED TO FILTER aggregated DATA OR FILTER DATA AFTER AGGREGATION, CAN BE USED ONLY WITH GROUP BY
    SELECT
	    country,
	    SUM(score) as sum_score
    from customers
    group by country
    having sum(score) > 800

    /* Find the average score for each country
       considering only customers with a score not equal to 0
       and return only those countries with an average score greater than 430 */

    SELECT
        country,
        AVG(score) as avg_score
    from customers
    where score !=0
    group by country
    having AVG(score) > 430

DISTINCT
    -- used to remove duplicates
    -- Bad Habit with DISTINCT
    -- Don't use DISTINCT unless it's necessary; it can slow down your query
    select distinct country
    from customers

TOP 
    -- used to limit the data
    -- restrict the number of rows returned.

    -- retrieve top 3 customers with the highest score
        select top 3 * from customers order by score desc;

      ======================================================================
      ===                       CODING ORDER                             ===
      ======================================================================

select distinct top 2
    col1,
    sum(col2)   
from customers
where col1 = 10
group by col1
having sum(col2) >30
order by col1 ASC

--- OCR Start ---
=============================================================================
                        --  Execute Order
=============================================================================
                            1 FROM
                            2 WHERE
                            3 GROUP BY
                            4 HAVING
                            NEXT SI
                            5 SELECT
                            DISTINCT
                            6 ORDER BY
                            7 TOP
--- OCR End ---
=============================================================================
