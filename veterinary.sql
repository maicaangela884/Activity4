CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);


CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors(
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE invoices(
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount NUMERIC(10,2),
    paymentdate TIME,
    FOREIGN (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords(
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP, 
    doctorid INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN (animalid) references animals(animalid),
    FOREIGN (doctorid) references doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES (1, 'Shenna', 'Bellen', 'Japan', 09223456789, 'bellen@gmail.com' ),
        (2, 'Jim John', 'Ebreo', 'Rosario', 09123456789, 'ebreo@gmail.com'),
        (3, 'Angel', 'Dinglasan', 'Adya', 09268065006, 'angeldinglasan@gmail.com'),
        (4, 'Andrei Son', 'Castillo', 'Plaridel', 09510108106, 'andreicastillo@gmail.com'),
        (5, 'Edna', 'Dinglasan', 'Bicol', 09525257895, 'edna@gmail.com'),
        (6, 'Hannah', 'Cuevas', 'Cuenca', 09623456789, 'cuevas@gmail.com'),
        (7, 'Monica', 'Pornela', 'BSU', 09723456789, 'pornela@gmail.com'),
        (8, 'Maica', 'Del Rosario', 'Taga-Bundok', 09845618923, 'maicadr@gmail.com'),
        (9, 'Baeverly', 'Eroles', 'San Jose', 09926567833, 'Baeverlyeroles@gmail.com'),
        (10, 'Jhon Rhey', 'Tenorio', 'Taga sa kanila', 09133456789, 'tenors@gmail.com');

