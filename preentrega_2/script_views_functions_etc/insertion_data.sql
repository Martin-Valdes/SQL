-- Insertar datos en la tabla 'doctor'
INSERT INTO doctor (id, name, dni, rol, email, phone, specialty)
VALUES 
(1, 'Dr. Juan Pérez', 12345678, 'Cardiólogo', 'juan.perez@email.com', 123456789, 'Cardiología'),
(2, 'Dra. María Gómez', 23456789, 'Pediatra', 'maria.gomez@email.com', 987654321, 'Pediatría');

-- Insertar datos en la tabla 'usuario'
INSERT INTO patient (id, name, age, email, dni)
VALUES 
(1, 'Carlos López', 30, 'carlos.lopez@email.com', 34567890),
(2, 'Ana Martínez', 25, 'ana.martinez@email.com', 45678901);

-- Insertar datos en la tabla 'consultas'
INSERT INTO consultation (id, patientid, doctorid, date, notes)
VALUES 
(1, 1, 1, '2025-02-13', 'Chequeo general.'),
(2, 2, 2, '2025-02-14', 'Consulta de seguimiento de vacunación.');

-- Insertar datos en la tabla 'historial_medico'
INSERT INTO medicalhistory (id, patientid, doctorid, consultationid, details)
VALUES 
(1, 1, 1, 1, 'Paciente con buen estado de salud, sin complicaciones.'),
(2, 2, 2, 2, 'Paciente en seguimiento para vacunas y controles pediátricos.');

-- Insertar datos en la tabla 'historial_medico_mensajes'
INSERT INTO notification (id, consultationid, message, sentat)
VALUES 
(1, 1, 'Consulta realizada con éxito, pendiente revisión de resultados.', '2025-02-13'),
(2, 2, 'Seguimiento programado para la próxima semana.', '2025-02-14');

-- Insertar datos en la tabla 'recetas'
INSERT INTO recipe (id, consultationid, description)
VALUES 
(1, 1, 'Receta de medicamentos para control de colesterol.'),
(2, 2, 'Receta para nuevas vacunas de seguimiento.');

