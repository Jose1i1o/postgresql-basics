## 📚 PostgreSQL Mini-Pill Exercises

## 📝 Description

This repository contains a series of exercises to practice PostgreSQL queries. The exercises are based on two tables (`clients` and `cars`) related to each other, where each client can have one or multiple cars.

The necessary table structures and data are provided in a backup file called `postgresql-basics-pill.sql`, which you can restore in your PostgreSQL database. This file includes the `clients` and `cars` tables, allowing you to perform the exercises and practice the fundamental concepts of PostgreSQL querying.

The exercises range from a very low to a low level of complexity, covering various aspects such as retrieving data, filtering records, using logical operators, and more. By working through these exercises, you can improve your understanding and proficiency in writing basic PostgreSQL queries.

To get started, restore the `postgresql-basics-pill.sql` file into your PostgreSQL database, and then proceed to solve the exercises by writing SQL queries based on the given instructions. Each exercise is accompanied by a solution and a hint to guide you.

Enjoy practicing and mastering your PostgreSQL skills with these exercises!

### 🎯 Objective

The objective of these exercises is to practice basic PostgreSQL queries, ranging from a very low to a low level of complexity. The exercises do not involve subqueries.

### 💪 Exercises

1. Retrieve all records from the `clients` table.

   - **Hint:** Use the `SELECT` statement.
   - **Result Table:**
   
     | id | first_name | last_name | email                |
     |----|------------|-----------|----------------------|
     | 1  | John       | Doe       | johndoe@example.com  |
     | 2  | Jane       | Smith     | janesmith@example.com|
     | 3  | Mike       | Johnson   | mikejohnson@example.com|
   
2. Retrieve all records from the `cars` table.

   - **Hint:** Use the `SELECT` statement.
   - **Result Table:**
   
     | id | client_id | make | model |
     |----|-----------|------|-------|
     | 1  | 1         | Ford | Mustang |
     | 2  | 2         | Toyota | Camry |
     | 3  | 2         | Honda | Civic |
   
3. Retrieve the first name and last name of all clients.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | first_name | last_name |
     |------------|-----------|
     | John       | Doe       |
     | Jane       | Smith     |
     | Mike       | Johnson   |
   
4. Retrieve the make and model of all cars.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | make   | model  |
     |--------|--------|
     | Ford   | Mustang |
     | Toyota | Camry  |
     | Honda  | Civic  |
   
5. Retrieve the email addresses of all clients.

   - **Hint:** Specify the column name in the `SELECT` statement.
   - **Result Table:**
   
     | email                |
     |----------------------|
     | johndoe@example.com  |
     | janesmith@example.com|
     | mikejohnson@example.com|
   
6. Retrieve the first name, last name, and email of all clients.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | first_name | last_name | email                |
     |------------|-----------|----------------------|
     | John       | Doe       | johndoe@example.com  |
     | Jane       | Smith     | janesmith@example.com|
     | Mike       | Johnson   | mikejohnson@example.com|
   
7. Retrieve the id and make of all cars.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | id | make   |
     |----|--------|
     | 1  | Ford   |
     | 2  | Toyota |
     | 3  | Honda  |
   
8. Retrieve the id, first name, and last name of all clients.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | id | first_name | last_name |
     |----|------------|-----------|
     | 1  | John       | Doe       |
     | 2  | Jane       | Smith     |
     | 3  | Mike       | Johnson   |
   
9. Retrieve the id, client_id, and make of all cars.

   - **Hint:** Specify the column names in the `SELECT` statement.
   - **Result Table:**
   
     | id | client_id | make   |
     |----|-----------|--------|
     | 1  | 1         | Ford   |
     | 2  | 2         | Toyota |
     | 3  | 2         | Honda  |
   
10. Retrieve the id, first name, last name, and email of all clients.

    - **Hint:** Specify the column names in the `SELECT` statement.
    - **Result Table:**
    
      | id | first_name | last_name | email                |
      |----|------------|-----------|----------------------|
      | 1  | John       | Doe       | johndoe@example.com  |
      | 2  | Jane       | Smith     | janesmith@example.com|
      | 3  | Mike       | Johnson   | mikejohnson@example.com|
      
11. Retrieve the id, client_id, make, and model of all cars.

    - **Hint:** Specify the column names in the `SELECT` statement.
    - **Result Table:**
    
      | id | client_id | make   | model  |
      |----|-----------|--------|--------|
      | 1  | 1         | Ford   | Mustang |
      | 2  | 2         | Toyota | Camry  |
      | 3  | 2         | Honda  | Civic  |
      
12. Retrieve only the distinct makes from the `cars` table.

    - **Hint:** Use the `DISTINCT` keyword with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | make   |
      |--------|
      | Ford   |
      | Toyota |
      | Honda  |
      
13. Retrieve the number of clients in the `clients` table.

    - **Hint:** Use the `COUNT(*)` function in the `SELECT` statement.
    - **Result Table:**
    
      | count |
      |-------|
      | 3     |
      
14. Retrieve the number of cars in the `cars` table.

    - **Hint:** Use the `COUNT(*)` function in the `SELECT` statement.
    - **Result Table:**
    
      | count |
      |-------|
      | 3     |
      
15. Retrieve the average client_id in the `cars` table.

    - **Hint:** Use the `AVG()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | avg  |
      |------|
      | 1.67 |
      
16. Retrieve the maximum id from the `clients` table.

    - **Hint:** Use the `MAX()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | max |
      |-----|
      | 3   |
      
17. Retrieve the minimum id from the `clients` table.

    - **Hint:** Use the `MIN()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | min |
      |-----|
      | 1   |
      
18. Retrieve the sum of client_ids in the `cars` table.

    - **Hint:** Use the `SUM()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | sum |
      |-----|
      | 5   |
      
19. Retrieve the average id from the `clients` table.

    - **Hint:** Use the `AVG()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | avg |
      |-----|
      | 2   |
      
20. Retrieve the maximum client_id from the `cars` table.

    - **Hint:** Use the `MAX()` function with the column name in the `SELECT` statement.
    - **Result Table:**
    
      | max |
      |-----|
      | 2   |


21. Retrieve the first name, last name, and email of clients who own a Honda CR-V.
  
   - **Hint:** Use the `JOIN` keyword to combine the `clients` and `cars` tables based on the client_id column. Then, add conditions using the `WHERE` clause to filter for Honda CR-V.
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | Mike       | Johnson   | mikejohnson@example.com |

22. Retrieve the first name, last name, and email of clients who own a Ford or Toyota.

   - **Hint:** Use the `JOIN` keyword to combine the `clients` and `cars` tables based on the client_id column. Then, add a condition using the `WHERE` clause to filter for Ford or Toyota cars using the `IN` operator.
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |
     | Jane       | Smith     | janesmith@example.com |

23. Retrieve the first name, last name, and email of clients who do not own a car.

   - **Hint:** Use the `LEFT JOIN` keyword to combine the `clients` and `cars` tables based on the client_id column. Then, add a condition using the `WHERE` clause to filter for clients who do not have corresponding car records (null values in the car table).
   - **Result Table:**
   
     | first_name | last_name | email                |
     |------------|-----------|----------------------|
     | Mike       | Johnson   | mikejohnson@example.com |

24. Retrieve the first name, last name, and email of clients who own more than one car.

   - **Hint:** Use the `JOIN` keyword to combine the `clients` and `cars` tables based on the client_id column. Then, use the `GROUP BY` clause with the client's id. Finally, use the `HAVING` clause to filter for clients who have a count greater than 1 (indicating they own more than one car).
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |

25. Retrieve the first name, last name, and email of clients who own a car with the word "Escalade" in the model.

   - **Hint:** Use the `JOIN` keyword to combine the `clients` and `cars` tables based on the client_id column. Then, use the `WHERE` clause with the `LIKE` operator to filter for cars with the word "Mustang" in the model.
   - **Result Table:**
   
     | first_name | last_name | email               |model      |
     |------------|-----------|---------------------|-----------|
     | John       | Doe       | johndoe@example.com |Escalade   |
     

26. Retrieve the first name, last name, and email of clients whose email address contains the domain "oakley.com".

   - **Hint:** Use the `LIKE` operator with the `%` wildcard to match any characters before "oakley.com" in the email column.
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |
     | Mike       | Johnson   | mikejohnson@example.com |
     
27. Retrieve the first name, last name, and email of clients whose first name starts with the letter "J".

   - **Hint:** Use the `LIKE` operator with the 'J%' pattern to match any first name starting with the letter "J".
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |
     
28. Retrieve the first name, last name, and email of clients whose last name ends with the letter "n".

   - **Hint:** Use the `LIKE` operator with the '%n' pattern to match any last name ending with the letter "n".
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Mike       | Johnson   | mikejohnson@example.com |
     
29. Retrieve the first name, last name, and email of clients whose first name is either "Sara" or "Cull".

   - **Hint:** Use the `IN` operator with the list of names to match clients with either "Sara" or "Cull" as their first name.
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |
     
30. Retrieve the first name, last name, and email of clients whose first name is not "Dev".

   - **Hint:** Use the `!=` operator to exclude clients with the first name "Dev".
   - **Result Table:**
   
     | first_name | last_name | email               |
     |------------|-----------|---------------------|
     | John       | Doe       | johndoe@example.com |
     | Jane       | Smith     | janesmith@example.com |
     
These exercises cover a range of basic to intermediate SQL queries in PostgreSQL. Working through these exercises will enhance your understanding of retrieving, filtering, aggregating, and ordering data using PostgreSQL.
