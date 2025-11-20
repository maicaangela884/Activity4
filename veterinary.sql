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

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES  (1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
        (2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
        (3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
        (4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
        (5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
        (6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES  (1, 1, 50.00, '09:30:00'),
        (2, 2, 75.00, '14:15:00'),
        (3, 3, 100.00, '11:00:00'),
        (4, 4, 200.00, '13:45:00'),
        (5, 5, 80.00, '10:30:00'),
        (6, 6, 30.00, '15:00:00'),
        (7, 7, 75.00, '09:15:00'),
        (8, 8, 150.00, '16:30:00'),
        (9, 9, 60.00, '14:45:00'),
        (10, 10, 40.00, '11:30:00');    

INSERT INTO medicalrecords(recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES  (1, 1, '2023-01-05 00:00:00', 1,'Health check', 'N/A', 'Regular checkup, no issue detected'),
        (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X','Administered vaccination X as per schedule'),
        (3, 3, '2023-02-02 00:00:00', 3,'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
        (4, 4, '2023-02-15 00:00:00', 1,'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
        (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
        (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment','Administered flea treatment'),
        (7, 7, '2023-04-12 00:00:00', 1,'Vaccination', 'Vaccine Y','Administered vaccination Y as per schedule'),
        (8, 8, '2023-04-18 00:00:00', 5,'Spaying', 'N/A', 'Successfully performed spaying surgery'),
        (9, 9, '2023-05-02 00:00:00', 4,'Allergic reaction', 'Antihistamines','Allergic reaction due to food prescribed antihistamine'),
        (10, 10,'2023-05-20 00:00:00', 6,'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD COLUMN registereddate DATE;

ALTER TABLE invoices 
RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM appointments
WHERE appointid = 3;

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE doctorid = 4;

SELECT DISTINCT species FROM animals;

SELECT SUM(totalamount) FROM invoices;

SELECT COUNT(*) AS total_appointments
FROM appointments
WHERE ownerid = 8;

SELECT a.name, COUNT(ap.appointid) AS most_appointments
FROM animals a
JOIN appointments ap ON a.animalid = ap.animalid
GROUP BY a.name
ORDER BY most_appointments DESC
LIMIT 1;