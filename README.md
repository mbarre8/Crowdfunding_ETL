# Project 2: Crowdfunding_ETL

<p align="center">
  <img width="1200" height="600" src="https://github.com/mbarre8/Crowdfunding_ETL/blob/main/ETL-Process-for-linkedin3.png">
</p>

## Overview and Purpose of the Project 
The project aims to build an ETL (Extract, Transform, and Load) pipleline using Python dictionary methods and regular expressions to extract and transform data obtained from a crowdfunding database comprising 1,000 campaigns launched at different months within a given year concerning funding goals and the number of backers or donors.

## Methods 
Four DataFrames were extracted from the crowdfunding.xlsx data. 

* **Category and Subcategory DataFrames**: created by pulling a "category_id" and "category" columns that contain entries going sequentially from "cat1" to "cat*n*", where *n* is the number of unique caregories, and corresponding titles respectively. Category DataFrame was then saved into a GitHub repository. Subcategory DataFrame was also created by the pulling "subcategory_id" and "subcategory" columns and stored into a GitHub repository. 

* **Campaign DataFrame**: created by pulling "cf_id", "contact_id", "company_name", "blurb" - renamed to "description", "goal" - converted to the float data type,  "pledged" - converted to the float data type, "outcome" , "backers_count", "country" , "currency", "launched_at" column - renamed to "launch_date" and with the UTC times converted to the datetime format, "deadline" column - renamed to "end_date" and with the UTC times converted to the datetime format, "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame, and "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame. Campaign DataFrame was then saved into GitHub. 

* **Contacts DataFrame**: created using both Python dictionary methods and regular expressions. Contacts DataFrame was then saved into GitHub.

* **Crowdfunding Database**: created by sketching the four CSV files using QuickDBD and using the information from the ERD to create a table schema for each csv file. Database schema was then saved as a Postgres file into GitHub. A new Postgres database was created to arrange the tables in the correct order to handle foreign keys. A SELECT statement was applied to verify the data in each table. 

<p align="center">
  <img width="1200" height="600" src="ERD.png">
</p>

## Results 



## Outcomes 
