
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
a)
$$
Q_1 =\sigma_{Dname=Sales}(\text{Department})
$$

$$
Q_2 = \sigma_{Bdate>01/01/1990}(\text{Employee})
$$
$$
\pi_{\text{Fname, Bdate, Address, Salary}}(Q_1\bowtie_{Dnumber=Dno} Q_2)
$$

b)
Employees in DP project
$$
Employees
\bowtie
\sigma_{Pname='DataPrivacy'}(Project)
$$

$$

\bowtie
\sigma_{Dnumber=8}(\text{Department})
$$