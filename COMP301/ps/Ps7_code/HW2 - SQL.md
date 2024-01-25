## Q1
command: `use world;`
![[Pasted image 20231210183955.png]]

## Part A: Country and City Information
Command:
```sql
SELECT Country.Code, Country.Name, City.Name, City.Population
FROM Country, City
WHERE Country.Code = City.CountryCode
AND Country.LifeExpectancy > 75
AND Country.Population < 1000000;
```
Result:
![[Pasted image 20231210184826.png]]

### Part B: Cities in German-Speaking Countries
```sql
SELECT Country.Code, City.Name
FROM Country
JOIN City ON Country.Code = City.CountryCode
JOIN CountryLanguage ON Country.Code = CountryLanguage.CountryCode
WHERE City.Population < 90000
AND CountryLanguage.Language = 'German'
AND CountryLanguage.Percentage > 1;
```
![[Pasted image 20231210185021.png]]

## Q3
### Part A: the names of countries and their capitals, where the number of spoken languages is greater than 10.
```sql
SELECT Country.Name, City.Name AS Capital, COUNT(CountryLanguage.Language) AS NumberOfLanguages
FROM Country
JOIN City ON Country.Capital = City.ID
JOIN CountryLanguage ON Country.Code = CountryLanguage.CountryCode
GROUP BY Country.Name, City.Name
HAVING COUNT(CountryLanguage.Language) > 10;
```
![[Pasted image 20231210224352.png]]

### Part B: For countries that have more than 30 cities, display the name of the country along with the number of cities that country has. The result should be displayed in descending order of the number of cities
```sql
SELECT Country.Name, COUNT(City.Name) AS NumberOfCities
FROM Country
JOIN City ON Country.Code = City.CountryCode
GROUP BY Country.Name
HAVING COUNT(City.Name) > 30
ORDER BY COUNT(City.Name) DESC;
```
![[Pasted image 20231210224411.png]]

### Part C: For countries in which Turkish is one of the spoken languages and the average GNP is higher than 80000, display the name of that country along with the total number of languages spoken in that country.
```sql
SELECT Country.Name, Country.GNP, COUNT(CountryLanguage.Language) AS NumberOfLanguages
FROM Country
JOIN CountryLanguage ON Country.Code = CountryLanguage.CountryCode
WHERE CountryLanguage.Language = 'Turkish' AND Country.GNP > 80000
GROUP BY Country.Name, Country.GNP;
```
![[Pasted image 20231210224429.png]]
## Q4
#### A)
```sql
CREATE TABLE restaurant (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  rating INT CHECK(rating BETWEEN 1 AND 5)
);
```
![[Pasted image 20231210230159.png]]
#### B)
```sql
INSERT INTO restaurant (id, name, type, rating) VALUES
(1, 'Alex Emre Restaurant', 'Italian', 3),
(2, 'El Taquito Loco', 'Mexican', 4),
(3, 'The Greek Taverna', 'Greek', 5),
(4, 'The Wok Inn', 'Chinese', 2),
(5, 'La Pizzeria Bella', 'Italian', 4),
(6, 'The Tap House', 'Pub Food', 1),
(7, 'Bao Bun House', 'Asian Fusion', 4),
(8, 'The Vegan Kitchen', 'Barbecue', 4),
(9, 'La Brasserie Belge', 'Belgian', 4),
(10, 'The Smokestack BBQ', 'Barbecue', 4),
(11, 'Sushi Island', 'Japanese', 3),
(12, 'Smoke Master', 'BBQ', 2);
```
![[Pasted image 20231210230801.png]]


#### C)
```sql
UPDATE restaurant
SET type = 'Vegan'
WHERE name = 'The Vegan Kitchen';
```
![[Pasted image 20231210230814.png]]
#### D)
```sql
DELETE FROM restaurant
WHERE name LIKE '%Smoke%';
```
![[Pasted image 20231210230826.png]]

## Q5
#### A)
```sql
CREATE TABLE city_restaurant (
  restaurant_id INT,
  city_id INT,
  PRIMARY KEY (restaurant_id, city_id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurant(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY (city_id) REFERENCES city(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
```
![[Pasted image 20231210230839.png]]

#### B) 
```sql
LOAD DATA INFILE 'city_restaurant.txt'
INTO TABLE city_restaurant
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(restaurant_id, city_id);
```
![[Pasted image 20231210232437.png]]
#### C)
```sql
SELECT c.id, c.name
FROM city AS c
JOIN city_restaurant AS cr ON c.id = cr.city_id
GROUP BY c.id, c.name
HAVING COUNT(cr.restaurant_id) > 1;

```
![[Pasted image 20231210232602.png]]
#### D)
```sql
SELECT r.id, r.name
FROM restaurant AS r
JOIN city_restaurant AS cr ON r.id = cr.restaurant_id
JOIN city AS c ON cr.city_id = c.id
WHERE c.name = 'Manchester'
AND r.id NOT IN (
  SELECT r.id
  FROM restaurant AS r
  JOIN city_restaurant AS cr ON r.id = cr.restaurant_id
  JOIN city AS c ON cr.city_id = c.id
  WHERE c.name = 'Liverpool'
);
```
![[Pasted image 20231210232617.png]]
#### E)
```sql
UPDATE restaurant AS r
JOIN city_restaurant AS cr ON r.id = cr.restaurant_id
JOIN city AS c ON cr.city_id = c.id
SET r.rating = r.rating - 1
WHERE c.name = 'Baku';
```
![[Pasted image 20231210232630.png]]

#### F)
```sql
SELECT r.id, r.name
FROM restaurant AS r
JOIN city_restaurant AS cr ON r.id = cr.restaurant_id
JOIN city AS c ON cr.city_id = c.ID
JOIN country AS co ON c.CountryCode = co.Code
WHERE co.Name = 'Azerbaijan'
GROUP BY r.id, r.name
HAVING COUNT(DISTINCT c.ID) >= 2;
```
![[Pasted image 20231210232824.png]]

#### G)
```sql
SELECT co.Code, co.Name
FROM country AS co
LEFT JOIN city AS c ON co.Code = c.CountryCode
LEFT JOIN city_restaurant AS cr ON c.ID = cr.city_id
WHERE cr.restaurant_id IS NULL
GROUP BY co.Code, co.Name;
```
![[Pasted image 20231210235501.png]]
The list goes on...
### Q6
```
mysqldump -u root -p root world > 'C:\Users\murat\Desktop\HW2\'
```
