
USE College;

-- Create bank account table
CREATE TABLE IF NOT EXISTS Bank_Account (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);

-- Reset sample data
DELETE FROM Bank_Account;

INSERT INTO Bank_Account VALUES
(101, 'Rahul', 10000),
(102, 'Aman', 8000);

-- Display initial balance
SELECT * FROM Bank_Account;

-- Start transaction
START TRANSACTION;

-- Transfer 2000 from Rahul to Aman
UPDATE Bank_Account
SET balance = balance - 2000
WHERE account_id = 101;

UPDATE Bank_Account
SET balance = balance + 2000
WHERE account_id = 102;

-- Save changes permanently
COMMIT;

-- Display final balance
SELECT * FROM Bank_Account;




--Expected Output
--1. Initial Balance
--account_id	account_name	balance
--101	Rahul	10000.00
--102	Aman	8000.00

2. Final Balance After Transaction
account_id	account_name	balance
101	Rahul	8000.00
102	Aman	10000.00
