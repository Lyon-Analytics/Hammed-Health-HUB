--CREATE PATIENTS TABLE 

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    address VARCHAR(200),
    date_of_birth DATE NOT NULL,
    insurance VARCHAR(30),
    username VARCHAR(20) UNIQUE,
    password VARCHAR(20) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone_number VARCHAR(15) UNIQUE
);

--VIEW TABLE 
SELECT * FROM Patients;




-- CREATE DOCTORS TABLE 

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    specialization VARCHAR(50),
    license_number CHAR(10) UNIQUE NOT NULL,
    years_of_experience INT CHECK (years_of_experience >= 0)
);


-- CREATE MEDICAL RECORDS TABLE 

CREATE TABLE Medical_records (
    medical_record_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT NOT NULL FOREIGN KEY REFERENCES Patients(patient_id),
    doctor_id INT NOT NULL FOREIGN KEY REFERENCES Doctors(doctor_id),
    past_appointment_date DATE,
    current_appointment_date DATE,
    diagnoses VARCHAR(100),
    medicine VARCHAR(200),
    allergies VARCHAR(200)
);



-- CREATE APPOINTMENTS TABLE 

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT NOT NULL FOREIGN KEY REFERENCES Patients(patient_id),
    doctor_id INT NOT NULL FOREIGN KEY REFERENCES Doctors(doctor_id),
    status_report VARCHAR(200),
    feedback VARCHAR(200),
    appointment_date DATE NOT NULL
);



--CREATE DEPARTMENTS TABLE 

CREATE TABLE Departments (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(50) NOT NULL,
    doctor_id INT FOREIGN KEY REFERENCES Doctors(doctor_id)
);





-- INSERTING VALUES INTO PATIENTS TABLE 

INSERT INTO Patients (first_name, last_name, address, date_of_birth, insurance, username, password, email, phone_number)
VALUES
('Adeola','Balogun','12 Allen Avenue, Ikeja, Lagos','1990-05-21','AXA Mansard','adebalogun','pass123','adebalogun@gmail.com','08031234567'),
('Chinedu','Okafor','22 Admiralty Way, Lekki, Lagos','1985-11-15','Hygeia','chineduo','okafor85','chineduokafor@gmail.com','08029876543'),
('Aisha','Abdullahi','18 Opebi Road, Ikeja, Lagos','1992-02-10','NHIS','aishaabd','abdullahi92','aishaabd@gmail.com','08142345678'),
('Femi','Ogunleye','5 Bode Thomas, Surulere, Lagos','1988-09-09','Leadway','femiogun','fem88','femiogunleye@gmail.com','08121234567'),
('Ngozi','Eze','33 Broad Street, Marina, Lagos','1995-03-28','AXA Mansard','ngoziwe','eze95','ngozieze@gmail.com','08056781234'),
('Yakubu','Musa','44 Obafemi Awolowo Way, Ikeja, Lagos','1982-12-02','Hygeia','yakubm','ym82','yakubmusa@gmail.com','08099887766'),
('Kemi','Adeniran','9 Glover Road, Ikoyi, Lagos','1991-06-14','NHIS','kemiad','ka91','kemiadeniran@gmail.com','08044332211'),
('Samuel','Ojo','3 Herbert Macaulay Way, Yaba, Lagos','1987-01-23','Leadway','samueloj','so87','samuelojo@gmail.com','08165443322'),
('Grace','Udo','7 Awolowo Road, Ikoyi, Lagos','1993-08-19','AXA Mansard','graceud','gu93','graceudo@gmail.com','08134566789'),
('Bola','Adeyemi','55 Adeniran Ogunsanya, Surulere, Lagos','1989-10-30','Hygeia','bolaad','ba89','bolaadeyemi@gmail.com','08055443322'),
('Ifeanyi','Okeke','14 Awka Road, Ikeja, Lagos','1984-07-12','NHIS','ifeok','io84','ifeanyiokeke@gmail.com','08177889900'),
('Maryam','Suleiman','10 Isaac John Street, Ikeja GRA, Lagos','1996-02-28','Leadway','marysul','ms96','maryamsuleiman@gmail.com','08166778899'),
('Tosin','Adekunle','21 Eric Moore Road, Surulere, Lagos','1983-05-16','AXA Mansard','tosinad','ta83','tosinadekunle@gmail.com','08033445522'),
('Chiamaka','Nwankwo','11 Carter Bridge Road, Lagos Island','1994-11-04','Hygeia','chiamnw','cn94','chiamakanwankwo@gmail.com','08199887766'),
('Hassan','Garba','8 Ijaiye Road, Ogba, Lagos','1986-03-09','NHIS','hassgar','hg86','hassangarba@gmail.com','08066778899'),
('Tunde','Olatunji','16 Idumota Street, Lagos Island','1981-08-24','Leadway','tundeol','to81','tundeolatunji@gmail.com','08122334455'),
('Ruth','Agbaje','27 Adeniyi Jones, Ikeja, Lagos','1997-09-18','AXA Mansard','ruthag','ra97','ruthagbaje@gmail.com','08111223344'),
('Kelvin','Ighalo','19 Adeola Odeku, Victoria Island','1992-12-30','Hygeia','kelving','ki92','kelvinighalo@gmail.com','08022334455'),
('Fatima','Bello','2 Ijora Road, Apapa, Lagos','1989-04-07','NHIS','fatbel','fb89','fatimabello@gmail.com','08077889911'),
('Emmanuel','Johnson','6 Tafawa Balewa Square, Lagos Island','1985-06-20','Leadway','emmaj','ej85','emmanueljohnson@gmail.com','08155667788');



-- INSERTING VALUES INTO DOCTORS TABLE 

INSERT INTO Doctors (first_name, last_name, specialization, license_number, years_of_experience)
VALUES
('Ibrahim','Lawal','Cardiology','DOC1234567',10),
('Olufunke','Adewale','Pediatrics','DOC2345678',7),
('Emeka','Nwosu','Orthopedics','DOC3456789',12),
('Halima','Yusuf','Dermatology','DOC4567890',5),
('Tunde','Akinola','Neurology','DOC5678901',15),
('Chioma','Okeke','Oncology','DOC6789012',9),
('Bashir','Ahmed','Psychiatry','DOC7890123',6),
('Funmilayo','Osho','General Surgery','DOC8901234',14),
('Peter','Idowu','Endocrinology','DOC9012345',8),
('Amina','Garba','Gynecology','DOC1122334',11),
('Seyi','Adebanjo','Radiology','DOC2233445',13),
('Henry','Oputa','ENT','DOC3344556',4),
('Khadija','Aliyu','Pulmonology','DOC4455667',7),
('Sunday','Oluwole','Gastroenterology','DOC5566778',10),
('Rasheed','Ogun','Nephrology','DOC6677889',15),
('Amaka','Chukwu','Ophthalmology','DOC7788990',6),
('Mustapha','Ibrahim','Hematology','DOC8899001',8),
('Victoria','Ekanem','Family Medicine','DOC9900112',9),
('Uche','Eze','Plastic Surgery','DOC1011223',5),
('Esther','Bamidele','Urology','DOC2022334',12);


--VIEW DOCTORS TABLE 

SELECT * FROM Doctors;



--INSERTING VALUES INTO DEPARTMENTS TABLE 

INSERT INTO Departments (department_name, doctor_id)
VALUES
('Cardiology',1),
('Pediatrics',2),
('Orthopedics',3),
('Dermatology',4),
('Neurology',5),
('Oncology',6),
('Psychiatry',7),
('General Surgery',8),
('Endocrinology',9),
('Gynecology',10),
('Radiology',11),
('ENT',12),
('Pulmonology',13),
('Gastroenterology',14),
('Nephrology',15),
('Ophthalmology',16),
('Hematology',17),
('Family Medicine',18),
('Plastic Surgery',19),
('Urology',20);

--VIEW DEPARTMEENTS 

SELECT * FROM Departments



-- INSERTING VALUES INTO APPOINTMENTS TABLE 

INSERT INTO Appointments (patient_id, doctor_id, status_report, feedback, appointment_date)
VALUES
(1,1,'Stable, under review','Patient improving','2024-06-15'),
(2,2,'Fever reduced','Continue meds','2024-06-18'),
(3,3,'Joint pain persists','Physio recommended','2024-06-20'),
(4,4,'Skin irritation cleared','Avoid allergens','2024-06-22'),
(5,5,'Seizures controlled','Follow-up in 3 months','2024-06-25'),
(6,6,'Tumor shrinking','Chemotherapy ongoing','2024-06-26'),
(7,7,'Anxiety improved','Therapy helping','2024-06-28'),
(8,8,'Surgery recovery','Healing well','2024-06-29'),
(9,9,'Diabetes stable','Monitor sugar','2024-07-01'),
(10,10,'Pregnancy checkup','Normal','2024-07-03'),
(11,11,'X-ray clear','No issues','2024-07-05'),
(12,12,'Ear infection treated','Cleared','2024-07-06'),
(13,13,'Asthma improved','Continue inhaler','2024-07-07'),
(14,14,'Ulcer managed','Avoid spicy food','2024-07-08'),
(15,15,'Kidney stable','Drink more water','2024-07-10'),
(16,16,'Vision improved','Update glasses','2024-07-12'),
(17,17,'Anemia improving','Iron supplements','2024-07-13'),
(18,18,'Routine check','Healthy','2024-07-14'),
(19,19,'Plastic surgery healing','Follow-up needed','2024-07-15'),
(20,20,'Urinary tract infection cleared','Hydration advice','2024-07-16');


-- VIEW APPOINTMENTS TABLE 

SELECT * FROM Appointments;


-- INSERTING RECORDS INTO MEDICAL RECORDS TABLE 

INSERT INTO Medical_records (patient_id, doctor_id, past_appointment_date, current_appointment_date, diagnoses, medicine, allergies)
VALUES
(1,1,'2024-05-10','2024-06-15','Hypertension','Amlodipine','None'),
(2,2,'2024-05-12','2024-06-18','Malaria','Artemether-Lumefantrine','Penicillin'),
(3,3,'2024-05-18','2024-06-20','Arthritis','Ibuprofen','None'),
(4,4,'2024-05-22','2024-06-22','Eczema','Hydrocortisone cream','Dust'),
(5,5,'2024-05-25','2024-06-25','Epilepsy','Carbamazepine','Seafood'),
(6,6,'2024-05-30','2024-06-26','Breast Cancer','Tamoxifen','None'),
(7,7,'2024-06-01','2024-06-28','Depression','Sertraline','None'),
(8,8,'2024-06-03','2024-06-29','Appendicitis','Post-op antibiotics','None'),
(9,9,'2024-06-05','2024-07-01','Diabetes','Metformin','None'),
(10,10,'2024-06-08','2024-07-03','Pregnancy','Prenatal vitamins','None'),
(11,11,'2024-06-10','2024-07-05','Fracture','Painkillers','None'),
(12,12,'2024-06-12','2024-07-06','Ear Infection','Amoxicillin','Penicillin'),
(13,13,'2024-06-14','2024-07-07','Asthma','Salbutamol','Dust'),
(14,14,'2024-06-15','2024-07-08','Ulcer','Omeprazole','None'),
(15,15,'2024-06-16','2024-07-10','Kidney Disease','ACE inhibitors','None'),
(16,16,'2024-06-17','2024-07-12','Cataract','Eye drops','None'),
(17,17,'2024-06-18','2024-07-13','Anemia','Iron tablets','None'),
(18,18,'2024-06-19','2024-07-14','General checkup','Multivitamins','None'),
(19,19,'2024-06-20','2024-07-15','Rhinoplasty follow-up','Painkillers','None'),
(20,20,'2024-06-21','2024-07-16','UTI','Ciprofloxacin','Sulfa drugs');

-- VIEW MEDICAL RECORDS TABLE 

SELECT * FROM Patients;

SELECT * FROM Doctors;

SELECT * FROM Departments;

SELECT * FROM Appointments;

SELECT * FROM Medical_records;













































