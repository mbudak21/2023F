**Purpose**: The Relational model is used for both the design and implementation of databases. It defines how data is stored, organized, and retrieved in a database.
**Components**:
    - **Tables (Relations)**: Data is stored in tables, each representing an entity or a relationship.
    - **Rows (Tuples)**: Each row in a table represents a record.
    - **Columns (Attributes)**: Each column represents an attribute of the entity or relationship.


$R(A_1, A_2, ... , A_n)$

| Relation Name              | $R$                     |
|----------------------------|-------------------------|
| Attributes                 | $A_1, A_2, ... , A_n$   |
| Schema                     | $R(A_1, A_2, ..., A_n)$ |
| Domain                     | $dom(A_i)$              |
| Rows which currently exist | $r(R)$                  |
| $A_i$ of tuple t           | $t[A_i]$                |

## Key, SuperKey, PrimaryKey, ForeignKey
In the context of relational database theory, a "key" and a "superkey" serve to uniquely identify records (rows) within a table, but they are not synonymous and have specific distinctions.
* A Key is always a SuperKey
* Key must be minimal
* Superkey must be
### Key
A "key" is a minimal set of attributes (columns) that uniquely identifies a record within a table. "Minimal" here implies that no subset of these attributes can be used to perform the unique identification. In simpler terms, every attribute in the key is essential for the identification, and removing even one would compromise its uniqueness. Keys are important for ensuring data integrity and are fundamental in establishing relationships between tables.
### Superkey
A "superkey," on the other hand, is a set of one or more attributes that uniquely identifies records within a table but may also include additional attributes that are not strictly required for unique identification. Therefore, every key is a superkey, but not every superkey is a key. The extra attributes in a superkey make it "non-minimal," which is the primary difference between a key and a superkey.
### Primary Key
If a relation has several candidate keys, one of them is chosen by the administrator as the primary key.
### Foreign Key
Keys used by entities to reference other entities.

## Integrity Constraints
* **Domain Constraint:** Every value in the tuple must be in the designated domain, or NULL, if allowed.
* **Key Constraint:** A key value must designate each tuple uniquely.
* **Entity Integrity Constratint:** Primary key's cannot be NULL.
* **Referential Integrity Constraint:** No dangling references.

## What to do in the event of deletion?
1. **Cascade**: When a referenced record in the parent table is deleted, the corresponding records in the child table are automatically deleted.
2. **Restrict**: Deleting a referenced record from the parent table is disallowed if there are corresponding records in the child table.
3. **Set Null / Nothing**: Deleting a record in the parent table sets the foreign key in the corresponding child table records to NULL.

Example ER model tables:
![[Pasted image 20231112170349.png]]

