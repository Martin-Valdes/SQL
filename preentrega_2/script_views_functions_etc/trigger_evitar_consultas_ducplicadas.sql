DELIMITER $$

CREATE TRIGGER evitar_consultas_duplicadas
BEFORE INSERT ON Consultation
FOR EACH ROW
BEGIN
    DECLARE consulta_existente INT;
    
    -- Verificar si ya existe una consulta para el mismo paciente y doctor en la misma fecha
    SELECT COUNT(*) INTO consulta_existente
    FROM Consultation
    WHERE patientid = NEW.patientid 
      AND doctorid = NEW.doctorid
      AND date = NEW.date;
    
    -- Si la consulta ya existe, se lanza un error
    IF consulta_existente > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ya existe una consulta para este paciente y doctor en la misma fecha';
    END IF;
END $$

DELIMITER ;