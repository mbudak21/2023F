# Anomalies
**Insertion Anomaly**
Can't add a project without an employee working on it.
Can't add an employee unless they're working on at least one project
**Deletion Anomaly**
If I delete the project "ProductZ", then I lose the information of "Narayan, Ramesh K."
**Update Anomaly**
If a project's name or location is changed, this change must be applied to every employee working on the project, otherwise database becomes logically inconsistent

**TLDR:** No modularity in a schema

# Schema Refinement
* The process of refining a schema takes a bad schema and refines it to a better one.
* Functional dependencies (FDs) enable us to formally reason about anomalies.
* After finding FDs we can refine the schema through **normalization** and **decomposition**.

# Functional Dependencies
**TLDR:** colX determines colY in relation R for all possible states.
A functional dependency X -> Y holds over relation R if, for every allowable state of R, whenever two tuples have the same value for X, they must have the same value for Y.

* An FD must hold for **every** state in the relation.
* Given a schema, we can conclude that an FD may hold, but we cannot say it holds for certain.
* However, given a relation state, it is possible to certainly conclude which FDs do not hold.
	Seeing one violation of an FD is enough.

## Inference Rules For FDs
Armstrong's rules of inference
- **Reflexivity**: If Y is a subset of X, then X -> Y
- **Augmentation**: If X -> Y, then XZ -> YZ
- **Transitivity**: If X -> Y and Y -> Z, then X -> Z
Other, non-essential rules:
* **Decomposition**: If X -> YZ, then X -> Y and X -> Z
* **Union**: if X -> Y and X -> Z, then X -> YZ
* **Psuedo-transivity**: If X -> Y and YZ -> W, then XZ -> W
* **Composition**: If X -> Y and A -> B, then XA -> YB



```mysql
SELECT p.category, MIN(oi.price) AS min_price
FROM products p
JOIN ORDER_ITEMS oi ON p.product_id = oi.product_id
WHERE p.product_category_name NOT IN ('moveis_decoracao', 'beleza_saude')
GROUP BY p.product_category_name
ORDER BY min_price
LIMIT 6
```



# Closure
## FD Closure
Let $F$ denote a set of FDs, the closure of $F$ denoted as $F^+$, is the set of all FD's that can be inferred from $F$.
$$
\begin{align}
F &= \set{A\rightarrow B, B\rightarrow C} \\
F^+ &= \set{F, A\rightarrow C, K\rightarrow A ....\text{ and so on}}
\end{align}
$$

## Attribute Closure
Given an attribute $X$, closure of $X$ denoted as $X^+$ , shows all of the other attributes which can be inferred from $X$.

## Min Cover Algorithm
### 1) If there are multiple attributes in RHS, divide the FD.
### 2) Check the LHS, if there are multiple attributes, make sure they are required.
### 3) Check for redundant FDs, see if any of them can be inferred from the other ones