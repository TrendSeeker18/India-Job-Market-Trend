create database job;
use job;
SELECT COUNT(*) AS total_jobs FROM india_job_market_dataset;

SELECT `Company Name`, COUNT(*) AS job_count  
FROM india_job_market_dataset 
GROUP BY `Company Name`  
ORDER BY job_count DESC  
LIMIT 10;
/*Top 5 Job Locations with Most Listing*/
SELECT `Job Location`, COUNT(*) AS job_count 
FROM india_job_market_dataset
GROUP BY `Job Location` 
ORDER BY job_count DESC 
LIMIT 5;

SELECT `Job Title`, `Company Name`, `Salary Range`
FROM india_job_market_dataset
ORDER BY `Salary Range` DESC
LIMIT 10;

SELECT `Job Type`, COUNT(*) AS job_count 
FROM india_job_market_dataset 
GROUP BY `Job Type` 
ORDER BY job_count DESC;

SELECT COUNT(*) AS ml_jobs 
FROM india_job_market_dataset
WHERE `Skills Required` LIKE '%Machine Learning%';

SELECT `Experience Required`, AVG(`Salary Range`) AS avg_salary 
FROM india_job_market_dataset 
GROUP BY `Experience Required` 
ORDER BY avg_salary DESC;

SELECT `Skills Required`, COUNT(*) AS skill_count 
FROM india_job_market_dataset 
GROUP BY `Skills Required` 
ORDER BY skill_count DESC 
LIMIT 10;

SELECT `Company Size`, COUNT(*) AS job_count 
FROM india_job_market_dataset 
GROUP BY `Company Size` 
ORDER BY job_count DESC;

SELECT `Company Name`, COUNT(*) AS remote_jobs 
FROM india_job_market_dataset 
WHERE `Remote/Onsite` = 'Remote'
GROUP BY `Company Name` 
ORDER BY remote_jobs DESC 
LIMIT 10;

select* from india_job_market_dataset;

SELECT `Job Title`, `Company Name`, `Education Requirement`
FROM india_job_market_dataset
WHERE `Education Requirement` LIKE '%B.Tech%';
