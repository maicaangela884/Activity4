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

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES (1 'Max', 'Dog', 'Beagle', '2015-03-12', 'Male', 'Tricolor', 11),
        (2, 'Bella', 'Cat', 'Maine Coon', '2019-09-05', 'Female', 'Brown Tabby', 12),
        (3, 'Charlie', 'Dog', 'Corgi', '2018-01-22', 'Male', 'Tan/White', 13),
        (4, 'Cleo', 'Cat', 'Sphynx', '2021-04-16', 'Female', 'Pink', 14),
        (5, 'Zeus', 'Dog', 'Doberman', '2014-10-09', 'Male', 'Black/Tan', 15),
        (6, 'Willow', 'Cat', 'Ragdoll', '2020-12-03', 'Female', 'Cream/Gray', 16),
        (7, 'Buster', 'Dog', 'Boxer', '2013-07-19', 'Male', 'Fawn', 17),
        (8, 'Nori', 'Cat', 'Bengal', '2022-02-11', 'Female', 'Spotted Brown', 18),
        (9, 'Simba', 'Dog', 'Chow Chow', '2016-11-08', 'Male', 'Red', 19),
        (10, 'Pepper', 'Cat', 'American Shorthair', '2017-05-27', 'Female', 'Silver Tabby', 20);

INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES (1, 01, '2025-11-16', 'Check up'),
        (2, 02, '2025-11-17', 'Vaccination'),
        (3, 03, '2025-11-18', 'Grooming'),
        (4, 04, '2025-11-19', 'Vaccination'),
        (5, 05, '2025-11-20', 'Deworming'),
        (6, 06, '2025-11-21', 'X-ray'),
        (7, 07, '2025-11-22', 'Dental Cleaning'),
        (8, 08, '2025-11-23', 'Check up'),
        (9, 09, '2025-11-24', 'Flea Treatment'),
        (10, 10, '2025-11-25', 'Blood Test');

