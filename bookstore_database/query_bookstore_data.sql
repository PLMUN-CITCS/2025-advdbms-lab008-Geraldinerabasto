USE `BookstoreDB`;

SELECT `c`.`Name` AS `CustomerName`, `o`.`OrderDate`, `b`.`Title` AS `BookTitle`, `od`.`Quantity`
FROM `Customers` `c`
JOIN `Orders` `o` ON `c`.`CustomerID` = `o`.`CustomerID`
JOIN `OrderDetails` `od` ON `o`.`OrderID` = `od`.`OrderID`
JOIN `Books` `b` ON `od`.`ISBN` = `b`.`ISBN`;
DELETE FROM `OrderDetails` WHERE `OrderID` = 1 AND `ISBN` = '9780321765723';

SELECT * FROM `OrderDetails` WHERE `OrderID` = 1;
SELECT `a`.`Name` AS `AuthorName`, `b`.`Title` AS `BookTitle`
FROM `Authors` `a`
JOIN `BookAuthors` `ba` ON `a`.`AuthorID` = `ba`.`AuthorID`
JOIN `Books` `b` ON `ba`.`ISBN` = `b`.`ISBN`;
SELECT `c`.`Name` AS `CustomerName`
FROM `Customers` `c`
JOIN `Orders` `o` ON `c`.`CustomerID` = `o`.`CustomerID`
JOIN `OrderDetails` `od` ON `o`.`OrderID` = `od`.`OrderID`
JOIN `Books` `b` ON `od`.`ISBN` = `b`.`ISBN`
JOIN `BookAuthors` `ba` ON `b`.`ISBN` = `ba`.`ISBN`
JOIN `Authors` `a` ON `ba`.`AuthorID` = `a`.`AuthorID`
WHERE `a`.`Name` = 'Douglas Adams'; -- Change author name as needed
