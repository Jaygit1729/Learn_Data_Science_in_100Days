/* 1. Write a SQL statement to rename the table countries to country_new.*/

ALTER TABLE countries RENAME country_new;

/* 2. Write a SQL statement to add a column region_id to the table locations.*/

ALTER TABLE locations ADD COLUMN region_id DECIMAL(10,0);

/*3. Write a SQL statement to add a columns ID as the first column of the table locations.*/

ALTER TABLE locations ADD COLUMN region_id1 DECIMAL(10,0) FIRST;


/*4. Write a SQL statement to add a column region_id after state_province to the table locations.*/

ALTER TABLE locations ADD COLUMN region_id2 INT AFTER state_province;

/* 5. Write a SQL statement change the data type of the column country_id to integer in the table locations.*/

ALTER TABLE locations MODIFY cocountry_id INT; 

/* 6. Write a SQL statement to drop the column city from the table locations.*/

ALTER TABLE locations DROP COLUMN city;

/* 7. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.*/

ALTER TABLE locations RENAME COLUMN state_province to state;

/*8. Write a SQL statement to add a primary key for the columns location_id in the locations table.*/

ALTER TABLE locations Add PRIMARY KEY (location_id);

/* 9. Write a SQL statement to add a primary key for a combination of columns location_id and country_id.*/

ALTER TABLE locations ADD PRIMARY KEY (location_id,country_id);