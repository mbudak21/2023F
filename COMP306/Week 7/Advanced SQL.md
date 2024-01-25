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

### Unique
Checks for duplicate tuples, if set contains duplicates, return FALSE, otherwise return TRUE.
```sql
SELECT S.sname
FROM Sailors S
Where UNIQUE (SELECT R.bid
			  FROM Reserves R
			  WHERE S.sid=R.sid)
```
### Division (NOT EXISTS + Except), kind of like double negation
Find the first and last names of employees who work on ALL projects controlled by department number 5.
```sql
SELECT Fname, Lname
FROM EMPLOYEE
WHERE NOT EXISTS (
    (SELECT Pnumber 
     FROM PROJECT 
     WHERE Dnum = 5)
    EXCEPT 
    (SELECT Pno 
     FROM WORKS_ON 
     WHERE Ssn = Essn)
)```

Find the names of sailors who have reserved all boats.
```sql
SELECT S.sname
FROM Sailors S
WHERE NOT EXISTS (
    (SELECT B.bid
     FROM Boats B)
    EXCEPT 
    (SELECT R.bid
     FROM Reserves R
     WHERE R.sid = S.sid)
)
```
## Joins

## Aggregate Operators
Used to ummarize informaton from multiple tuples into a short summary.
```kotlin
COUNT(*)
COUNT([DISTINCT] A)
SUM([DISTINCT] A)
AVG([DISTINCT] A)
MAX(A)
MIN(A)
```

## GROUP BY - HAVING
