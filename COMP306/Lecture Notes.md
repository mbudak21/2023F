# Lec 01

* Introduction lecture. 
* SQL
* Relational algebra
* Relational databases

# Lec 02
* Metadata: Data about data, labels?
* Entity Relationship Model (ER Model)
	Simple, Composite and Multi-Valued attributes
* Key attribute: Unique attribute such as TCKN, SSN, ID
* Cardinality must be shown in relationships (diamond shape)
* Double lines in a relationship denote a must have relationship, a must `relation` to b

# Lec 03
* Company database example
* (15pts) Midterm question, write ER diagram from description

# Lec 04
## Subclass / Superclass
superclass -> subclass
d: Disjoint or o: Overlapping
Participation constraint

# Lec 05 - Pass

# Lec 06
## Key vs SuperKey
  
In the context of relational database theory, a "key" and a "superkey" serve to uniquely identify records (rows) within a table, but they are not synonymous and have specific distinctions.

* A Key is always a SuperKey
* Key must be minimal
* Superkey must be
### Key

A "key" is a minimal set of attributes (columns) that uniquely identifies a record within a table. "Minimal" here implies that no subset of these attributes can be used to perform the unique identification. In simpler terms, every attribute in the key is essential for the identification, and removing even one would compromise its uniqueness. Keys are important for ensuring data integrity and are fundamental in establishing relationships between tables.

### Superkey

A "superkey," on the other hand, is a set of one or more attributes that uniquely identifies records within a table but may also include additional attributes that are not strictly required for unique identification. Therefore, every key is a superkey, but not every superkey is a key. The extra attributes in a superkey make it "non-minimal," which is the primary difference between a key and a superkey.



# Lec 07 - Data Integrity

**4 Types Of Integrity Constratins**:
* Domain Constraint: 
* Key Constratint:
* Entity Integrity Constratint:
* Referential Integrity Constraint:

