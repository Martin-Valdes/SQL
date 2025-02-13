CREATE VIEW vista_consultas AS
SELECT 
    p.id AS patient_id,
    p.name AS patient_name,
    p.dni AS patient_dni,
    c.date AS consultation_date,
    c.notes AS consultation_notes,
    d.name AS doctor_name,
    d.rol AS doctor_role,
    d.specialty AS doctor_specialty
FROM 
    Patient p
JOIN 
    Consultation c ON p.id = c.patientid
JOIN 
    Doctor d ON c.doctorid = d.id;