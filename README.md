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

## EDA Analysis 

Provide EDA Analysis for dataset: [link](https://www.kaggle.com/datasets/jackdaoud/marketing-data)

Desired Output :

Tableau Worksheet (you can use public tableau), and text part (Jupyter Notebook) for conclusions.
