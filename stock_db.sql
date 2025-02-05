CREATE DATABASE stock_db;

USE stock_db;

CREATE TABLE stock_ticker
(Name VARCHAR(100) NOT NULL,
Symbol VARCHAR(30), 
Sector VARCHAR(50),
`Market Cap` VARCHAR(20),
Country VARCHAR(20),
Industry VARCHAR(50),
date date,
primary key(Symbol, Country, date));

ALTER TABLE stock_ticker MODIFY COLUMN Name VARCHAR(255);
ALTER TABLE stock_ticker MODIFY COLUMN Country VARCHAR(255);
ALTER TABLE stock_ticker MODIFY COLUMN Industry VARCHAR(255);

create table stock_price
(
    Date date,
    High double,
    Low double,
    Open double,
    Close double,
    Volume double,
    ticker varchar(20),
    primary key(Date, ticker)
);

SELECT *
FROM stock_price;