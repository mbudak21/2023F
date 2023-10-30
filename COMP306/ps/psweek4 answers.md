
### Question 1
TTFT

### Question 2
Cascade, Restrict, Nothing

1. **Cascade**: When a referenced record in the parent table is deleted, the corresponding records in the child table are automatically deleted.
    
2. **Restrict**: Deleting a referenced record from the parent table is disallowed if there are corresponding records in the child table.
    
3. **Set Null / Nothing**: Deleting a record in the parent table sets the foreign key in the corresponding child table records to NULL.

**Answer:** Since we are in the cascade mode we delete all of the corresponding child relations that point to the CID.

### Question 3
**Domain Constraint**: This ensures that all data in a column falls within a predefined data type and value range, thereby maintaining data accuracy.
**Key Constraint**: This involves defining unique identifiers for records within a database table, typically through Primary Keys, ensuring each record is unique.
**Entity Integrity Constraint**: This mandates that the Primary Key attribute(s) of a table must contain unique and non-null values, ensuring each record is not only unique but also identifiable.
**Referential Integrity Constraint**: This ensures that relationships between tables remain consistent; specifically, that any Foreign Key field must match a Primary Key field in another table or be null, maintaining the integrity of linked records.

**Answers:** 
1. Entity Constraint
2. None
3. Key Constraint
4. Referntial Integrity 
### Question 4 & 5
Conversion Algorithm:

In the pic, card_name should be card_number

#### Step 1 Entities
```sql
CREATE TABLE Vehicle

CREATE TABLE CAR

CREATE TABLE TRUCK

CREATE TABLE SUV

CREATE TABLE SALESPOERSON

	CREATE TABLE CUSTOMER

```