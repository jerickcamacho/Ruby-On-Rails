
#/*********************************************** Use your table from previous lesson ********************************/

#/*********************************************** Create new table ********************************/

#Table name: classrooms Columns: id , student_id , section

CREATE TABLE classrooms (id integer, student_id integer, section VARCHAR(10));

#/*********************************************** Combine the two tables, students and classrooms , using inner join , left join , right join and full join . ********************************/

INSERT INTO classrooms (id, student_id, section) 
VALUES
    (1, 1, 'A'),
    (2, 2, 'A'),
    (3, 3, 'B'),
    (4, 4, 'C'),
    (5, 5, 'B'),
    (6, 6, 'A'),
    (7, 7, 'C'),
    (8, 8, 'B'),
    (9, 9, 'B'),
    (10, 10, 'C');

#inner join
SELECT *
FROM classrooms c
INNER JOIN students s
ON s.id = c.id

#left join
SELECT *
FROM classrooms c
LEFT JOIN students s
ON s.id = c.id

#right join
SELECT *
FROM classrooms c
RIGHT JOIN students s
ON s.id = c.id

#full join
SELECT *
FROM classrooms c
FULL JOIN students s
ON s.id = c.id