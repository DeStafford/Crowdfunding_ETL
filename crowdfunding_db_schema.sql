-- Creating Category Table
CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(30)
);


--Creating Subcategory Table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30)
);


--Creating Contacts Table 
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100)
);

--Creating campaign Table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50),
	description VARCHAR(200),
	goal float,
	pleged float,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(50),
	currency VARCHAR(10),
	launch_date VARCHAR(50),
	end_date VARCHAR(50),
	category_id VARCHAR(10),
	subcategory_id VARCHAR(10),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Select queries to view the data 
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign; 