## Syntax
```SQL
CREATE DATABASE databasename;
CREATE TABLE table_name (
	col1 datatype;
);

INSERT, UPDATE, DELETE

SELECT col1, col2, ...
	FROM table_name
	WHERE condition;
DROP TABLE table_name
```

**Example:**
```SQL
CREATE TABLE PROJECT
(
	Pname VARCHAR(15) NOT NULL,
	Pnumber INT NOT NULL,
	Plocation VARCHAR(15),
	Dnum INT NOT NULL,
	PRIMARY KEY (Pnumber),
	UNIQUE (Pname),
	FOREIGN KEY (Dnum) REFERENCES DEPARTMEN(Dnumber)
);
```

## Data Types
```SQL
--Numeric
INTEGER, FLOAT, REAL

CHAR(n)     --- Used to store fixed lenght size strings
VARCHAR(n)  --- Used to store strings with variable size, the max size is denoted with n
BIT(n)      --- Used to store n amount of bits
```

## Retrieval Queries
```SQL
SELECT [DISTINCT] attribute-list
FROM relation-list
WHERE condition

--- Examples ---

SELECT Bdate, Address
FROM EMPLOYEE
WHERE Fname='John' AND Minit='B' AND Lname='Smith';

SELECT Fname, Lname, Address
FROM EMPLOYEE, DEPARTMENT
WHERE Dname='Research' AND Dnumber=Dno;
```
- [DISTINCT] is an optinal keyword indicating duplicates should be eliminated.

### Use of AS:
```SQL
SELECT E.Fname, E.Lname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn = S.Ssn;
```

### Cross Product
```SQL
SELECT Ssn, Dname
FROM EMPLOYEE, DEPARTMENT;
```

### Asterisk *
Retrives all attributes from a relation

### UNION, EXCEPT, INTERSECT

```SQL
(SELECT a
FROM b
WHERE c)
UNION
(SELECT d
FROM e
WHERE f)
```

### String Matching (LIKE)
```SQL
WHERE Address LIKE '%HOUSTON, TX%';
WHERE Ssn LIKE '__1__8901';
```

### Arithmetic Operations
Can be included in the `SELECT` clause. (+ , - , * , / )
```SQL
SELECT 1.1*E.Salary
FROM EMPLOYEE AS E
```

### Ordering Of Results
```SQL
SELECT * FROM Employee
ORDER BY Salary DESC, Name ASC;
```
This query will sort the results primarily by the `SALARY` column in descending order (`DESC`), meaning higher salaries will appear first. Where there are equal salaries, it will then sort by the `name` column in ascending order (`ASC`).

## Modifying Tables
### Insertion
Attribute order should be same as the table.
Constraints for datatypes (INT, CHAR, ...) and integrity (PK, FK, ...) are enforced.
```SQL
INSERT INTO EMPLOYEE
VALUES ('Richard', 'Polo', '60000')
```

### Deletion
Deletes tuples from a relation based on the condition
```SQL
DELETE 
FROM EMPLOYEE
WHERE Lname='Brown';
```

### Update
Modifies attribute values of tuples
```SQL
UPDATE PROJECT
SET PLOCATION='Bellaire',
	DNUM=5
WHERE PNUMBER=10;
```

### DROP
```SQL 
DROP TABLE EMPLOYEE
```
Destorys the tuples AND the Schema.