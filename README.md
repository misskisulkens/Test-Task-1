# Test-Task-1
SQL (Working with Arrays in Posgres), EDA Analysis

# Tasks:

## SQL

Given a table with a following schema
```
Table "public.matrices"
 Column |  Type  | Modifiers
--------+--------+-----------
 matrix | text[] | not null
 ```
which holds a set of two-dimensional text arrays i.e.
```
matrix
-------------------
 {{1,2,3},{4,5,6}}
 {{a,b,c},{d,e,f}}
(2 rows)
```
your goal is to wite a SELECT statement or a CTE that returns array data in a transposed form
```
matrix
---------------------
 {{1,4},{2,5},{3,6}}
 {{a,d},{b,e},{c,f}}
(2 rows)
```
**You can’t use / create user definded functions and resort to procedural PL/pgSQL.**

### Solution Details
	 
To complete this task, I've set up Postgres locally & interracted with a database using DBeaver. 
I've created a table that matches the task's requirements & worked further with it to solve the set problem. 
Also, I've included a tiny .py file that includes a solution to such a problem in Python. It can also be extended to work with a Series of arrays (with pandas). 
	 
Files: 
* __sql_solution_sql.sql__ - contains an SQL solution (as requested);
* __sql_solution_python.py__ - contains a Python solution (optionsl).

## EDA Analysis 

Provide EDA Analysis for dataset: [link](https://www.kaggle.com/datasets/jackdaoud/marketing-data)

Desired Output :

Tableau Worksheet (you can use public tableau), and text part (Jupyter Notebook) for conclusions.

### Solution Details

To complete this task I've processed the data in Python using pandas (mainly), numpy, matplotlib (pyplot) & seaborn.
Then I've moved to Tableu Public to create a functional and interactive dashboard that can answer some of the questions about the data present in the processed dataset. 

Files: 
* __ifood_df.csv__ - the file with the main dataset ([link](https://www.kaggle.com/datasets/jackdaoud/marketing-data));
* __ifood_df_processed.xlsx__ - a color-coded .xlsx file that contains all of the columns from the dataset above that helps wrapping ones mind about their further processing;
* __eda_solution_python.ipynb__ - the file with the Jupyter Notebook that contains data processing & data exploration;
* __eifood_df_new.csv__ - the file with the processed dataset.

Also, here is a [Tableau Public Dashboard](https://public.tableau.com/app/profile/kseniiakaranda/viz/MarketingAnalytics-EDA_16708234146250/MarketingAnalytics).

__General Insights__:

__Our Average Customer__:
* earns around $51K per year;
* they are around 50 years old;
* more than a third of them are married;
* and more than a half have "graduation" as their education description;
* in half of the cases, they live with 1 underage person (either a kid or a teen) under a roof.

__Their Customer Behavior__:
* they've purchased with us for the last time almost 50 days ago!
* during the month, they visit the WEB page 6 times;
* they've been our customers for almost 6 years;
* and spent 343 with us;
* their favorite product type is wine;
* they don't accept our campaigns (and if they do, that's most likely to be the last one!);
* they make 15 purchases, primarily - through the store;
* one more, they (almost!) don't complain :)
