# 📌 SQL JOIN Types (CROSS, INNER, LEFT, RIGHT, FULL OUTER)

This repository demonstrates different types of **SQL JOIN operations** used to combine data from multiple tables.  
JOINs are fundamental in relational databases for retrieving meaningful combined data.

---

## 📂 Tables Used

- **people**
- **states**

Relationship:
- `people.state_code` ↔ `states.state_abbrev`

---

## 🔗 Types of SQL JOINS Covered

- CROSS JOIN  
- INNER JOIN  
- LEFT OUTER JOIN  
- RIGHT OUTER JOIN  
- FULL OUTER JOIN  

---

## 1️⃣ CROSS JOIN

### 🧾 Code
```sql
SELECT * FROM people JOIN states;
````

### 📘 Explanation

* Returns **Cartesian product**
* Every row from `people` is combined with every row from `states`
* If `people` has M rows and `states` has N rows → result = M × N rows

### 🎯 Use Case

✔ Generating combinations
✔ Testing datasets
✔ Matrix-style data generation

---

## 2️⃣ INNER JOIN

### 🧾 Code

```sql
SELECT * 
FROM people 
JOIN states 
ON people.state_code = states.state_abbrev;
```

### 📘 Explanation

* Returns only **matching records** from both tables
* Rows without matches are excluded

### 🎯 Use Case

✔ Customer with valid location
✔ Employee with department mapping
✔ Clean relational queries

---

## 3️⃣ LEFT OUTER JOIN

### 🧾 Code

```sql
SELECT * 
FROM people 
LEFT JOIN states 
ON people.state_code = states.state_abbrev;
```

### 📘 Explanation

* Returns **all rows from left table (people)**
* Matching rows from `states`
* Non-matching rows → NULL values

### 🎯 Use Case

✔ Find users without valid state
✔ Data completeness checks
✔ Left table dominance analysis

---

## 4️⃣ RIGHT OUTER JOIN

### 🧾 Code

```sql
SELECT * 
FROM people 
RIGHT JOIN states 
ON people.state_code = states.state_abbrev;
```

### 📘 Explanation

* Returns **all rows from right table (states)**
* Matching rows from `people`
* Non-matching rows → NULL values

### 🎯 Use Case

✔ Find states with no users
✔ Coverage analysis
✔ Right table dominance

---

## 5️⃣ FULL OUTER JOIN

### 🧾 Code

```sql
SELECT * 
FROM people 
FULL OUTER JOIN states 
ON people.state_code = states.state_abbrev;
```

### 📘 Explanation

* Returns **all records from both tables**
* Matching rows are combined
* Non-matching rows show NULLs

### 🎯 Use Case

✔ Complete data comparison
✔ Data merging from multiple sources
✔ Identifying missing relationships

---

## 🔍 DISTINCT with JOIN Example

### 🧾 Code

```sql
SELECT DISTINCT(people.state_code), states.state_abbrev
FROM states
LEFT JOIN people 
ON people.state_code = states.state_abbrev
ORDER BY people.state_code;
```

### 📘 Explanation

* Removes duplicate state codes
* Combines LEFT JOIN with DISTINCT and ORDER BY
* Helps in analyzing unique mappings

### 🎯 Use Case

✔ Unique region mapping
✔ Data cleaning
✔ Reporting

---

## 🧠 Summary Table

| JOIN Type  | Result                               |
| ---------- | ------------------------------------ |
| CROSS JOIN | All combinations (Cartesian product) |
| INNER JOIN | Only matching rows                   |
| LEFT JOIN  | All left + matched right             |
| RIGHT JOIN | All right + matched left             |
| FULL JOIN  | All rows from both tables            |

---

## ⚠️ Important Notes

* Always use `ON` clause for clarity
* CROSS JOIN can create very large datasets
* FULL OUTER JOIN may not be supported in all databases (e.g., MySQL without workaround)

---


## 🤝 Contributing

* SELF JOIN
* JOIN with GROUP BY
