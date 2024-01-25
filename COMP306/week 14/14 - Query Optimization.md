- Operator Pushdown


## Equivalence Rules
### Cascading of selections
$$
\sigma_{c_1 \land \ldots \land c_n} (R) \equiv \sigma_{c_1} ( \ldots (\sigma_{c_n} (R)))
$$
### Commutiataion of selections
$$
\sigma_{c_1}(\sigma_{c_2}(R)) \equiv \sigma_{c_2}(\sigma_{c_1}(R))
$$
### Joins and Cross Products are commutative
$$
(R \times S) \equiv (S \times R)
(R \bowtie S) \equiv (S \bowtie R)
$$
### Joins and Cross Products are also associative
$$
\begin{align}
& R \times (S \times T) \equiv (R \times S) \times T \\
& R \bowtie (S \bowtie T) \equiv (R \bowtie S) \bowtie T \\
& \text{It follows: } \\
& R \bowtie (S \bowtie T) \equiv (T \bowtie R) \bowtie S
\end{align}
$$

### Selection + Cross Product = Join
$$
R \bowtie_c T \equiv \sigma_c (R \times S)
$$

### Commutation of selection with cross product and join
If c appears only in R but not in S.
$$
\begin{align}
&\sigma_c (R \times S) \equiv \sigma_c (R) \times S \\
&\sigma_c (R \bowtie S) \equiv \sigma_c (R) \bowtie S
\end{align}
$$

### Following commutation of selection w/ cross product
$$
\begin{align}
\sigma_c (R \times S) &\equiv \sigma_{c_1 \land c_2 \land c_3} (R \times S) \\
&\equiv \sigma_{c_1} ( \sigma_{c_2} ( \sigma_{c_3} (R \times S))) \\
&\equiv \sigma_{c_1} ( \sigma_{c_2} (R) \times \sigma_{c_3} (S))
\end{align}
$$
