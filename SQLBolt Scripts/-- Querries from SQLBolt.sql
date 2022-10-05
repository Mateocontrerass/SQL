-- Querries from SQLBolt

--Lesson 1.

--TABLE: MOVIES

-- List all directors of Pixar movies (alphabetically), without duplicates

SELECT DISTINCT director FROM movies order by director asc

-- List the last four Pixar movies released (ordered from most recent to least)

SELECT  title ,year FROM movies  
ORDER BY year DESC 
LIMIT 4

--List the first five Pixar movies sorted alphabeticall

SELECT  title ,year 
FROM movies  
order by title asc 
limit 5

--List the next five Pixar movies sorted alphabetically

SELECT  title ,year 
FROM movies  
order by title asc 
limit 5 
offset 5


--TABLE: North_american_cities

--List all the cities west of Chicago, ordered from west to east 

SELECT * 
FROM north_american_cities 
WHERE Longitude<(select longitude from north_american_cities where city like "%chi%") 
ORDER BY longitude asc

--List the two largest cities in Mexico (by population)
SELECT * FROM North_american_cities WHERE country like "%mex%" 
ORDER BY population desc 
LIMIT 2

--List the third and fourth largest cities (by population) in the United States and their population 

SELECT * FROM North_american_cities WHERE country like "%uni%" 
ORDER BY population desc 
LIMIT 2
OFFSET 2


-- Table : Movies and Boxoffice 

--Find the domestic and international sales for each movie 

SELECT * FROM movies
INNER JOIN boxoffice ON MOVIES.Id=BOXOFFICE.movie_Id

--Show the sales numbers for each movie that did better internationally rather than domestically

SELECT * FROM movies
INNER JOIN boxoffice ON MOVIES.Id=BOXOFFICE.movie_Id
where international_sales>domestic_sales


--Find the total number of years employed by all Engineers 
SELECT sum(years_employed) 
FROM employees 
GROUP BY role 
HAVING role="Engineer"

