Attributes are properties used to describe an entity. A specific entity has a value for each of its attributes.
![[Pasted image 20231112153844.png]]

## Types of Attributes

### Simple Attribute
Single, atomic, value for the attribute
**Example:** SSN, Sex, Birthdate

### Composite Attribute
An attribute composed of several components.
It is possible to use nested composite attributes, the rule of thumb is to not go for more than 2 levels, if you need more, it may be a hint that maybe one of the attributes should have been an entity.
**Example:** Adress, Name
	Adress: (Apt#, House#, Street, City, Country, Zip)
	Name: (FirstName, MiddleName, LastName)
	

### Multi-valued Attribute
An entity may have multiple values for that attribute.
**Example:** Color attribute of CAR entity. It can be a single color, or multiple colors.


### Examples:
![[Pasted image 20231112154352.png]]
The adress attribute is both multi-valued (double lines), and composite (it consists of other attributes). This means that an employee can have multiple addresses, which consists of different attributes.