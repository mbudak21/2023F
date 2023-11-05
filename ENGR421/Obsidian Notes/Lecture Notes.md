# Lec 04 - X
## Bernoulli Density
* Exam question about likelyhood ? ENGR question i guess?
* Check second derivaties of the equations, will come up in the exam

## Gaussian Density
* Check the lecture notes, replicate the results

## Parametric Classification

## Parametric Regression

----

# Lec 05 - Multivariate Methods

----

# Lec 06 - 

* **Multivariate Gaussian**

--- 
# Lec 07 - Linear Discrimination
$g(x) = w^T.x + w_0$
$p(x|y=1) = N(x;\mu_1, \Sigma_1)$ $p(x|y=2) = N(x;\mu_2, \Sigma_2)$
**Assumption:** $\Sigma_1 = \Sigma_2$

Need to calculate covariance matrix, but it is very difficult to compute.

# Lec 08 - 

---
# Lec 09 - Linear Discrimination
### Step 1
Small values are chosen for a small bias.
### Step 2

### Step 3
### Step 4
How to stop
$||w||_2 = \text{euclidian distance}$

All steps are implemented in Lab 3. Next homework will be about Linear discrimination.

## Linear Discrimination (Multiple Classes K>2)

Most software implementations don't use reference and non-reference functions but instead they use the softmax function. 

SCORES -> g(c) scores
