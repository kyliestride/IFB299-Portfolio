CREATE SCHEMA IF NOT EXISTS brumdb CHARACTER SET utf8;
USE brumdb;

CREATE TABLE IF NOT EXISTS customers (
  id INT NOT NULL,
  customerName VARCHAR(50) NOT NULL,
  dob DATE NOT NULL,
  address VARCHAR(75) NOT NULL,
  occupation VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL CHECK (gender IN('M', 'F', 'O')),
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));

CREATE TABLE IF NOT EXISTS cars (
  id INT NOT NULL,
  make VARCHAR(50) NULL,
  model VARCHAR(50) NULL,
  series VARCHAR(50) NULL,
  seriesYear INT(4) NULL,
  priceNew INT(8) NULL,
  engineSize VARCHAR(5) NULL,
  fuelSystem VARCHAR(50) NULL,
  tankCapacity VARCHAR(8) NULL,
  power VARCHAR(8) NULL,
  seatingCapacity INT(2) NULL,
  standardTransmission VARCHAR(8) NULL,
  bodyType VARCHAR(50) NULL,
  drive VARCHAR(8) NULL,
  wheelbase VARCHAR(8) NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC));
  
CREATE TABLE IF NOT EXISTS stores (
  id INT NOT NULL,
  storeName VARCHAR(50) NULL,
  storeAddress VARCHAR(50) NULL,
  phoneNo VARCHAR(50) NULL,
  city VARCHAR(50) NULL,
  state VARCHAR(50) NULL,
  PRIMARY KEY (id));

CREATE TABLE IF NOT EXISTS Bookings (
  id INT NOT NULL,
  customerID INT NOT NULL,
  carID INT NOT NULL,
  creationDate DATE NOT NULL,
  pickupDate DATE NOT NULL,
  pickupStore INT NULL,
  returnDate DATE NOT NULL,
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