
# Part A

## 1) Write the 5 components of the language
•	Syntax and Datatypes
•	Values
•	Environment
•	Behaviour Specification
•	Behaviour Implentation

## 2) How does the env change?

# Part B
## 1) Create an initial environment that contains 3 different variables (x, y, and z).
See the code

## 2) Using the environment abbreviation shown in the lectures, write how the environment changes at each variable addition.

```scheme
>  (define e (empty-env))
>> ('empty-env)

>  (extend-env 'z (num-val 30) e)
>> ('z 30 (empty-env))

>  (extend-env 'y (num-val 20) e)
>> ('y 20 ('z 30 (empty-env)))

>  (extend-env 'x (num-val 10) e)
>> ('x 10 ('y 20 ('z 30 (empty-env))))

>  (extend-env 'v (num-val 3) e)
>> ('v 3 ('x 10 ('y 20 ('z 30 (empty-env)))))
```

# Part C

# Part D

