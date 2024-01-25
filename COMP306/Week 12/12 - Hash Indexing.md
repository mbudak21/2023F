# Hashing
Desired properties:
- Fast
- Low collision rate (uniform across range)

## Static Hashing
maps every key from 0 to N, can be used if N is known.

keys -> h(k) -> 0, 1, 2, 3, 4, ... N
- No collisions
- Works only when N is known ahead of time.

## Overflow Hashing
- An extension to static hashing
- if there is a collision, treat the collided part as a linked list. ie, add the entry to the tail of the collision

## Linear Probing
- Another extension to static hashing
- If there is a collision at k, add the entry at k+1.

**Problem with delete:**
	![[Pasted image 20240117230331.png]]
**Solution:** Tombstone, put a tombstone at the deleted parts.


# Extendible Hashing

# Summary
## 3 Methods
- static with methods
- Extendible
- Linear

Good for eq searches but not range searches, trees are better in this sense.