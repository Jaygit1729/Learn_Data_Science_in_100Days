/* 1. Write a SQL statement to insert a record with your own value into the table countries against each columns.*/

CREATE TABLE IF NOT EXISTS countries_insert (country_id VARCHAR(2) PRIMARY KEY, country_name VARCHAR(40) NOT NULL, region_id DECIMAL(10,2) NOT NULL);
INSERT INTO countries_insert() VALUES('C1','India',1001);
SELECT * FROM countries_insert;

/* 2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.*/
DROP TABLE countries_insert;
CREATE TABLE IF NOT EXISTS countries_insert (country_id VARCHAR(2) PRIMARY KEY, country_name VARCHAR(40) DEFAULT NULL,
 region_id DECIMAL(10,2) DEFAULT NULL);
INSERT INTO countries_insert(country_id,country_name) VALUES('C2','USA');

/* 3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.*/

CREATE TABLE IF NOT EXISTS country_new LIKE countries_insert ;

CREATE TABLE IF NOT EXISTS county_new
AS select * from countries_insert;

/*4. Write a SQL statement insert rows from country_new table to countries table. */

INSERT INTO countries SELECT * FROM country_new;

/*5.Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column */

CREATE TABLE IF NOT EXISTS job (job_id INT PRIMARY KEY, job_title VARCHAR(20) DEFAULT " ", 
min_salary INT DEFAULT 8000, max_salary INT DEFAULT  NULL);
DESC job;

/* 6.Write a SQL statement to insert rows in the job_history table in which one column job_id is containing those values which are 
exists in job_id column of jobs table. */
CREATE TABLE IF NOT EXISTS job_insert ( 
JOB_ID INT  PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT 20000);

INSERT INTO job_insert(JOB_ID,JOB_TITLE) VALUES(1001,'OFFICER');
INSERT INTO job_insert(JOB_ID,JOB_TITLE) VALUES(1002,'CLERK');

DROP Table job_history;

CREATE TABLE job_history ( 
EMPLOYEE_ID INT PRIMARY KEY, 
JOB_ID INT NOT NULL, 
DEPARTMENT_ID INT DEFAULT NULL, 
FOREIGN KEY (job_id) REFERENCES job_insert(job_id));

INSERT INTO job_history() VALUES (501,1001,60);