-- Procedimiento 1: Registrar una nueva consulta y su historial
DELIMITER $$

CREATE PROCEDURE register_consultation(
    IN patient_id INT,
    IN doctor_id INT,
    IN consultation_date DATE,
    IN notes TEXT,
    IN details TEXT
)
BEGIN
    DECLARE new_consultation_id INT;

    -- Insertar la nueva consulta
    INSERT INTO consultation (patient_id, doctor_id, date, notes)
    VALUES (patient_id, doctor_id, consultation_date, notes);

    -- Obtener el ID de la consulta recién insertada
    SET new_consultation_id = LAST_INSERT_ID();

    -- Insertar el historial médico asociado
    INSERT INTO medicalhistory (patient_id, doctor_id, consultation_id, details)
    VALUES (patient_id, doctor_id, new_consultation_id, details);
END $$

-- Procedimiento 2: Actualizar el estado de una consulta
CREATE PROCEDURE update_consultation_status(
    IN consultation_id INT,
    IN new_notes TEXT
)
BEGIN
    -- Actualizar las notas de la consulta
    UPDATE consultation
    SET notes = CONCAT('Status updated: ', new_notes, ' at ', NOW())
    WHERE id = consultation_id;
END $$

-- Procedimiento 3: Obtener todas las consultas de un paciente
CREATE PROCEDURE get_patient_consultations(
    IN patient_id INT
)
BEGIN
    -- Seleccionar todas las consultas de un paciente
    SELECT c.id, c.date, c.notes, d.name AS doctor_name
    FROM consultation c
    JOIN doctor d ON c.doctor_id = d.id
    WHERE c.patient_id = patient_id;
END $$

DELIMITER ;