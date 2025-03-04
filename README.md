# Crowdfunding_ETL
ETL Project: Crowdfunding Data Pipeline
For this project, I built an ETL (Extract, Transform, Load) pipeline to process crowdfunding data using Python, Pandas, and PostgreSQL. The goal of the project was to extract data from an Excel file, transform it into a structured format, and load it into a PostgreSQL database. The project was broken down into several key steps, each focusing on data extraction, transformation, and loading, as well as creating the necessary schema for the database.

Project Breakdown:
Creating Category and Subcategory DataFrames:

Category DataFrame: I extracted data from the crowdfunding.xlsx file to create a DataFrame containing the following columns:

category_id: Sequential identifiers (e.g., "cat1", "cat2", ...) for each unique category.
category: The title of each unique category.
I exported this DataFrame to a CSV file named category.csv.

Subcategory DataFrame: I also extracted data to create a subcategory DataFrame with:

subcategory_id: Sequential identifiers (e.g., "subcat1", "subcat2", ...) for each unique subcategory.
subcategory: The title of each unique subcategory.
This DataFrame was exported to a CSV file named subcategory.csv.

Creating the Campaign DataFrame:

I extracted and transformed data from the crowdfunding.xlsx file to create a campaign DataFrame with the following columns:
cf_id: A unique identifier for each campaign.
contact_id: The corresponding contact ID for the campaign.
company_name: The name of the company running the campaign.
description: The campaign’s description (renamed from the "blurb" column).
goal: The financial goal of the campaign (converted to float).
pledged: The amount pledged by backers (converted to float).
outcome: The outcome of the campaign.
backers_count: The number of backers.
country: The country where the campaign originated.
currency: The currency used in the campaign.
launch_date: The launch date of the campaign (converted to datetime format).
end_date: The deadline for the campaign (converted to datetime format).
category_id: Foreign key linking to the Category DataFrame.
subcategory_id: Foreign key linking to the Subcategory DataFrame.
I exported this DataFrame to a CSV file named campaign.csv.
Creating the Contacts DataFrame:

I chose Option 1: Using Python Dictionary Methods to extract and transform the contacts data:
I imported the data from the contacts.xlsx file into a DataFrame.
I iterated through the rows and converted each row into a dictionary, extracting the necessary data.
I split the name column into first_name and last_name columns.
After cleaning the data, I exported the final DataFrame to a CSV file named contacts.csv.
Creating the Crowdfunding Database:

ERD (Entity-Relationship Diagram): I created an ERD to visualize the relationships between the four CSV tables.

Table Schema: Using the ERD, I defined the table schema for each CSV file, including:

Data types for each column.
Primary keys for each table.
Foreign keys and other constraints to ensure data integrity.
I saved the schema in a PostgreSQL SQL file named crowdfunding_db_schema.sql.

Creating and Populating the Database:

I created a new PostgreSQL database called crowdfunding_db.
Using the schema, I created the tables in the correct order, ensuring foreign keys were properly handled.
I verified the table creation by running SELECT queries on each table.
I imported the CSV data into their respective tables in the database.
I verified the integrity of the data by running SELECT queries to ensure the data was correctly imported.
At the end of the project, I successfully built an ETL pipeline that processes crowdfunding data and loads it into a structured PostgreSQL database. I also created an ERD to visualize the database structure and defined the table schema, ensuring proper relationships and data integrity across all tables.