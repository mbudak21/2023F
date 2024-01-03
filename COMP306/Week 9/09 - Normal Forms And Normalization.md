Summary:
1NF: all values must be atomic.
2NF: Non-key attributes must be dependent on the whole primary key, not on a subset of the key.
3NF: Non-key attibutes cannot determine other non-key attributes.
BCNF: Is violation when a non-key attribute determines a key attribute.

______________
# 1NF
All values stored must be only atomic (**indivisible**) values. Example of a non-1NF schema:

| EmpNum| EmpPhone | EmpDegrees |
| --- | --- | --- |
| 123 | 233-8671 |  |
| 123 |  923-1242| Ba, BSc, PhD|
| 123 | 760-1909 | BSc, MSc |
## Decomposition:
Create a new table for the multi-valued attribute, just like in the ER conversion algorithm.
_________
# 2NF
1. It is already in 1NF.
2. It does not contain any partial dependency.
#### Partial Dependency:
When a non-key attribute depends on a subset of the Key.

#### Example:
`StudentID, CourseID` (composite primary key),
`CourseName`
`InstructorName`
`StudentName`
This example violates 2NF if any of the non-key attributes depend on either StudentID or CourseID, but not both.
## Decomposition
* Make sure the table ensures 1NF
- Identify partial dependencies.
- Remove these partial dependencies by separating them into different tables.
- Create relationships between these new tables and the original table through foreign keys.
*Solution To Example:*
1. StudentCourse Table:
    - StudentID (PK)
    - CourseID (PK)
    - Instructor
2. Course Table:
    - CourseID (PK)
    - CourseName
_______________
# 3NF
A table is in 3NF if:

1. It is already in 2NF.
2. It contains no transitive dependencies.
#### Transitive Dependency:

A transitive dependency in a database table is a condition where a non-key attribute depends on another non-key attribute, which in turn depends on the primary key. This kind of dependency can lead to redundancy and inconsistency in the database.

## Decomposition
1. Find the *violation*, i.e. the non-key to non-key dependency X -> Y.
2. Create a new table, put X and Y in the new table.
3. Remove Y from the original table but keep X.
4. X in original and X in new table have a foreign key relationship.
5. Repeat untill table is in 3NF.
_________
# Boyce-Codd Normal Form
Violation occurs when a non-key attribute determines a key attribute.

## Example (not in BCNF):
* R(_MovieTitle_, _PersonName_, MovieID, Role, Payment)
* MovieID -> MovieTitle violates BCNF0
## Decomposition
![[Pasted image 20240101185112.png|525]]
Examples:
	![[Pasted image 20240101185431.png]]
	![[Pasted image 20240101185637.png]]
_________
# Properties Of Decompositions

## Lossless join (non-additive) decomposition (must):
Lossy decomposition: When the decomposed tabless are joined, new rows are introduced.
Example:
	![[Pasted image 20240101185012.png]]
	

## Dependency-preserving decomposition (nice to have): 