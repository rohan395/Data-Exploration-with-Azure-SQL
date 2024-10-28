select * from dbo.customers;

select * from accounts; where customer_id='5';

select c.first_name,c.last_name,a.balance from accounts a 
join customers c
ON a.customer_id=c.customer_id;

select * from loans;

SELECT Distinct c.first_name,c.last_name FROM transactions t
join accounts a 
on t.account_id=a.account_id
join customers c
ON a.customer_id=c.customer_id
WHERE YEAR(transaction_date) = 2024 AND MONTH(transaction_date) = 3;

select customer_id, sum(balance) 
from accounts
group by customer_id;

select loan_term, avg(loan_amount) 
from loans
group by loan_term;

select sum(loan_amount), sum(interest_rate * loan_amount)-sum(loan_amount) as total_interest
from loans;

select top 1 transaction_type,count(transaction_type) as c from transactions
group by transaction_type 
order by c desc;

select transaction_type,account_id,count(transaction_type) total_transactions from transactions
group by transaction_type,account_id;

Create View active_loans AS
select l.loan_id,customer_id,loan_amount,interest_rate,loan_term from loans l
join loan_payments p 
on l.loan_id=p.loan_id
where loan_amount!=0 and payment_amount>1000;

select * from active_loans;

CREATE INDEX date ON transactions (transaction_date);
