**Purpose**: The ER model is used primarily for the **conceptual design**. It focuses on representing the conceptual schema of a database, i.e., how data is related in a high-level, abstract manner. It is not tied to a language or a DBMS software.

**Entity Set:** The collection of entities stored in the DB
**Value Set:** Domain of permitted values for the specific attribute.
	SSN -> 9 digits
	Name -> X chars
### Attributes
* **Simple Attribute:** Single, atommic, value for the attribute.
* **Composite Attribute:** Attribute composed of serveral attributes.
* **Multi-Valued Attribute:** An entitiy may have multiple values for that attribute. (1 color or 2 colors or N colors)![[Pasted image 20231027155229.png]]

#### Key Attribute
An attribute for which each entity in the entity set must have a unique value. An entity may have multiple keys, each underlined in the diagram, this is not the case in the [[Relational Model]], in which only one primary key is underlined.

Key is a minimal Superkey.
### Relationships
Relates two or more distinct entities with a specific meaning. Relationships may also have attributes.
* Cardinality must be shown in relationships.
* **Degree:** 
	Binary -> 2
	Ternary -> 3
	Higher degrees are uncommon and not preferred
	![[Pasted image 20231027160851.png]]
**Recursive (self-referencing) Relationships:** In recursive relationships, each entitiy must have a role![[Pasted image 20231027161415.png]]
**Cardinality:**![[Pasted image 20231027161532.png]]
**Participation Constratint:** Usage of double lines
![[Pasted image 20231027181035.png]]
### Weak Entities
An entitiy that depends on another entitiy type for identification. Denoted with double lines around the entitiy. Doesn't have a key instead has a **partial key**. Partial key is denoted with dashed underline.
![[Pasted image 20231027225827.png]]
A weak entity must have an **identifying relationship**, its shown with double lines around it.

### Subclass / Superclass
Similar to subclasses of a main class.
**Example:**
	Employee: Hourly_EMP, Salaried_EMP
	Vehicle: Car, Truck
Subclasses **inherit** attributes of the superclass, and they may have additional attributes that the superclass doesn't have.
**Disjointness Constraint** Specifies whether instances of subclasses may or may not overlap. If disjoint, an instance of the superclass can only be a member of one subclass.
**Completeness Constraint**: Determines whether an instance of a superclass must belong to at least one subclass (total completeness) or not (partial completeness).


![[Pasted image 20231027230615.png]]
* (15pts) Midterm question, write ER diagram from description