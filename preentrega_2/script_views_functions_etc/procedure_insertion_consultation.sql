CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_paciente_y_consulta`(
    IN p_name VARCHAR(100),
    IN p_age INT,
    IN p_email VARCHAR(100),
    IN p_dni INT,
    IN p_doctorid INT,
    IN p_date DATE,
    IN p_notes VARCHAR(255)
)
BEGIN
    -- Declarar variables
    DECLARE new_patient_id INT;

    -- Insertar un nuevo paciente
    INSERT INTO Patient (name, age, email, dni)
    VALUES (p_name, p_age, p_email, p_dni);

    -- Obtener el id del paciente recién insertado
    SET new_patient_id = LAST_INSERT_ID();

    -- Insertar una nueva consulta
    INSERT INTO Consultation (patientid, doctorid, date, notes)
    VALUES (new_patient_id, p_doctorid, p_date, p_notes);
END