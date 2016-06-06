/* Script updates the ages of two people and displays result */
UPDATE Person SET age = 27 WHERE last_name = 'Snow';
UPDATE Person SET age = 18 WHERE first_name = 'Walter Junior';
DELETE FROM Person WHERE first_name = 'Walter';
SELECT * FROM Person ORDER BY first_name ASC;
