# Locks
## Types of Locks
### S-lock (Shared Lock): for **reads**
### X-lock (Exclusive Lock): for **writes**

## Two-Phase Locking (2PL)
- When a transaction aborts, it causes other transactions to also have to abort.
### 1) Growing
Lock manager grands or denies requests.
### 2) Shrinking
The transaction is allowed to relase previously acquired locks, but it is not allowed to acquire new locks.

## Strict 2PL
All locks of the transaction are relased only when the transaction completes.

# Deadlock Prevention
## Wait-Die: prio first one
If T1 started first and T1 wants to get a lock held by T2, in Wait-Die T1 waits, in Wound-wait T2 aborts.

If T1 started first and T2 wants to get a lock held by T1, in Wait-Die T2 aborts, in Wound-Wait T2 waits.

### table
```
|     T1    |     T2    |
|-----------------------|
| BEGIN     |           |        Wait Die:  Wound-Wait:
|           | BEGIN     | ---->  T1 waits   T2 aborts
|           | X-LOCK(A) |
| X-LOCK(A) |           |





```


## Wound-Wait: Prio last one