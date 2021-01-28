/*********************************************** ACTIVITY 1 ********************************/
/*#1 Create new table:*/
CREATE TABLE accounts(id integer, firstName VARCHAR(10), middleName VARCHAR(10), lastName VARCHAR(10), age integer, location VARCHAR(10));

/*#2 Insert 6 records in your students table.*/ 
INSERT INTO accounts(id, firstName, middleName, lastName, age, location) 
VALUES
    (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
    (2, 'John', 'Blank', 'Young', 20, 'Manila'),
    (3, 'Victor', 'Blank', 'Rivera', 21, 'Manila'),
    (4, 'Adrian', 'Blank', 'Co', 19, 'Laguna'),
    (5, 'Pau', 'Blank', 'Riosa', 22, 'Marikina'),
    (6, 'Piolo', 'Blank', 'Pascual', 25, 'Manila');

/*#3 Update your first record:*/ 
UPDATE accounts 
SET firstName ='Jerick', middleName ='Balais', lastName ='Camacho'
WHERE id = 6

/*#4 Delete your last record in your accounts table*/ 
DELETE FROM accounts WHERE id = 1; 

/*********************************************** ACTIVITY 2 Using AGGREGATE FUNCTIONS ********************************/
/*1)Use your previous table accounts*/ 
SELECT * 
FROM accounts;

/*2)Display the count of all accounts*/
SELECT COUNT (id)
FROM accounts;

/*3)Select all accounts with location is Manila */
SELECT *
FROM accounts
WHERE location = "Manila";

/*4)Display the average age of all accounts */
SELECT AVG (age)
FROM accounts;

/*5)Display all accounts by age descending order */
SELECT *
FROM accounts
ORDER BY age DESC;