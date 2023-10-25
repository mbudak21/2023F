# Lec 01 - Introduction

* Parameters and hyperparameters
* Formal definiton of Machine Learning
* Supervised Learning
* Error measureing metrics, rmse 
## Supervised Learning
$X = \{ (x_i, y_i)\}_{i=1}^{N}$

$X:$ Training set
$x_i:$ i'th input
$y_i:$ i'th label\output
$N:$ number of data points

A machine learning technique where the algorithm is trained on labeled data. The input data will come with an output label. The machine is `supervised` with correct answers.

Supervised learning is classified into two categories of algorithms:

### Classification
A classification problem is when the output variable is a category, such as “Red” or “blue” , “disease” or “no disease”.

* Binary Classification: # of classes 2
	* Good, Bad customers in bank credit applications
	* Feature engineering: Which data is relevant?
* Multiclass Classification: # of classes > 2
### Regression
A regression problem is when the output variable is a real value, such as “dollars” or “weight”.

* Definiton $x = {(x_i, y_i)}^{N}_{i=1}\ \ \ \ y_i \in R$ 
* Forecasting
* Is there training in regresssion? I thought it was just a mathematial question# Lec - 02

**Types:-**
- Regression
- Logistic Regression
- Classification
- Naive Bayes Classifiers
- K-NN (k nearest neighbors)
- Decision Trees
- Support Vector Machine


## Unsupervised Learning
$X = \{ x_i \} ^N_{i=1}$   There is no $y_i$ label

Unsupervised learning is the training of a machine using information that is neither classified nor labeled and allowing the algorithm to act on that information without guidance. Here the task of the machine is to group unsorted information according to similarities, patterns, and differences without any prior training of data. 

Unlike supervised learning, no teacher is provided that means no training will be given to the machine. Therefore the machine is restricted to find the hidden structure in unlabeled data by itself.

Unsupervised learning is classified into two categories of algorithms: 

- **Clustering**: A clustering problem is where you want to discover the inherent groupings in the data, such as grouping customers by purchasing behavior.
- **Association**: An association rule learning problem is where you want to discover rules that describe large portions of your data, such as people that buy X also tend to buy Y.

* #### Clustering
	* A technique used to group similar data points together.
	* Definition $x = {x_i}^{N}_{i=1}$
	* Fitting best rectangle
	* Risk asymmetry
	* Model selection

---
# Lec 02 - Supervised Learning
### Family Car Example:

$$
X = \{ (x_i, y_i)\}_{i=1}^{N}  \ \ \ \ \ \ \ \ \ \ \ \ \


x_i = \left[ \begin{array}{c}
x_{i1} \ \ \ \text{price} \\
 \ x_{i2} \ \ \ \text{power}
\end{array} \right]

$$
---
# Lec 03 & 04 - Parametric Methods

### What are parametric and non-parametric methods?
Parametrics methods are used for problems in which we assume a specific distribution, most of the times we assume a normal distribution with mean $\mu$ and variance $\sigma^2$.

On the other hand, in non-parametric methods we don't assume any distribution. They are also called distribution-free methods.
### Density Estimation
Density estimation aims to find the underlying probability density function (PDF) from the observed data, assuming a distribution.

$$
x_i \sim p(x_i) \ \ \ \forall i \ \ \ p(\ .)=?
$$
For example, if we use the normal distribution as our function, we need to find two paramters $\sigma^2$ and $\mu$ .

#### Maximum Likelihood Estimation (MLE)
MLE is a special case of density estimation where we aim to find the parameters $\theta$ that maximize the likelihood function $L(\theta)$ The likelihood function represents the likelihood of the observed data $X$ given the parameters $\theta$:

$$L(\theta)=p(X|\theta)$$

MLE estimates $\theta$ by maximizing this function, i.e., we find the value of $\theta$ that makes the observed data most probable.
$$
\mu_{MLE} = \text{simply the average of the points}
$$
$$
\sigma^2_{\text{MLE}} = \frac{1}{n} \sum_{i=1}^{n} (x_i - \mu)^2
$$
#### Maximum A Posteriori (MAP)
MAP goes one step further by incorporating prior beliefs or information $p(\theta)$ about the parameters $\theta$. It estimates the parameters $\theta$ by maximizing the posterior density function, which is calculated using Bayes' theorem:

$$
p(\theta|X) = \frac{p(X|\theta)\ \\p(\theta)}{p(X)}
$$

Here $p(X|\theta)$is the likelihood, $p(\theta)$ is the prior, and $p(X)$ is the evidence (a normalizing constant). MAP estimates are a compromise between the **prior information** and the **likelihood** of the data.




---
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

