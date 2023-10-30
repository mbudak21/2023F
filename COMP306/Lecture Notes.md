
* Metadata: Data about data
* Entity Relationship Model (ER Model)
	Simple, Composite and Multi-Valued attributes
* Key attribute: Unique attribute such as TCKN, SSN, ID
* Cardinality must be shown in relationships (diamond shape)
* Double lines in a relationship denote a must have relationship, a must `relation` to b

### Attributes
* **Simple Attribute:** Single, atommic, value for the attribute.
* **Composite Attribute:** Attribute composed of serveral attributes.
* **Multi-Valued Attribute:** An entitiy may have multiple values for that attribute. (1 color or 2 colors or N colors)
![[Pasted image 20231027155229.png]]

### Relationships
* **Degree:** 
	Binary -> 2
	Ternary -> 3
	Higher degrees are uncommon and not preferred
	![[Pasted image 20231027160851.png]]
**Recursive Relationships:** In recursive relationships, each entitiy must have a role![[Pasted image 20231027161415.png]]
**Cardinality:**![[Pasted image 20231027161532.png]]
Participation Constratint: ![[Pasted image 20231027181035.png]]

### Weak Entities
An entitiy that depends on another entitiy type for identification. Denoted with double lines around the entitiy. Doesn't have a key instead has a **partial key**. Partial key is denoted with dashed underline.
![[Pasted image 20231027225827.png]]
A weak entity must have an **identifying relationship**, its shown with double lines around it.

* (15pts) Midterm question, write ER diagram from description
![[Pasted image 20231027230615.png]]
# 03 - Relation Model


$R(A1, A2, ... , An)$
**Relation name:**$R$
**Attributes:**$A_1, A_2, ..., A_n$
**Schema:** $R(A1, A2, ... , An)$
**Example:** STUDENT(Name, Ssn, Home_phone, Address, Office_phone, Age, Gpa)

Each attribute has a **`domain`** of allowed values: $dom(A_j)$
$r(R)$: A specific state of relation R
	$r(R) \subset dom(A_1) * dom(A_2) ...  * dom(A_n)$  

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

### Integrity Constraints
* **Domain Constraint:** Every value in the tuple must be in the designated domain, or NULL, if allowed.
* **Key Constraint:** A key value must designate each tuple uniquely.
* **Entity Integrity Constratint:** Primary key's cannot be NULL.
* **Referential Integrity Constraint:** No dangling references.

### What to do in the event of deletion?
1. **Cascade**: When a referenced record in the parent table is deleted, the corresponding records in the child table are automatically deleted.
2. **Restrict**: Deleting a referenced record from the parent table is disallowed if there are corresponding records in the child table.
3. **Set Null / Nothing**: Deleting a record in the parent table sets the foreign key in the corresponding child table records to NULL.

## Conversion Algorithm

Step 1: Mapping of Regular Entities
	(EER only) Mapping of Subclass/Superclass
Step 2: Mapping of Weak Entities
Step 3: Mapping of Binary 1:1 Relationships
Step 4: Mapping of Binary 1:N Relationships
	Add foreign key of singular entity to the model of `N entitiy`.
	Entitiy on the `1` side references `N` side entity.
Step 5: Mapping of Binary M:N Relationships
	Create a relationship table just for this relation. Which let's us track which entity relates to which entity. ex: driver car relationship
	Create a owns relationship
	
| Customer      | Car | Owns_since |
|-----------|---------|------------|
| John      | CarX    | somedate   |
| John      | CarY    | somedate   |
| Emily     | CarY    | somedate   |

Step 6: Mapping of Multivalued Attributes
Step 7: Mapping of N-ary Relationships (eg: ternary)


## Relational Algebra
**Projection:** --Symbol: $\pi$
	**Desc:** Chooses colums
	**Example:** $^\pi \text{sname, rating}^{(S2)}$ -> display only colums sname and rating
	


