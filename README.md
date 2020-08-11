# ETL-Project

## Unveil the Top Fastest-Growing Private Companies in America Vs. Global in the year 2017, 2018, 2019
                          
![ETL_project](Image/Inc.5000.png)  

### Project Proposal

This project is designed to conduct a presentation of business information or Business Intelligence by extracting, trasnfroming, and loading the top fastest-growing private companies in America vesrus globally in the year 2017, 2018, 2019.

We are going to use 2 different datasets from the public data platform Data World which leads us to extract the fastest-growing private companies in America, and the Glob sourced from [Inc 5000](https://www.inc.com/inc5000/2019/top-private-companies-2019-inc5000.html), and [Forbes Global 2000](https://www.forbes.com/global2000/#6b08d4d8335d). 


### Finding Data/Data Source/Extract
All of our data is sourced from the year 2017 up to 2019. 

* INC 5000 America
  - [Data World Inc 5000,2019](https://data.world/aurielle/inc-5000-2019/workspace/file?filename=inc5000-2019.csv)
  - [Data World Inc 5000,2018](https://data.world/aurielle/inc-5000-2018/workspace/file?filename=inc5000-2018.csv)
  - [Data World Inc 5000,2017](https://data.world/aurielle/inc-5000-2017/workspace/file?filename=inc5000-2017-091317.csv)
 
* Forbs 2000 Global
  - [Data World Forbes Global 2000,2019](https://data.world/aroissues/forbes-global-2000-2008-2019/workspace/file?filename=Forbes+Global+2000+-+2019.csv)
  - [Data World Forbes Global 2000,2018](https://data.world/aroissues/forbes-global-2000-2008-2019/workspace/file?filename=Forbes+Global+2000+-+2018.csv)
  - [Data World Forbes Global 2000,2017](https://data.world/aroissues/forbes-global-2000-2008-2019/workspace/file?filename=Forbes+Global+2000+-+2017.csv)
  

### Data Cleanup & Analysis

#### Transformation

- We will gone use Pandas functions in Jupyter Notebook to transform all CSV files.
- Reviewe the files and transformed into data frames
- Type of transformations needed (cleaning, joining, filtering, aggregating: etc). Several columns will not be needed and will be removed. 
- Duplicate rows will be removed, and need to be managed. 
- Some aggregation will also be done to find totals for comparison business in the dataset.

#### Load
- Type of final production database data will load into: Will use a relational database to link the data by our common identifiers.probably, Postgres database using PG admin to store our original clean data sets.

- Final tables/collections that will be used in the production database: New final table with found/calculated values by metrics.

### Project Report



