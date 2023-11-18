![[WhatsApp Image 2023-11-17 at 22.55.43 1.jpeg]]
```SQLite
CREATE TABLE BOOK
(ISBN: INT,
 price: INT, 
 title: CHAR(50), 
 frontCoverType: CHAR(50),
 numberOfPages: INT,
 PRIMARY KEY (ISBN),

 -- BUYS relationship
 PaymentMethod: CHAR(50),
 PurchaseDate: CHAR(50)
 CID: INT,
 FOREIGN KEY (CID) REFERENCES (CUSTOMER)

 -- BORROWS relationship
 BorrowDate: CHAR(50),
 ReturnDate: CHAR(50),
 RegisteredCustomerID: INT,
 FOREIGN KEY (RegisteredCustomerID) 
	 REFERENCES (REGISTERED_CUSTOMER)
)

CREATE TABLE AUTHOR
(ID: INT,
 name: CHAR(50),
 PRIMARY KEY (ID)
)

CREATE TABLE WRITTEN_BY
(BOOK_ISBN: INT,
 AUTHOR_ID: INT,
 FOREIGN KEY (BOOK_ISBN) REFERENCES (BOOK),
 FOREIGN KEY (AUTHOR_ID) REFERENCES (AUTHOR),
 PRIMARY KEY (BOOK_ISBN, AUTHOR_ID)
)

CREATE TABLE CUSTOMER
(ID: INT,
 name: CHAR(50),
 PRIMARY KEY (ID),
)

-- Multivalued email
CREATE TABLE CUSTOMER_EMAIL
(CID: INT,
 EMAIL_ADDRESS: CHAR(50),
 PRIMARY KEY (CID, EMAIL_ADDRESS)
 FOREIGN KEY (CID), REFERENCES (CUSTOMER)
)

CREATE TABLE REGISTERED_CUSTOMER
(ID: INT,
 reg_date: CHAR(50),
 PRIMARY KEY (ID),
 FOREIGN KEY (ID) REFERENCES (CUSTOMER)
)

CREATE TABLE VISITING_CUSTOMER
(ID: INT, 
 address: CHAR(50),
 phoneNumber: INT,
 PRIMARY KEY (ID),
 FOREIGN KEY (ID) REFERENCES (CUSTOMER)
)
```


**Q3**
**a)**
$$
Q_1 =\sigma_{Dname=Sales}(\text{Department})
$$

$$
Q_2 = \sigma_{Bdate>01/01/1990}(\text{Employee})
$$
$$
\pi_{\text{Fname, Bdate, Address, Salary}}(Q_1\bowtie_{Dnumber=Dno} Q_2)
$$

**b)**
$$
\pi_
{\text{Fname, Minit, Lname}}
	
(\sigma_
	{\text{Dnum} = 8 \wedge \text{Hours} > 20 \wedge \text{Pname} = 'DataPrivacy'} 
(
\text{Employee} 
\bowtie _{Ssn=Essn}
\text{Works\_On}
\bowtie _{Pno=Pnumber}
\text{Project}))
$$


**c)**

Every Project Controlled By Departmen number 5:
$$
Q_1 =(\sigma_{Dnumber=5}\text{ Department})
\bowtie_{\text{Dnumber=Dnum}}
\text{Project}
$$
All Employees who work on $Q_2$:
$$
Q_2 = 
\text{Employee}
\bowtie_{Ssn=Essn}
\text{WorksOn}
\bowtie_{Pno=Pnumber}
Q_1
$$
Answer:
$$
\pi_{\text{Lname, Salary}}(Q_2) 
$$
**d)**
$$
\pi_{\text{Lname Salary Super.Lname}}{
(\rho_{12 \rightarrow \text{Super.Lname}}{
(\text{Employee} - \pi_{\text{Ssn}}(\text{Employee} \bowtie_{\text{Ssn}=\text{Essn}} \text{WorksOn}))
\bowtie_{SuperSsn=Ssn}
\text{Employee}})
}
$$

**e)**
$$
\pi_{\text{Dname}} (\sigma_{\text{Location} = 'Istanbul'} (\text{Dept\_Locations})) \cup \pi_{\text{Dname}} (\sigma_{\text{Plocation} = 'Istanbul'} (\text{Project} \bowtie \text{Department}))
$$

**f)**
$$
\pi_{\text{Pnumber}} (\sigma_{\text{E.Lname} = 'Gursoy' \wedge \text{M.Lname} = 'Gursoy'} (\text{Employee AS E} \bowtie \text{Works\_On} \bowtie \text{Project} \bowtie \text{Department} \bowtie \text{Employee AS M}))
$$

**g)**
$$
\pi_{\text{Lname, Salary}} (\sigma_{\text{Mgr\_start\_date} = (\pi_{\text{MAX(Mgr\_start\_date)}} (\text{Department}))} (\text{Employee} \bowtie \text{Department}))
$$

**h)**
$$
\pi_{\text{Fname, Lname}} (\sigma_{\text{E1.Bdate} < \text{E2.Bdate} \wedge \text{E1.Ssn} = \text{E2.Super\_Ssn}} (\text{Employee AS E1} \bowtie \text{Employee AS E2}))
$$
