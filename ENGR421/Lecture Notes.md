# Lec 01 - Introduction

* Parameters and hyperparameters
* Formal definiton of Machine Learning
* Supervised Learning
* Error measureing metrics, rmse 
## Supervised Learning
A machine learning technique where the algorithm is trained on labeled data. The input data will come with an output label.
* ### Classification
	* Binary Classification: # of classes 2
		* Good, Bad customers in bank credit applications
		* Feature engineering: Which data is relevant?
	* Multiclass Classification: # of classes > 2
* ### Regression
	* Definiton $x = {(x_i, y_i)}^{N}_{i=1} y_i \sigma R$ 
	* Forecasting
	* Is there training in regresssion? I thought it was just a mathematial question# Lec - 02


## Unsupervised Learning
No Class Labels!
Algorithms trained on unlabelled data. It tries to learn the underlying structure from the input data.
* #### Clustering
	* A technique used to group similar data points together.
	* Definition $x = {x_i}^{N}_{i=1}$
	* No labels
	* Fitting best rectangle
	* Risk asymmetry
	* Model selection

# Lec 02 - Supervised Learning
* Rectangle fitting for the Family Car Example
* Learning: Finsing the best $\theta$, where theta is $\theta = {(p1, p2, e1, e2)}$
* Theta values are also  called the model parameters

# Lec 03 - Parametric Methods
### Density Estimation
	Finding a distribution with specified paramters that fits the given data.
	The parameters are learned from the training data
	One Example is single dimensional classification

#### Maximum Likelihood Estimation (MLE)

