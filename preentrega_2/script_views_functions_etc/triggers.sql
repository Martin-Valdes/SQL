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

-- Trigger 3: Registrar el estado anterior de una consulta en la tabla de auditoría
CREATE TRIGGER audit_consultation_state
BEFORE UPDATE ON consultation
FOR EACH ROW
BEGIN
    -- Guardar el estado anterior solo si realmente cambia
    IF OLD.state <> NEW.state THEN
        -- Verificar si el estado ya ha sido registrado en la auditoría
        IF NOT EXISTS (
            SELECT 1
            FROM consultation_audit
            WHERE consultation_id = OLD.id AND previous_state = OLD.state
        ) THEN
            INSERT INTO consultation_audit (consultation_id, previous_state, change_date)
            VALUES (OLD.id, OLD.state, NOW());
        END IF;
    END IF;
END $$

DELIMITER ;

