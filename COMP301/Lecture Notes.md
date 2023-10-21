---

---
---
# Lecture 01
General introduction and details about the syllabus
## Learning Outcomes
Fluency in core programming concepts including data representation, procedural representation, grammars, environment models, parsing, evaluation, paramter passing, continuation passing.

Page 19 includes interesting topics about the whole course.

1. **Imperative:** Program state is changed via commands.
2. **Procedural:** An extension of imperative, where code is organized into procedures or functions.
3. **Functional:** Computation based on the evaluation of mathematical functions, avoiding state and mutable data.
4. **Object-oriented:** Datafields are treated as objects, manipulated through predefined methods.
5. **Declarative:** Focuses on what needs to be done rather than how to do it.

-----
# Lecture 02 - Functional Programming & Scheme
Esoteric?: 

**Functions are first-class citizens:** In languages supporting this feature, functions can be passed as arguments, returned as values, and assigned to variables.
## **Three major elements of language**
These elements are fundamentals in the structure and operation of any programming language.

- **Primitives:** Basic elements that the language provides. Strings, booleans, integers etc.
    - **Self-evaluating primitives**: Their value is the object itself.
    - **Booleans**: Represented with the symbols #t (true) and #f (false).
- **Means of Combination:** How different elements can be combined. Ex: (+ 2 3)
- **Means of Abstraction:** The ability to hide details and show only the essential features. (define score 23)

## Scheme Basics
- **Self-evaluating**: Some entities, like numbers, are self-evaluating, which means they evaluate to themselves.
- **Name**: If a name (or identifier) is encountered, the interpreter will return the value associated with that name in the current environment.
- **Special form**: These are syntactic constructs that have a unique evaluation mechanism. For example, `if`, `define`, and `lambda` are special forms in Scheme.
- **Combination**: A combination is a list where the first element is an operator, and the remaining elements are operands. The interpreter evaluates all sub-expressions of the combination and then applies the operator to the values of the operands.

Question: Do interpreters evaluate nested primitive statements in bottom-up or top-down fashion?


## Read-Eval-Print Loop (REPL)
An interactive programming environment where commands are read, evaluated, and the results are printed in a loop.

-----
# Lecture 03 - Functional Programming & Scheme
`(define square (lambda (x) (* x x))) -> ((define (square x) (* x x))`
**The value of a lambda expression is a procedure**

Heavy emphasis on the modularity of functional programming, capturing the common patters and so on.

* Formal parameter, argument
	n: formal parameter, 5: argument
## Substitution Model
A way to figure out what happens during evaluation, not really what happens in the computer
* **Compound procedure:** Evaluate the body of the procedure, with each parameter replaced (substituted) by the corresponding operand.
	`(average 5 (square 3)) `-> `(average 5 (* 3 3))`
* **Primitive Procedure:** Just do it
	`(/ (+ 5 9) 2)` -> `(/ 14 2)`

Last part: How to write recursive algorithms, been taught since comp100 and comp106

## Iterative vs Recursive approaches

| Aspect             | Iterative Approach                            | Recursive Approach                           |
|--------------------|-----------------------------------------------|----------------------------------------------|
| **Definition**     | Uses recursive calls **WITHOUT** pending operations.            | Uses recursive calls **WITH** pending operations.  |
| **Memory Usage**   | Typically uses constant space since the call stack doesn't grow.     | Uses more memory due to continious call stack growth |
| **Readability**    | Can be more straightforward for simple tasks. | Can be more intuitive for problems that have a naturally recursive structure (e.g., tree traversal). |
| **Efficiency**     | Might be more efficient for some problems due to reduced overhead. | Might have more overhead due to repeated function calls. Can be optimized using techniques like memoization. |


-----
# Lecture 04 - Structures and Patterns in Functional Programming

## Order of Growth
* Introduction to the $\Theta$ notation, big O notation with constraints on both lower and upper ends. 
* Growth of Space is measured in number of **deferred** (delayed for later computation) operations.
* Growth of Time is measured in number of primitive steps

## Compound Data (cons)
`(cons <x> <y>) ==> <P>`
Returns a pair ``<P>`` whoose:
	car: `<x>`, cdr:`<y>`
Basically a linked list whose end is indicated with an empty list.

#### Question:
What are the internal workings of this structure? Does cons return a pointer that points to the first element and its pointer which points to the second element?
#### Answer by ChatGPT:
Yes, your understanding is on the right track. In Lisp-like languages, such as Scheme, the `cons` function is a fundamental operation to create pairs, which are the building blocks of lists. Let's delve deeper into the internal workings:

1. **The Pair Structure**: When you use the `cons` function, it creates a pair, which is a composite data structure consisting of two parts: the `car` and the `cdr`. The `car` typically holds the first value, and the `cdr` typically holds the second value.
    
2. **Pointers**: The pair does not "contain" the two values in the traditional sense. Instead, it contains pointers to these values. If these values are themselves pairs, then the pointers will point to other pairs, creating a linked structure.
    
3. **Building Lists with Pairs**: When building lists using `cons`, the convention is for the `car` to contain the current element of the list, and the `cdr` to contain a pointer to the next pair (or element) in the list. This chaining of pairs forms a linked list. The last element in the list will typically have a `cdr` value of `nil` (or its equivalent, like `empty-list`), signaling the end of the list.
    
4. **Representation**: A visual representation might show the `car` and `cdr` of each pair as two adjacent boxes, with arrows indicating the pointers. In a list structure, the `cdr` box of each pair would have an arrow pointing to the next pair, until the end of the list is reached.
    
5. **Accessing Elements**: To access the elements of a pair or a list, you'd use the functions `car` and `cdr`. The `car` function retrieves the first element of the pair (or the current element of a list), while the `cdr` function retrieves the second element of the pair (or the rest of the list).
    
6. **Memory Allocation**: When you use `cons` to create a pair, memory is allocated for that pair. This memory holds the pointers for the `car` and `cdr`. Because lists in Lisp-like languages are built from these pairs, they are essentially linked lists, where each node (pair) contains a value and a reference (pointer) to the next node.

In summary, the `cons` function is used to construct pairs, and by chaining these pairs together, you create lists. The structure consists of pointers to values (or other pairs), making it a dynamic and flexible way to create and manipulate complex data structures. This foundational concept is central to the design and operation of Lisp-like languages.

[Confidence Level: High] [Source: [https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-15.html#%_sec_2.2](https://mitpress.mit.edu/sites/default/files/sicp/full-text/book/book-Z-H-15.html#%25_sec_2.2)]




# Lecture 05 - Higher Order Procedures
A **Higher Order Procedure** either takes a procedure as an argument or returns one as a value.

## List Tranformation
### Map
Transform lists by applying a function to every element. The procedure provided must be of the indicated format below.
`(map proc lst) -> <List>`;`(proc x) -> y`

### Filter
Transform lists by selectively choosing each element according to the procedure. If the given element of the list results in a false value return in the procedure it is filtered out of the list.
`(filter proc lst) -> <List>'` `(proc x) -> #t or #f`

### Reduce
Transforms lists by 
`(reduce proc init lst) -> <Value>`