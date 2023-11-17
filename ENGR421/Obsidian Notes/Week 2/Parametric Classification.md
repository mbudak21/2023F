
![[Pasted image 20231107223759.png]]  

$g_c:$ [[Score function]] for class $c$

$$
g_c(x)=log.Pr(y=c|x)
$$
Bayes Theorem:
$$
Pr(y=c|x) = \frac{p(x|y=c)Pr(y=c)}{p(x)}
$$

In here:
$p(x|y=c):$ Is the pdf of class $c$. Assuming class $c$ is the correct one, what is the probability of point $x$ being on class $c$?
$Pr(y=c):$ Prior of class $c$, frequency of class $c$
$p(x):$ A normalizing constant which is not needed for the scoring functions. The evidence $p(x)$ is the probability of observing the data $x$ under all possible hypotheses weighted by their probabilities. So: $\sum_{c=1}^{K}{p(x|y=c)Pr(y=c)}$




