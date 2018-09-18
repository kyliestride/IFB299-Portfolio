USE brumdb;

INSERT IGNORE INTO cars (
id,
make,
model,
series,
seriesYear,
priceNew,
engineSize,
fuelSystem,
tankCapacity,
power,
seatingCapacity,
standardTransmission,
bodyType,
drive,
wheelbase)
SELECT  
Car_ID, 
Car_MakeName,
Car_Model,
Car_Series,
Car_SeriesYear,
Car_PriceNew,
Car_EngineSize,
Car_FuelSystem,
Car_TankCapacity,
Car_Power,
Car_SeatingCapacity,
Car_StandardTransmission,
Car_BodyType,
Car_Drive,
Car_Wheelbase FROM sourcecentral;

INSERT IGNORE INTO cars (
id,
make,
model,
series,
seriesYear,
priceNew,
engineSize,
fuelSystem,
tankCapacity,
power,
seatingCapacity,
standardTransmission,
bodyType,
drive,
wheelbase)
SELECT  
Car_ID, 
Car_MakeName,
Car_Model,
Car_Series,
Car_SeriesYear,
Car_PriceNew,
Car_EngineSize,
Car_FuelSystem,
Car_TankCapacity,
Car_Power,
Car_SeatingCapacity,
Car_StandardTransmission,
Car_BodyType,
Car_Drive,
Car_Wheelbase FROM sourcestore;
    
INSERT IGNORE INTO customers (
id,
customerName,
dob,
address,
occupation,
gender,
phone)
SELECT  
Customer_ID, 
Customer_Name,
Customer_Brithday,
Customer_Addresss,
Customer_Occupation,
Customer_Gender,
Customer_Phone FROM sourcecentral;
    
INSERT IGNORE INTO customers (
id,
customerName,
dob,
address,
occupation,
gender,
phone)
SELECT  
Customer_ID, 
Customer_Name,
Customer_Brithday,
Customer_Addresss,
Customer_Occupation,
Customer_Gender,
Customer_Phone FROM sourcestore;

INSERT IGNORE INTO stores (
id,
storeName,
storeAddress,
phoneNo,
city,
state)
SELECT
﻿Store_ID,
Store_Name,
Store_Address,
Store_Phone,
Store_City,
Store_State_Name FROM sourcestore;

INSERT IGNORE INTO bookings (
id,
customerID,
carID,
creationDate,
pickupDate,
pickupStore,
returnDate,
returnStore)
SELECT
﻿Order_ID,
Customer_ID,
Car_ID,
Order_CreateDate,
Order_PickupDate,
Order_PickupStore,
Order_ReturnDate,
Order_ReturnStore FROM sourcecentral;