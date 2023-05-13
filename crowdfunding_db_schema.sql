DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Contacts;

CREATE TABLE Category (
	category_id VARCHAR(10) NOT NULL,
	category VARCHAR(255) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(255) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
	contact_id INTEGER NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(100),
	PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(75),
	description TEXT,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(5),
	currency VARCHAR(5),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(10) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);