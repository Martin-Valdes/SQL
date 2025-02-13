DELIMITER $$

CREATE FUNCTION contar_consultas_por_paciente(p_patientid INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE consultas_count INT;
    
    SELECT COUNT(*) INTO consultas_count
    FROM Consultation
    WHERE patientid = p_patientid;
    
    RETURN consultas_count;
END $$

DELIMITER ;
