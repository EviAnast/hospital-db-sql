-- 1. Find patients with more than 2 prescriptions
SELECT full_name, COUNT(*) AS prescription_count
FROM Patients p
JOIN Prescriptions pr ON p.patient_id = pr.patient_id
GROUP BY full_name
HAVING COUNT(*) > 2;

-- 2. Upcoming appointments
SELECT a.appointment_date, p.full_name AS patient, d.full_name AS doctor
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE a.appointment_date > CURRENT_DATE;

-- 3. Top prescribing doctors
SELECT d.full_name, COUNT(*) AS total_prescriptions
FROM Doctors d
JOIN Prescriptions p ON d.doctor_id = p.doctor_id
GROUP BY d.full_name
ORDER BY total_prescriptions DESC;
