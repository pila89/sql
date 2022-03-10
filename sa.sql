CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY , 
    Product_Name VARCHAR2(20) CONSTRAINT nt_product NOT NULL,
    Price NUMBER CONSTRAINT ck_product CHECK (price>0) );


CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY, 
    Customer_Name VARCHAR2(20) CONSTRAINT nt_customer NOT NULL , 
    Customer_Tel NUMBER 
    );


CREATE TABLE Orders ( 
    CONSTRAINT fk_customer FOREIGN KEY (Costumer_id) REFERENCES Customer (Costumer_id) ,
    CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product (Product_id) , 
    Quantity Number ,Total_amount NUMBER 
    );


ALTER TABLE Product ADD Category (VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate (DATE) DEFAULT SYSDATE;
