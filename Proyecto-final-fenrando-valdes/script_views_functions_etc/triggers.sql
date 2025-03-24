DELIMITER $$

-- Trigger 1: Actualizar algo relacionado con la consulta, sin utilizar last_consultation_date
CREATE TRIGGER log_new_consultation
AFTER INSERT ON consultation
FOR EACH ROW
BEGIN
    INSERT INTO consultation_log (patient_id, consultation_id, created_at)
    VALUES (NEW.patient_id, NEW.id, NOW());
END;


-- Trigger 2: Eliminar las consultas asociadas cuando se elimina un paciente
CREATE TRIGGER delete_consultations_when_patient_deleted
BEFORE DELETE ON patient
FOR EACH ROW
BEGIN
    -- Eliminar todas las consultas asociadas a este paciente
    DELETE FROM consultation
    WHERE patient_id = OLD.id;
END $$

DELIMITER ;
