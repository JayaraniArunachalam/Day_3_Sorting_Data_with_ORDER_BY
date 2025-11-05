# Day_3_Sorting_Data_with_ORDER_BY
ORDER BY is the keyword in SQL to sort data. ORDER BY sorts your query results based on one or more columns.

## 📚 Concepts Covered
* ORDER BY – keyword used to sort query results
* Default sorting order - ascending (keyword ASC)
* To sort in descending order, ORDER BY column_name DESC
* Multiple columns can be sorted – order matters
* For multi-column sorting, the second column is sorted within each group of the first
* NULL values appear first in ASC and last in DESC
* Sorting is expensive- the use of an index on frequently sorted columns boosts performance
    * ```CREATE INDEX idx_1 ON table1(column_name)``` [syntax to create index]
    * ```DROP INDEX idx_1 ON table1 ``` [syntax to drop index]
    * For primary keys in a table, MYSQL automatically creates an index 


## 🏥 Dataset: 
- [services_weekly](https://github.com/JayaraniArunachalam/Day_1_SQL_Creating-DB-Tables-and-fetch-UNIQUE-values/blob/main/services_weekly.csv)

Columns in the dataset: week,	month,	service,	available_beds,	patients_request,	patients_admitted,	patients_refused,	patient_satisfaction,	staff_morale,	event

## 📅Challenge: Day 3 
Retrieve the top 5 weeks with the highest patient refusals across all services, showing week, service, patients_refused, and patients_request. Sort by patients_refused in descending order.

## ✅ [SQL Solution](https://github.com/JayaraniArunachalam/Day_2_SQL_Filtering_data_with_where_clause/blob/main/DAY_2_MYSQL_IDC_WHERE_jaya.sql)
  ``` MYSQL
SELECT week, service, patients_refused , patients_request 
FROM services_weekly
ORDER BY patients_refused DESC
LIMIT 5;
```
## 📊 Result:
👉[Result / Output](https://github.com/JayaraniArunachalam/Day_3_Sorting_Data_with_ORDER_BY/blob/main/Day%203%20ORDER%20BY%20op.png)

## 💡 Key Learnings
- multi columns can be sorted
- creating an index for frequently sorted columns
- MYSQL automatically create index for primary keys

Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

Connect with me on [LinkedIn](https://www.linkedin.com/in/jayarani-arunachalam-23jun1990/)
