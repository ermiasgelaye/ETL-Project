# ETL-Project

## Unveil the Top Fastest Growing Private Companies in America for the last thirteen years (2007 - 2020) 
                          
![ETL_project](Image/Inc.5000.png)

### Introduction

This project is designed to conduct a presentation of business information or Business Intelligence by extracting, transforming, and loading the top fastest-growing private companies in America for the last thirteen years (2007-2020).

The purpose of this project was to build a database that demonstrates the changes in American top fastest-growing private companies through time. The database is built on by ingesting, combining, and restructuring data from three main sources into a conformed one Postgresql database. The three sources of our data are [Inc 5000](https://www.inc.com/inc5000/), [Financial times ranking 500 2020](https://www.ft.com/americas-fastest-growing-companies-2020), and [Growjo Company API](https://growjo.com/company_api) for scraping fastest-growing companies in 2020.

### Data Extraction 
In this project we extracted, transformed, and loaded thirteen years (2007-2020) American top fastest-growing private companies. 

Our main sources:

- [Inc 5000 from year 2007 till 2019 - Data sourced from Data World Inc](https://www.inc.com/)
  - [Data World Inc 5000, 2019](https://data.world/aurielle/inc-5000-2019/workspace/file?filename=inc5000-2019.csv)
  - [Data World Inc 5000, 2018](https://data.world/aurielle/inc-5000-2018/workspace/file?filename=inc5000-2018.csv)
  - [Data World Inc 5000 (2007-2017)](https://data.world/aurielle/inc-5000-10-years/workspace/file?filename=inc5000_all10years.csv)
 
- [Financial times ranking 500 2020 - Data sourced through web scraping](https://www.ft.com/americas-fastest-growing-companies-2020)
  - [FT ranking 500 2020](https://www.ft.com/americas-fastest-growing-companies-2020)
  
- [Growjo Company list - Data sourced through API request](https://growjo.com/company_api)
  - We make an API call on the Growjo website and generated the company's information based on domains. For this reason, we prepared a python file called [company_domain.py](company_domain.py) that lists American top fastest-growing private companies domain, and we requested information for each domain and stored information in a data frame. For example, you could retrieve a company’s name, location, employee, estimated revenue, and job openings from their domain name. 

### Data Enginering 

After extracting the data we conducted a data engineering, and Entity-Relationship Diagram (ERD) by using an open-source toolkit called [Quickdatabasediagrams](https://app.quickdatabasediagrams.com/). 
The model looks as follows: 
![ETL_project](Image/ERD_model.png)

### Data Transformation
* We used a Pandas functions in Jupyter Notebook to transform all CSV files, scraped data, and API request responses. 
* We reviewed the files and transforme into a dataframes.
* We used a python transformation functions for data cleaning, joining, filtering, and aggregating.
* Several columns removed
* Duplicate rows was removed, and successfully managed. 
* We conducted Some aggregation to find totals for comparison in the datasets.

### Load
* For our final production, we used a relational database called Postgresql, in a total of three tables, twelve columns created, and the data loaded successfully. 

- Final tables/collections are stored in the production database

### Team members
- Adedamola Atekoja (‘Damola)
- Amanda Qianyue Ma
- Amos Johnson
- Ermias Gaga
- Maria Lorena
