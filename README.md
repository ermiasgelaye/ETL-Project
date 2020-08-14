# ETL-Project

## Unveil the Top Fastest-Growing Private Companies in America for the last twelve years (2007-2019) 
                          
![ETL_project](Image/Inc.5000.png)

### Introduction

This project is designed to conduct a presentation of business information or Business Intelligence by extracting, transforming, and loading the top fastest-growing private companies in America for the last thirteen years(2007-2020).

The purpose of this project is to build a database that demonstrates the changes in American top fastest-growing private companies through time. The database is built on by ingesting, combining, and restructuring data from three main sources in to into a conformed one Postgresql database. The three source of our data are [Inc 5000](https://www.inc.com/inc5000/), [Financial times ranking 500 2020](https://www.ft.com/americas-fastest-growing-companies-2020), and [Growjo Company API](https://growjo.com/company_api) for scraping fastest growing companies in 2020.

### Data Enginering 





The framework is based around dbt ("Data Build Tool"), open-source toolkit for templating and orchestrating SQL-based data transformations of RAW API-sourced data into structures suitable for analysis, and pre-built transformations and design patterns taken from Rittman Analytics' previous data warehousing consulting experience.




We used three data sources to extract the dat 



Inc. is an American business magazine founded in 1979 and based in New York City. It publishes eight print issues annually, as well as daily online articles and videos. Inc. is best known for its annual rankings of the fastest-growing privately held companies in the United States called the "Inc. 500" and "Inc. 5000."

### Finding Data/Data Source/Extract
In this project we are going to extract, transform and load twelve years (2007-2019) Inc 5000 fastest-growing private companies and scrape Financial Times top 5000 list of America's fastest-growing companies.

* INC 5000 America
  - [Data World Inc 5000,2019](https://data.world/aurielle/inc-5000-2019/workspace/file?filename=inc5000-2019.csv)
  - [Data World Inc 5000,2018](https://data.world/aurielle/inc-5000-2018/workspace/file?filename=inc5000-2018.csv)
  - [Data World Inc 5000 (2007-2017)](https://data.world/aurielle/inc-5000-10-years/workspace/file?filename=inc5000_all10years.csv)
 
* Web Scarping Financial Times ranking: the Americas’ fastest-growing companies
  - [FT ranking 500 2020](https://www.ft.com/americas-fastest-growing-companies-2020)
 
### Data Cleanup & Analysis

#### Transformation

- We will use Pandas functions in Jupyter Notebook to transform all CSV files.
- Review the files and transforme into dataframes.
- Type of transformations needed (cleaning, joining, filtering, aggregating: etc). Several columns will not be needed and will be removed. 
- Duplicate rows will be removed and need to be managed. 
- Some aggregation will also be done to find totals for comparison business in the dataset.

#### Load
- Type of final production database data will load into: Will use a relational database to link the data by our common identifiers.probably, Postgres database using PG admin to store our original clean data sets.

- Final tables/collections that will be used in the production database: New final table with found/calculated values by metrics.

### Project Report
- Project will be submitted through github.

### Team members
- Adedamola Atekoja (‘Damola)
- Amanda Qianyue Ma
- Amos Johnson
- Ermias Gaga
- Maria Lorena
