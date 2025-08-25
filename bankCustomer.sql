DROP TABLE bank_customers;

CREATE TABLE bank_customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    account_type VARCHAR2(30),
    balance NUMBER
);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (1, 'Sania Khan', 'Savings', 500000);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (2, 'Maleeha', 'Current', 150000);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (3, 'Eman', 'Savings', 100000);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (4, 'Zainab Altaf', 'Fixed Deposit', 700000);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (5, 'Mariyam', 'Savings', 300000);

INSERT INTO bank_customers (customer_id, name, account_type, balance)
VALUES (6, 'Ayesha Ghafoor', 'Current', 250000);

COMMIT;

SELECT * FROM bank_customers;

SELECT account_type FROM bank_customers;

SELECT * FROM bank_customers ORDER BY balance DESC;

UPDATE bank_customers
SET balance = 600000
WHERE name = 'Sania Khan';

DELETE FROM bank_customers
WHERE customer_id = 3;

COMMIT;

ALTER TABLE bank_customers RENAME TO bank_users;

FLASHBACK TABLE bank_users TO BEFORE DROP;

SELECT * FROM bank_users;

DROP TABLE bank_users;

COMMIT;