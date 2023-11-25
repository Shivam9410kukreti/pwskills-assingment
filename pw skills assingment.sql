use mavenmovies;
-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences***
 -- In actor table -- actor_id is primary key --
 -- In actor_award table-- actor_award_id is primary key --
 -- In address table-- address_id is primary key --
 -- In address table-- city_id is foreign key --
 -- In advisor table-- advisor_id is primary key --
 -- In category table-- category_id is primary key --
 -- In city table-- city_id is primary key --
 -- In city table-- country_id is foreign key --
 -- In country table-- country_id is primary key--
 -- In customer table -- customer_id is primary key --
 -- In customer table -- address_id and store_id is foreign key -- 
 -- In film table -- film_id is primary key --
 -- In film table -- language_id and original_language_id is foregin key--
 -- In film_actor table-- actor_id and film_id is primary key --
 -- In film_actor table-- actor_id and film_id is foreign key --
 -- In film_category table-- film_id and category_id is primary key --
 -- In film_category table-- film_id and category_id is foreign key --
 -- In film_text table-- film_id is primary key -- 
 -- In inventory table-- inventory_id is primary key --
 -- In inventory table-- film_id and store_id is foreign key --
 -- In investor table-- investor_id is primary key --
 -- In language table-- language_id is primary key --
 -- In payment table-- payment_id is primary key --
 -- In payment table -- cutomer_id , rental_id and staff_id -- 
 -- In rental table-- rental_id is primary key --
 -- In rental table-- customer_id , inventory_id and staff_id --
 -- In staff table-- staff_id is primary key -- 
 -- In staff table -- address_id and sore_id is foreign key -- 
 -- In store table -- store_id primary key --
 -- In store table -- address_id and manager_staff_id is foreign key -- 

 -- Primary key:- * A primary key is a column or a set of columns in a table that uniquely identifies each row in that table. It must have a unique value for each record, and it cannot contain NULL values.
                  -- It ensures that each record in the table can be uniquely identified. It is used as a reference for establishing relationships with other tables.

 -- foreign key:- * A foreign key is a column or a set of columns in a table that refers to the primary key in another table. It establishes a link between the data in two tables.
                  -- It enforces referential integrity by ensuring that the values in the foreign key column(s) correspond to values in the primary key of another table.

-- List all details of actors***
  SELECT * FROM actor;
  
-- List all details of actors***
  SELECT * FROM customer;

-- List different countries***
   SELECT * FROM country;

-- Display all active customers***
  SELECT * FROM customer WHERE active;

-- List of all rental IDs for customer with ID 1***
  select rental_id from rental where customer_id =1;

-- Display all the films whose rental duration is greater than 5***
  select title, rental_rate from film where rental_rate < 5;

-- List the total number of films whose replacement cost is greater than $15 and less than $20***
   SELECT COUNT(*)FROM film WHERE replacement_cost > 15 AND replacement_cost < 20;

-- Find the number of films whose rental rate is less than $1***
   SELECT COUNT(*) FROM film WHERE rental_rate < 1;

-- Display the count of unique first names of actors***
   SELECT COUNT(DISTINCT first_name) FROM actor;

-- Display the first 10 records from the customer table***
  SELECT * FROM customer LIMIT 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’***
  SELECT * FROM customer WHERE first_name LIKE 'B%' LIMIT 3;

-- Display the names of the first 5 movies which are rated as ‘G’***
   SELECT title From film Where rating = 'G' LIMIT 5;

-- Find all customers whose first name starts with "a"***
   SELECT * FROM customer WHERE first_name LIKE 'A%';

-- Find all customers whose first name ends with "a"***
   SELECT * From customer Where first_name LIKE '%a';

-- Display the list of first 4 cities which start and end with ‘a’***
   Select * From customer Where first_name LIKE 'A%';
   
-- Find all customers whose first name have "NI" in any position***
   Select *From customer Where first_name Like '%NI%';

-- Find all customers whose first name have "r" in the second position***
   Select * From customer Where substring(first_name, 2, 1) = 'r';

-- Find all customers whose first name starts with "a" and are at least 5 characters in length***
   Select * From customer Where first_name LIKE 'a%' AND LENGTH(first_name) >= 5;

-- Find all customers whose first name starts with "a" and ends with "o"***
   Select * From customer Where first_name LIKE 'a%o';

-- Get the films with pg and pg-13 rating using IN operator***
   Select * From film Where rating In ('PG', 'PG-13');

-- Get the films with length between 50 to 100 using between operator***
   Select * From film Where length Between 50 And 100;

-- Get the top 50 actors using limit operator***
   Select * From actor Limit 50;

-- Get the distinct film ids from inventory table***
   Select distinct film_id from inventory;