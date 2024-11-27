DROP DATABASE if exists CarDealershipDatabase; 

create database CarDealershipDatabase;

use CarDealershipDatabase;

drop table if exists dealerships;
drop table if exists vehicles;
drop table if exists inventory;
drop table if exists sales_contracts;
drop table if exists lease_contracts;



CREATE TABLE dealerships(
dealership_id int auto_increment primary key,
`name` varchar(50),
address varchar(50),
phone varchar(12)
);




CREATE TABLE vehicles(
vin int primary key,
`year` int,
make varchar(50),
model varchar(50),
vehicleType varchar(50),
color varchar(50),
odometer int,
price float,
sold boolean 
);



CREATE TABLE inventory(
dealership_id int primary key references dealerships,
VIN varchar(50)
);



CREATE TABLE sales_contracts(
sales_contracts_ID int auto_increment primary key,
salesTaxAmount float,
recordingFee float,
processingFee float,
financeOption float,
vin varchar(50) references vehicle
);



CREATE TABLE lease_contracts(
lease_contracts_ID int auto_increment primary key,
expectedEndingValue float,
leaseFee float,
vin varchar(50) references vehicle
);

