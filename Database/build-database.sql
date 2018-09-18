CREATE SCHEMA IF NOT EXISTS brumdb;
USE brumdb;

CREATE TABLE IF NOT EXISTS customers (
  id INT NOT NULL,
  customerName VARCHAR(255) NOT NULL,
  dob DATE NOT NULL,
  address VARCHAR(255) NOT NULL,
  occupation VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  gender CHAR(1) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));

CREATE TABLE IF NOT EXISTS cars (
  id INT NOT NULL,
  make VARCHAR(255) NULL,
  model VARCHAR(255) NULL,
  series VARCHAR(255) NULL,
  seriesYear VARCHAR(255) NULL,
  priceNew VARCHAR(255) NULL,
  engineSize VARCHAR(255) NULL,
  fuelSystem VARCHAR(255) NULL,
  tankCapacity VARCHAR(255) NULL,
  power VARCHAR(255) NULL,
  seatingCapacity VARCHAR(255) NULL,
  standardTransmission VARCHAR(255) NULL,
  bodyType VARCHAR(255) NULL,
  drive VARCHAR(255) NULL,
  wheelbase VARCHAR(255) NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));
  
CREATE TABLE IF NOT EXISTS stores (
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
  creationDate DATE NULL,
  pickupDate DATE NULL,
  pickupStore INT NULL,
  returnDate DATE NULL,
  returnStore INT NULL,
  PRIMARY KEY (id),
  INDEX customerID_idx(customerID ASC),
  INDEX carID_idx(carID ASC),
  INDEX pickupStore_idx(pickupStore ASC),
  INDEX returnStore_idx(returnStore ASC),
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
  CONSTRAINT pickupStore
    FOREIGN KEY (pickupStore)
    REFERENCES Stores(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT returnStore
    FOREIGN KEY (returnStore)
    REFERENCES Stores(id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);