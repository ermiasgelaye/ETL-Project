-- Select all list from company table
SELECT * FROM Company;
-- Select all company from film table
SELECT * FROM Ranks;
-- Select all company from film table
SELECT * FROM Growth;

-- Total number of companies
SELECT COUNT(company_name) As "Total Companies"
FROM Company;

-- Top industries the companies sourced
SELECT industry, COUNT(company_name) As "Companies Count"
FROM Company
GROUP BY industry
ORDER BY "Companies Count" DESC
LIMIT 10;

-- Companies group by state
SELECT state, COUNT(company_name) As "Companies Count"
FROM Company
GROUP BY state
ORDER BY "Companies Count" DESC
LIMIT 10;

-- Companies group by city
SELECT city, COUNT(company_name) As "Companies Count"
FROM Company
GROUP BY city
ORDER BY "Companies Count" DESC
LIMIT 10;

-- Companies group by employee size 
SELECT company_name, number_of_employees
FROM Company
ORDER BY number_of_employees DESC
LIMIT 10;












