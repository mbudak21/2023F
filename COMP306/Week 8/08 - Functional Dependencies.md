A functional dependency X -> Y holds over relation R if, for every allowable state of R, whenever two tuples have the same value for X, they must have the same value for Y.

* An FD must hold for **every** state in the relation.
* Given a schema, we can conclude that an FD may bold, but we cannto say it holds for certain.
* However, given a relation state, it is possible to certainly conclude which FDs do not hold.
	Seeing one violation of an FD is enough.



```mysql
SELECT p.category, MIN(oi.price) AS min_price
FROM products p
JOIN ORDER_ITEMS oi ON p.product_id = oi.product_id
WHERE p.product_category_name NOT IN ('moveis_decoracao', 'beleza_saude')
GROUP BY p.product_category_name
ORDER BY min_price
LIMIT 6

```