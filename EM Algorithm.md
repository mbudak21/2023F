Dataset: **Unsupervised**
$$
\mathcal{X} = \set{x_i}_{i=1}^{N} 
$$
Likelihood:
$$
\mathcal{L}(\Phi|\mathcal{X}) = \prod_{i=1}^N p(\mathbf{x}_i | \Phi)
$$
$$
log(\mathcal{L}(\Phi|\mathcal{X})) = \sum_{i=1}^N \log \left( \sum_{k=1}^K p(\mathbf{x}_i | C_k) \, Pr(C_k) \right)
$$
**We have two sets of random variables:**
1. $z=$ cluster memberships (hidden variables)
2. $\Phi=$ parameters: $(\boldsymbol{\mu}_1, \boldsymbol{\mu}_2, \ldots, \boldsymbol{\mu}_K, \Sigma_1, \Sigma_2, \ldots, \Sigma_K)$

## **E-step:**
$$
E[ \mathcal{L} (\Phi | \mathcal{X}, \mathcal{Z}) | \mathcal{X}, \Phi^{(t)}]
$$
## **M-Step:** 
$$
\Phi^{(t+1)} = \underset{\Phi}{\text{arg max }} E\left[\mathcal{L}(\Phi | \mathcal{X}, \mathcal{Z}) | \mathcal{X}, \Phi^{(t)}\right]
$$


