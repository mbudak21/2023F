# Strawman Approach
When you have N transactions, execute them serially.
Before each transaction, copy the DB and apply changes on that one. If there is an error, delete the errored copy. If there are no errors, set the new DB to the copied one.

## Cons:
No multi-threading.

# Acid Properties
- **Atomicity:** Either all actions in a transaction happen, or none happen.
- **Consistency:** Preserve consistency.
- **Isolation:** Execution of one transaction is isoleted from other executions.
- **Durability:** "The results stay": If a transaction commits, its effects persist (despite OS crashes, electricity outages, ...).

### Atomicty
#### Logging
Log everything, if there is an error backtrack and revert changes.
Used very widely.
Good for auditing.
#### Shadow Paging
Copy the DB, and apply changes on the copy. Depending on the success of the transaction, either apply the copied DB to the main DB, or delete the copy.
Not popular
Very slow

### Isolation
Isolation basically lets us use multi-threading without errors. To achieve this we need to have proper **interleaving**, which is achieved with proper **scheduling** and **concurrency control**.

# Conflicts
## RW Conflict - Repeated Reads
![[Pasted image 20240102224543.png]]
## WR Conflict - Dirty Read, reading uncommitted data
![[Pasted image 20240102224602.png]]

## WW Conflict - Overwriting uncommited data
![[Pasted image 20240102224615.png]]

