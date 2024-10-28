INSERT INTO customers (customer_id, first_name, last_name, address, city, state, zip) VALUES
(1, 'John', 'Doe', '123 Elm St', 'Toronto', 'ON', 'M4B1B3'),
(2, 'Jane', 'Smith', '456 Maple Ave', 'Ottawa', 'ON', 'K1A0B1'),
(3, 'Michael', 'Johnson', '789 Oak Dr', 'Montreal', 'QC', 'H1A1A1'),
(4, 'Emily', 'Davis', '101 Pine Rd', 'Calgary', 'AB', 'T2A0A1');

INSERT INTO accounts (account_id, customer_id, account_type, balance) VALUES
(1, 1, 'Savings', 5000.00),
(2, 2, 'Checking', 3000.50),
(3, 3, 'Savings', 7000.25),
(4, 4, 'Checking', 1000.75);

INSERT INTO transactions (transaction_id, account_id, transaction_date, transaction_amount, transaction_type) VALUES
(1, 1, '2024-10-01', 200.00, 'Deposit'),
(2, 1, '2024-10-02', 50.00, 'Withdrawal'),
(3, 2, '2024-10-03', 500.00, 'Deposit'),
(4, 3, '2024-10-04', 1000.00, 'Deposit'),
(5, 4, '2024-10-05', 100.00, 'Withdrawal');

INSERT INTO loans (loan_id, customer_id, loan_amount, interest_rate, loan_term) VALUES
(1, 1, 15000.00, 5.5, 60),
(2, 2, 10000.00, 4.5, 48),
(3, 3, 20000.00, 6.0, 72),
(4, 4, 5000.00, 3.75, 36);

INSERT INTO loan_payments (payment_id, loan_id, payment_date, payment_amount) VALUES
(1, 1, '2024-10-10', 300.00),
(2, 1, '2024-11-10', 300.00),
(3, 2, '2024-10-15', 250.00),
(4, 3, '2024-10-20', 400.00),
(5, 4, '2024-10-25', 150.00);



