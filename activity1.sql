#1 Create new table:

CREATE TABLE accounts(id integer, type VARCHAR(10), status integer); 

#2 Insert 6 records in your students table.

INSERT INTO accounts(id, firstName, middleName, lastName, age, location) 
VALUES
    (1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
    (2, 'John', 'Blank', 'Young', 20, 'Manila'),
    (3, 'Victor', 'Blank', 'Rivera', 21, 'Manila'),
    (4, 'Adrian', 'Blank', 'Co', 19, 'Laguna'),
    (5, 'Pau', 'Blank', 'Riosa', 22, 'Marikina'),
    (6, 'Piolo', 'Blank', 'Pascual', 25, 'Manila');

#3 Update your first record: 
#first_name : Ana middle_name : Cui last_name : Cajocson age : 25 location : Bulacan

UPDATE accounts 
SET firstName = 'Jerick', middleName = 'Balais', lastName = 'Camacho'
WHERE id = 6

#4 Delete your last record in your students table 
DELETE FROM accounts WHERE id = 1; 