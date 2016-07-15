--1. Get all users from chicago
SELECT * FROM syntax_practice where city='chicago';
--2. Get all users with usernames contain the letter a
SELECT * FROM syntax_practice where username LIKE '%a%';
--3.The bank is giving a new customer bonus! Update all records with an --account balance of 0.00 and a transactions_attempted of 0. Give them a --new account balance of 10.00.
SELECT * FROM syntax_practice WHERE account_balance = 0 and transactions_attempted = 0;
--4. Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;
--5.Get the username and account balance of the 3 users with the highest --balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance  DESC LIMIT 3;
--6.Get the username and account balance of the 3 users with the lowest --balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance LIMIT 3;
--7.Get all users with account balances that are more than $100.
SELCET * FROM syntax_practice WHERE account_balance > 100;
--8.Add a new record.
INSERT INTO syntax_practice(username, city, transactions_completed, transactions_attempted, account_balance, user_id)VALUES('Billy', 'Sioux Falls', 7, 8, 77.77, 9);
--9.The bank is losing money in Miami and Phoenix and needs to unload low --transaction customers: Delete users that reside in miami OR phoenix and --have completed fewer than 5 transactions.
DELETE FROM syntax_practice WHERE (city='miami' or city='chicago') and transactions_completed < 5;