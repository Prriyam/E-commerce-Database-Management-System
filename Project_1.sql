SELECT * FROM `CUSTOMER`; --
SELECT * FROM `ORDER`; --
SELECT * FROM `PRODUCT`; --
SELECT * FROM `PAYMENT`; --
SELECT * FROM `PAYMENT_TYPE`; --
SELECT * FROM `CITY`; --
SELECT * FROM `STATE`; --
SELECT * FROM `SELLER`; --
SELECT * FROM `SELLER_DETAILS`; --


SELECT MAX(`Loyalty Discount`) - MIN(`Loyalty Discount`) AS `Range` FROM `CUSTOMER`;


SELECT *
  FROM `CUSTOMER`
  WHERE `CUSTOMER ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
	AND  `FIRST NAME` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
    AND  `LAST NAME` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
    AND  `ADDRESS` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
    AND  `ZIP CODE` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
    AND  `PHONE NUMBER` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
    AND  `EMAIL ADDRESS` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
    AND  `CITY ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
    AND  `LOYALTY DISCOUNT` REGEXP '^[0-9]+\\.?[0-9]*$' = '0';


SELECT *
FROM `CITY`
WHERE `CITY ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
  AND `CITY` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
  AND `STATE ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' ;
       
SELECT *
FROM `STATE`
WHERE `STATE ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
  AND `STATE` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'  ;

SELECT *
FROM `SELLER_DETAILS`
WHERE `SELLER ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
	   AND `BRAND NAME` REGEXP '^[0-9]+\\.?[0-9]*$' = '1' 
       AND `SELLER CONTACT NAME` REGEXP '^[0-9]+\\.?[0-9]*$' = '1' 
       AND `SELLER ADDRESS` REGEXP '^[0-9]+\\.?[0-9]*$' = '1' 
       AND `SELLER ZIP CODE` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
       AND `SELLER PHONE` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
       AND `SELLER EMAIL` REGEXP '^[0-9]+\\.?[0-9]*$' = '1'
       AND `CITY ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0';

SELECT *
FROM `SELLER`
WHERE `PRODUCT ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
  AND `SELLER ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' ;

SELECT *
FROM `PRODUCT`
WHERE `PRODUCT ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
	AND `PRODUCT NAME` REGEXP '^[0-9]+\\.?[0-9]*$' = '1' 
	AND `PRICE PER UNIT` REGEXP '^[0-9]+\\.?[0-9]*$' = '0';
       
SELECT *
FROM `PAYMENT_TYPE`
WHERE `TRANSACTION ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
   AND `PAYMENT TYPE ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' ;
              
SELECT *
FROM `PAYMENT`
WHERE `TRANSACTION ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
	AND `PAYMENT TYPE ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'  ;       

SELECT *
FROM `ORDER`
WHERE `ORDER ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
	   AND `ORDER DATE` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
       AND `CUSTOMER ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
       AND `PRODUCT ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
       AND `TRANSACTION ID` REGEXP '^[0-9]+\\.?[0-9]*$' = '0' 
       AND `UNITS IN ORDER` REGEXP '^[0-9]+\\.?[0-9]*$' = '0'
       AND `ORDER TOTAL` REGEXP '^[0-9]+\\.?[0-9]*$' = '0';

SELECT *
FROM `CUSTOMER`
WHERE `Customer ID` IS NULL 
	   or `FIRST NAME` IS NULL 
       or `LAST NAME` IS NULL 
       or `ADDRESS` IS NULL 
       or `ZIP CODE` IS NULL 
       or `PHONE NUMBER` IS NULL 
       or `EMAIL ADDRESS` IS NULL
       or `CITY ID` IS NULL
       or `LOYALTY DISCOUNT` IS NULL;


SELECT *
FROM `SELLER`
WHERE `PRODUCT ID` IS NULL 
	   or `SELLER ID` IS NULL ;
       
SELECT *
FROM `PRODUCT`
WHERE `PRODUCT ID` IS NULL 
	   or `PRODUCT NAME` IS NULL 
       or `PRICE PER UNIT` IS NULL;

SELECT *
FROM `CITY`
WHERE `CITY ID` IS NULL 
	   or `CITY` IS NULL 
       or `STATE ID` IS NULL ; 
       
SELECT *
FROM `STATE`
WHERE `STATE ID` IS NULL 
	   or `STATE` IS NULL ;
       
SELECT *
FROM `SELLER_DETAILS`
WHERE `SELLER ID` IS NULL 
	   or `BRAND NAME` IS NULL 
       or `SELLER CONTACT NAME` IS NULL 
       or `SELLER ADDRESS` IS NULL 
       or `SELLER ZIP CODE` IS NULL 
       or `SELLER PHONE` IS NULL 
       or `SELLER EMAIL` IS NULL
       or `CITY ID` IS NULL;

SELECT *
FROM `ORDER`
WHERE `ORDER ID` IS NULL 
	   or `ORDER DATE` IS NULL 
       or `CUSTOMER ID` IS NULL 
       or `PRODUCT ID` IS NULL 
       or `TRANSACTION ID` IS NULL 
       or `UNITS IN ORDER` IS NULL 
       or `ORDER TOTAL` IS NULL;

SELECT *
FROM `PAYMENT_TYPE`
WHERE `TRANSACTION ID` IS NULL 
	   or `PAYMENT TYPE ID` IS NULL ;
       
SELECT *
FROM `PAYMENT`
WHERE `TRANSACTION ID` IS NULL 
	   or `PAYMENT TYPE ID` IS NULL ;
       

DELETE FROM `product`;

DROP TABLE `SELLER_DETAILS`;

SELECT c.`Customer ID` FROM `customer` AS c;

drop table `SELLER`;

SELECT * FROM `o.ORDER`;

SELECT o.`Order ID`, o.`Order Date`, c.`Customer ID`, c.`First Name`, c.`Last Name`, c.`Address`, 
	   c.`Zip Code`,c.`Phone Number`, c.`Email Address`,ci.`City`, st.`State`, c.`Loyalty Discount`, o.`Units in Order`, o.`Order Total`,
       pay.`Transaction ID`, pt.`Payment Type` AS `Payment Mode`
FROM `CUSTOMER` AS c
JOIN `ORDER` AS o
ON o.`Customer ID` = c.`Customer ID`
JOIN `CITY` AS ci
ON ci.`City ID` = c.`City ID`
JOIN `STATE` AS st
ON st.`State ID` = ci.`State ID`
JOIN `PAYMENT`AS pay
ON o.`Transaction ID` = pay.`Transaction ID`
JOIN `PAYMENT_TYPE` AS pt
ON pay.`Payment Type ID` = pt.`Payment Type ID`
WHERE o.`Order ID` = '109805';

SELECT o.`Order ID`,p.`Product ID`, p.`Product Name`, p.`Price Per Unit`
FROM  `ORDER` AS o
JOIN `PRODUCT` AS p
ON o.`Product ID` = p.`Product ID`
WHERE o.`Order ID` = '109805';

SELECT DISTINCT sd.`Seller ID`, sd.`Brand Name`, sd.`Seller Contact Name`, 
       sd.`Seller Address`, sd.`Seller Zip Code`, sd.`Seller Phone`, sd.`Seller Email`, ci.`City`, st.`State`
FROM `SELLER` AS s
JOIN `PRODUCT` AS p
ON p.`Product ID` = s.`Product ID`
JOIN `SELLER_DETAILS` AS sd
ON s.`Seller ID` = sd.`Seller ID`
JOIN `CITY` AS ci
ON ci.`City ID` = sd.`City ID`
JOIN `STATE` AS st
ON st.`State ID` = ci.`State ID`
WHERE sd.`Brand Name` = 'CavinKare';

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Payment_Type` (
  `Payment Type ID` DOUBLE NOT NULL,
  `Payment Type` VARCHAR(45) NULL,
  PRIMARY KEY (`Payment Type ID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`State` (
  `State ID` DOUBLE NOT NULL,
  `State` VARCHAR(45) NULL,
  PRIMARY KEY (`State ID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Customer` (
  `Customer ID` DOUBLE NOT NULL,
  `First Name` VARCHAR(45) NULL,
  `Last Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Zip Code` DOUBLE NULL,
  `Phone Number` DOUBLE NULL,
  `Email Address` VARCHAR(45) NULL,
  `City ID` DOUBLE NOT NULL,
  `Loyalty Discount` FLOAT NULL,
  PRIMARY KEY (`Customer ID`, `City ID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`City` (
  `City ID` DOUBLE NOT NULL,
  `City` VARCHAR(45) NULL,
  `State ID` DOUBLE NOT NULL,
  PRIMARY KEY (`City ID`, `State ID`),
  INDEX `State ID_idx` (`State ID` ASC) VISIBLE,
  CONSTRAINT `State ID`
    FOREIGN KEY (`State ID`)
    REFERENCES `ecommerce_database`.`State` (`State ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Order` (
  `Order ID` DOUBLE NOT NULL,
  `Order Date` DATE NULL,
  `Customer ID` DOUBLE NULL,
  `Product ID` DOUBLE NULL,
  `Transaction ID` DOUBLE NOT NULL,
  `Units in Order` INT NULL,
  `Order Total` FLOAT NULL,
  PRIMARY KEY (`Order ID`, `Transaction ID`),
  INDEX `Product ID_idx` (`Product ID` ASC) VISIBLE,
  INDEX `Customer ID_idx` (`Customer ID` ASC) VISIBLE,
  CONSTRAINT `Product ID`
    FOREIGN KEY (`Product ID`)
    REFERENCES `ecommerce_database`.`Product` (`Product ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Customer ID`
    FOREIGN KEY (`Customer ID`)
    REFERENCES `ecommerce_database`.`Customer` (`Customer ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Product` (
  `Product ID` DOUBLE NOT NULL,
  `Product Name` VARCHAR(45) NULL,
  `Price Per Unit` FLOAT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Payment` (
  `Transaction ID` DOUBLE NOT NULL,
  `Payment Type ID` DOUBLE NOT NULL,
  PRIMARY KEY (`Transaction ID`, `Payment Type ID`),
  INDEX `Payment Type ID_idx` (`Payment Type ID` ASC) VISIBLE,
  CONSTRAINT `Payment Type ID`
    FOREIGN KEY (`Payment Type ID`)
    REFERENCES `ecommerce_database`.`Payment_Type` (`Payment Type ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Seller_Details` (
  `Seller ID` DOUBLE NOT NULL,
  `Brand Name` VARCHAR(45) NULL,
  `Seller Contact Name` VARCHAR(45) NULL,
  `Seller Address` VARCHAR(45) NULL,
  `Seller Zip Code` DOUBLE NULL,
  `Seller Phone` DOUBLE NULL,
  `Seller Email` VARCHAR(45) NULL,
  `City ID` DOUBLE NULL,
  PRIMARY KEY (`Seller ID`),
  INDEX `City ID_idx` (`City ID` ASC) VISIBLE,
  CONSTRAINT `City ID`
    FOREIGN KEY (`City ID`)
    REFERENCES `ecommerce_database`.`City` (`City ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `ecommerce_database`.`Seller` (
  `Product ID` DOUBLE NOT NULL,
  `Seller ID` DOUBLE NOT NULL,
  PRIMARY KEY (`Product ID`, `Seller ID`),
  INDEX `Seller ID_idx` (`Seller ID` ASC) VISIBLE,
  CONSTRAINT `Seller ID`
    FOREIGN KEY (`Seller ID`)
    REFERENCES `ecommerce_database`.`Seller_Details` (`Seller ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Product ID1`
    FOREIGN KEY (`Product ID`)
    REFERENCES `ecommerce_database`.`Product` (`Product ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
