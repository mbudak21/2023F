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
Primary key of R is the combination of the primary key of the owner plus the partial key of the weak entity.
## Step 3: Mapping of Binary 1:1 Relationships
## Step 4: Mapping of Binary 1:N Relationships
	Add foreign key of singular entity to the model of `N entitiy`.
	Entitiy on the `1` side references `N` side entity.
## Step 5: Mapping of Binary M:N Relationships
	Create a relationship table just for this relation. Which let's us track which entity relates to which entity. ex: driver car relationship
	Create a owns relationship
## Step 6: Mapping of Multivalued Attributes
## Step 7: Mapping of N-ary Relationships (eg: ternary)
