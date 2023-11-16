### Operators
1. **Projection ($\pi$)**: Returns the specified columns from the provided schema.
	**Usage:**
	 ![[Pasted image 20231114140609.png|174]]
	Choose colums sname, rating from S2
    
2. **Selection ($\sigma$)**: Return rows which satisfy a boolen operation.
	**Usage:**
	![[Pasted image 20231114140738.png|269]]
	      
1. **Union ($\cup$)**: Combines two union compatible schemas, duplicates are removed. Even if key values are the same, as long as a single column is different the entities are counted as NOT unique, and therefore both are added.
    
4. **Intersection ($\cap$)**: Retrieves only the rows that are common to the result sets of two or more queries.
    
5. **Difference (Set Difference) ($-$)**: Returns rows from the first query that are not present in the second query's result set.
    
6. **Cartesian Product (Cross Product) ($\times$)**: Combines each row of one table with each row of another table, often used as a preliminary step in join operations.
	**Example:**
		![[Pasted image 20231114142207.png|475]]
		
    
7. **Rename ($\rho$)**: Used to rename the columns or the table itself for clarity or to avoid ambiguity in complex queries.
    
8. **Join ($\bowtie$)**: Combines rows from two or more tables based on a related column between them, typically used to link tables that have a foreign key relationship.
    
9. **Division ($/$)**: A/B: Used to find all tuples in a that reference B.
	**Example:**
		![[Pasted image 20231114142834.png|475]]
