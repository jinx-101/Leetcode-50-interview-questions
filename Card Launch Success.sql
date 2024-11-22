-- https://datalemur.com/questions/card-launch-success
WITH first_month_card AS
(
SELECT * , 
ROW_NUMBER() OVER(PARTITION BY card_name order by issue_year,issue_month ) as row_num
from monthly_cards_issued
)

select card_name , issued_amount from first_month_card
where row_num = 1
ORDER BY issued_amount desc


-- better & unique approach 

SELECT DISTINCT card_name, 
first_value(issued_amount) OVER(PARTITION BY card_name ORDER BY make_date(issue_year,issue_month,'01')) as amount
FROM monthly_cards_issued
ORDER BY amount DESC;
