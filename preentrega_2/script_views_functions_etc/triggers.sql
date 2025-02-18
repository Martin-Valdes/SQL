DELIMITER $$

-- Trigger 1: Actualizar algo relacionado con la consulta, sin utilizar last_consultation_date
CREATE TRIGGER update_last_consultation_date
AFTER INSERT ON consultation
FOR EACH ROW
BEGIN
    -- Aquí puedes agregar otro comportamiento en lugar de actualizar last_consultation_date
    -- Por ejemplo, podrías agregar alguna lógica relacionada con la consulta
    -- Actualmente no estamos actualizando ninguna columna en patient
    -- Puedes agregar otro comportamiento o simplemente dejarlo vacío si no es necesario
END $$

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
