## Null
- Primary keys cannot be null
- Other fields can or cannot be null depending on the table definiton and integrity constraints

**Arithmetic Operations:**
Avoid: x = NULL, x < NULL, NULL=NULL
Use: IS NULL, IS NOT NULL

## 3-valued-logic (3VL)
SQL uses 3VL: True, False, **Unknown**

## Nested Queries
* Nested queries often appear in the WHERE clause
* Usefull keywords: IN, NOT IN, ALL, ANY, EXISTS, NOT EXISTS, UNIQUE

### IN, NOT IN
Compares value $v$ with a set (or multiset) $V$
If $v \in V$ True, otherwise false
```SQL
SELECT DISTINCT Essn
FROM WORKS_ON
WHERE Pno IN (1, 2, 3);
```

### ALL, ANY
```SQL
SELECT name
FROM Worker
WHERE Salary > ALL (Select Salary
				    FROM Worker
				    WHERE Dno=5);
```
Value must exceed all values from nested query.
If any is specified, value should exceed any value from the nested query.

### Exists, Not Exists
Are boolean operators, they return TRUE or FALSE.
Exists, checks whether the result of the nested query is empty or not.

```SQL
SELECT Fname
FROM Employee E
WHERE 
	EXISTS 
		(SELECT *
		 FROM Dependent
		 WHERE E.Ssn=Essn)
	AND 
	EXISTS (SELECT *
			FROM Department
			WHERE E.Ssn=Mgr_Ssn_)
```