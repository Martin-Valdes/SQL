-- Vista 1: Consultas con información del doctor y del paciente
CREATE VIEW view_consultations AS
SELECT 
    c.id AS consultation_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    c.date,
    c.notes
FROM 
    consultation c
JOIN 
    patient p ON c.patient_id = p.id
JOIN 
    doctor d ON c.doctor_id = d.id;

-- Vista 2: Historial médico de pacientes
CREATE VIEW view_medical_history AS
SELECT 
    mh.id AS history_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    mh.details,
    c.date AS consultation_date
FROM 
    medicalhistory mh
JOIN 
    patient p ON mh.patient_id = p.id
JOIN 
    doctor d ON mh.doctor_id = d.id
JOIN 
    consultation c ON mh.consultation_id = c.id;

-- Vista 3: Recetas por consulta
CREATE VIEW view_recipes AS
SELECT 
    r.id AS recipe_id,
    p.name AS patient_name,
    d.name AS doctor_name,
    r.description,
    c.date AS consultation_date
FROM 
    recipe r
JOIN 
    consultation c ON r.consultation_id = c.id
JOIN 
    patient p ON c.patient_id = p.id
JOIN 
    doctor d ON c.doctor_id = d.id;
