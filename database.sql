CREATE SCHEMA IF NOT EXISTS brumdb;
USE brumdb;


CREATE TABLE IF NOT EXISTS Customers (
  id INT NOT NULL,
  lastName VARCHAR(45) NOT NULL,
  firstName VARCHAR(45) NOT NULL,
  dob DATE NOT NULL,
  streetNo INT NOT NULL,
  streetName VARCHAR(45) NOT NULL,
  suburbName VARCHAR(45) NOT NULL,
  postcode INT(4) NOT NULL,
  gender CHAR(1) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));

CREATE TABLE IF NOT EXISTS Cars (
  id INT NOT NULL,
  make VARCHAR(45) NULL,
  model VARCHAR(45) NULL,
  series VARCHAR(45) NULL,
  seriesYear VARCHAR(45) NULL,
  priceNew VARCHAR(45) NULL,
  engineSize VARCHAR(45) NULL,
  fuelSystem VARCHAR(45) NULL,
  tankCapacity VARCHAR(45) NULL,
  power VARCHAR(45) NULL,
  seatingCapacity VARCHAR(45) NULL,
  standardTransmission VARCHAR(45) NULL,
  bodyType VARCHAR(45) NULL,
  drive VARCHAR(45) NULL,
  wheelbase VARCHAR(45) NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));

CREATE TABLE IF NOT EXISTS Stores (
  id INT NOT NULL,
  storeName VARCHAR(45) NULL,
  storeAddress VARCHAR(45) NULL,
  phoneNo VARCHAR(45) NULL,
  city VARCHAR(45) NULL,
  state VARCHAR(45) NULL,
  PRIMARY KEY (id));

CREATE TABLE IF NOT EXISTS Bookings (
  id INT NOT NULL,
  customerID INT NULL,
  carID INT NULL,
  storeID INT NULL,
  creationDate DATE NULL,
  PRIMARY KEY (id),
  INDEX customerID_idx(customerID ASC),
  INDEX carID_idx(carID ASC),
  INDEX storeID_idx(storeID ASC),
  CONSTRAINT customerID
    FOREIGN KEY (customerID)
    REFERENCES Customers(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT carID
    FOREIGN KEY (carID)
    REFERENCES Cars(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT storeID
    FOREIGN KEY (storeID)
    REFERENCES Stores(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Pickups (
  pickupID INT NOT NULL,
  pickupDate DATE NULL,
  PRIMARY KEY (pickupID),
  CONSTRAINT pickupID
    FOREIGN KEY (pickupID)
    REFERENCES Bookings(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS Returns (
  returnID INT NOT NULL,
  returnDate DATE NULL,
  PRIMARY KEY (returnID),
  CONSTRAINT returnID
    FOREIGN KEY (returnID)
    REFERENCES Bookings(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT * FROM Bookings;


#Requires local_infile enabled
#LOAD DATA LOCAL INFILE 'C:\Users\Kylie\Google Drive\Uni\2018-2\IFB299 - IT Project Design and Development\Assignment\Copy of CarRentalDataSourceN.csv'
#    INTO TABLE `Cars`
#    FIELDS TERMINATED BY ','
#    LINES TERMINATED BY '\n'
#    IGNORE 1 LINES
#    (@orderid, @ordercreate, @pickupdate, @pickupstore, @storename, @storeaddr, @storeph, @storecity, @storestate, @returndate, @returnstore, @storename, @storeaddr, @storeph, @storecity, @storestate, @custid, @custname, @custph, @custaddr, @custdob, @custocc, @custsex,
#    id, make, model, series, seriesYear, priceNew, engineSize, fuelSystem, tankCapacity, 
#    power, seatingCapacity, standardTransmission, bodyType, drive, wheelbase);