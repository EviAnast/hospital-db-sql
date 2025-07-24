CREATE TABLE Patients (
  patient_id INT PRIMARY KEY,
  full_name VARCAHR(100),
  birth_date DATE,
  gender VARCHAR(10),
  address TEXT
);

CREATE TABLE Doctors (
  doctor_id INT PRIMARY KEY,
  full_name VARCHAR(100),
  specialty VARCHAR(50),
  phone_number VARCHAR(15)
);

CREATE TABLE Appointments (
  appointment_id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  appointment_date DATE,
  reason TEXT,
  FOREING KEY (patient_id) REFERENCES Patients(patient_id),
  FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    date_prescribed DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
