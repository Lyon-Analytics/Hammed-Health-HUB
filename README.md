# Hammed Health Hub

## Project Description
The Hammed Health Hub is a conceptual database designed to manage and organize essential medical information for a healthcare facility. This project provides a foundational SQL schema for handling patient records, doctor information, appointments, and hospital departments. It is ideal for developers, database administrators, and students who want to understand the basics of relational database design in a healthcare context.

## Features
Patients: Stores demographic information, contact details, and login credentials for patients.

Doctors: Manages information about doctors, including their specializations and professional licenses.

Departments: Organizes doctors into specific departments, such as Cardiology, Pediatrics, and more.

Appointments: Tracks patient appointments with doctors, including status reports and feedback.

Medical Records: Maintains a history of patient diagnoses, medications, and allergies.

---

## Table-by-Table Breakdown

### Database Schema
The database is composed of five interconnected tables:

## 1. Patients Table
This table is the central hub for patient information. It contains identifying details and contact information.

Primary Key: patient_id `(INT)`

This is a unique, auto-incrementing identifier for each patient, ensuring that every record is distinct.

Constraints:

first_name and last_name: `NOT NULL` to ensure we always have a patient's name.

username, email, and phone_number: `UNIQUE` to prevent duplicate accounts and contact details, which is crucial for a user-facing system.

password: `NOT NULL` is a basic security measure, although in a real-world application, this would be hashed and not stored in plain text.

## 2. Doctors Table
This table stores all professional information for the doctors.

Primary Key: doctor_id `(INT)`

A unique, auto-incrementing identifier for each doctor.

Constraints:

first_name and last_name: `NOT NULL`.

license_number: `UNIQUE NOT NULL` is a vital constraint, as each doctor must have a unique, non-null license number.

years_of_experience: CHECK (years_of_experience >= 0) is a good example of a business rule constraint, ensuring that the years of experience value is logical.

## 3. Departments Table
This table provides a way to categorize doctors by their specialty. It links a doctor_id to a department_name.

Primary Key: department_id `(INT)`

A unique, auto-incrementing identifier for each department.

Foreign Key: doctor_id

This key links back to the Doctors table. It establishes a one-to-many relationship, meaning one doctor can be in multiple departments, but the provided schema implies a one-to-one relationship by linking a department to a single doctor. A more flexible design for a real-world scenario might have a separate junction table to allow a many-to-many relationship (a doctor can work in multiple departments, and a department can have multiple doctors).

## 4. Appointments Table
This table is crucial for managing the logistics of patient-doctor interactions.

Primary Key: appointment_id `(INT)`

A unique, auto-incrementing identifier for each appointment.

Foreign Keys:

patient_id: Links to the Patients table.

doctor_id: Links to the Doctors table.

Constraints:

appointment_date: `NOT NULL` ensures that every appointment has a specified date.

Denormalization (for efficiency): The status_report and feedback fields are directly on this table, which is a common practice to quickly access information related to a specific appointment without a join.

## 5. Medical_records Table
This table serves as the historical record of a patient's health information.

Primary Key: medical_record_id `(INT)`

A unique, auto-incrementing identifier for each medical record.

Foreign Keys:

patient_id: Links to the Patients table.

doctor_id: Links to the Doctors table.

Data Integrity: This table is a great example of how foreign keys enforce data integrity. An appointment record or medical record cannot exist without a valid patient and doctor ID.

---

## Sample Data
The `Hammed_Health_Hub.sql` file also includes `INSERT INTO` statements to populate these tables with sample data. This is useful for testing the database structure and for demonstrating how data would be stored in a real-world scenario. The data, such as patient and doctor names, addresses, and diagnoses, makes the database immediately usable and understandable.

## Getting Started
To use this database schema, simply run the Hammed_Health_Hub.sql script in a SQL environment (like SQL Server, MySQL, or PostgreSQL). The script will create all the necessary tables and populate them with sample data.

## Contributions
If you find this project useful and would like to contribute, feel free to fork the repository and submit a pull request with your suggested improvements.

