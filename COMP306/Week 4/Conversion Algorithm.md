## Step 1: Mapping of Regular Entities
* For each regular entity $E$, create a relation $R$ that includes all the simple attributes of $E$.
	If E has a composite attribute, take the simple attributes that make up the composite attribute
* Choose one of E's keys as the primary key of R
	If E's key is composite, the set of simple attributes that make up the composite attribute **COMBINED** becomes the key of R
**Example:** 
	![[Pasted image 20231112171033.png]]


### (EER only) Mapping of Subclass/Superclass
Keep the **superclass** relation as is.
For each **subclass**, create its own relation.
	- Add primary key of superclass to the subclass relation, as a foreign key.
	- Add any other attribute the subclass may have to the subclass relation.
	- Primary key of subclass relation is equal to the primary key of the superclass

**Example:**
	![[Pasted image 20231112172006.png]]
	
## Step 2: Mapping of Weak Entities
The weak entitity and its identifying relationship is handled together, by creating a single new relation $R$.
$R$ contains:
- Owner (strong) entity's **primary key** -> **foreign key** in $R$
- All attributes of the weak entity.
- All attributes of the identifying relationship (if any).
Primary key of R is the **combination** of the primary key of the owner plus the partial key of the weak entity.
## Step 3: Binary 1:1 Relationships
There are 3 cases:
* **(3A)** Participation constraint on one side
* **(3B)** Participation constraint on both sides
* **(3C)** No participation constraint

### 3A
![[Pasted image 20231113205850.png]]
Add **T**'s primary key to **S**'s relation as foreign key
Any attribute of relationship **R** is also added to **S**

**Example:**
	![[Pasted image 20231113210650.png]]

### 3B
![[Pasted image 20231113210715.png]]
Merge the relations for **S** and **T** into a single relation.

**Example:**
	![[Pasted image 20231113210816.png]]

### 3C
![[Pasted image 20231113210917.png]]
Create a new relation for relationship **R**, use **S** and **T**'s primary keys as foreign keys in **R**. 

**Example:**
	![[Pasted image 20231113211030.png]]

## Step 4: Binary 1:N Relationships
![[Pasted image 20231113211120.png]]
Add the primary key of **T** as foreign key in **S**.
Add the simple attributes of **R** to **S**.

**Example:**
	![[Pasted image 20231113211243.png]]
	Self Referencing:
	![[Pasted image 20231113211407.png]]
	
## Step 5: Binary N:M Relationships
![[Pasted image 20231113211515.png]]
Create a new relation **R** for this relationship.
Add **S** and **T**'s primary keys as foreign key in **R**, and add any attributes **R** may have.
The *combination* of **S** and **T**'s primary keys is the primary key of **R**.

**Example:**
	![[Pasted image 20231113213328.png]]

## Step 6: Mapping of Multivalued Attributes
![[Pasted image 20231113213432.png]]
Create a new relation **R** for each multivalued attribute.
Add primary key of entity to **R**, as foreign key.
Primary key of **R** is the *combination* of the multi-valued attribute + the added foreign key

**Example:** 
	![[Pasted image 20231113213657.png]]

## Step 7: Mapping of N-ary Relationships (3-ary, 4-ary, etc.)
Create new relation **R**
Add primary keys of all partipicating entities to **R**, as foreign keys.
Add any attribute the relationship itself may have.
Primary key of **R** is typically the combination of all foreign keys added in the first step.

**Example:**
	![[Pasted image 20231113213927.png]]
	![[Pasted image 20231113213936.png]]

