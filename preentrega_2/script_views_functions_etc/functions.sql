DELIMITER $$

-- Función para contar las consultas de un doctor específico
CREATE FUNCTION count_consultations_by_doctor(p_doctor_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_consultations INT;

    SELECT COUNT(*) INTO total_consultations
    FROM consultation
    WHERE p_doctor_id = doctor_id;

    RETURN total_consultations;
END $$

-- Función para contar los pacientes de un doctor específico
CREATE FUNCTION count_patients_by_doctor(p_doctor_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_patients INT;

    SELECT COUNT(DISTINCT patient_id) INTO total_patients
    FROM consultation
    WHERE p_doctor_id = doctor_id;

    RETURN total_patients;
END $$

-- Función para obtener la fecha de la última consulta de un paciente
CREATE FUNCTION get_last_consultation_date(p_patient_id INT)
RETURNS DATE
DETERMINISTIC
BEGIN
    DECLARE last_consultation_date DATE;

    SELECT MAX(date) INTO last_consultation_date
    FROM consultation
    WHERE p_patient_id = patient_id;

    RETURN last_consultation_date;
END $$

DELIMITER ;
