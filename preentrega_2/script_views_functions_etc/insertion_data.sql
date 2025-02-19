-- Insertar datos en la tabla de doctor
INSERT INTO doctor (id, name, dni, role, email, phone, specialty)
VALUES
    (1, 'Dr. Juan Perez', 12345678, 'Cardiologo', 'juan.perez@email.com', 123456789, 'Cardiologia'),
    (2, 'Dra. Ana Lopez', 23456789, 'Neurologo', 'ana.lopez@email.com', 987654321, 'Neurologia'),
    (3, 'Dr. Carlos Garcia', 34567890, 'Medico General', 'carlos.garcia@email.com', 112233445, 'Medicina General'),
    (4, 'Dra. Marta Sanchez', 45678901, 'Pediatra', 'marta.sanchez@email.com', 223344556, 'Pediatria'),
    (5, 'Dra. Sofia Rodriguez', 56789012, 'Dermatologa', 'sofia.rodriguez@email.com', 334455667, 'Dermatologia'),
    (6, 'Dr. Miguel Blanco', 67890123, 'Cirujano Ortopedico', 'miguel.blanco@email.com', 445566778, 'Ortopedia'),
    (7, 'Dra. Julia Verde', 78901234, 'Oftalmologa', 'julia.verde@email.com', 556677889, 'Oftalmologia'),
    (8, 'Dr. David Torres', 89012345, 'Endocrinologo', 'david.torres@email.com', 667788990, 'Endocrinologia'),
    (9, 'Dra. Laura Cruz', 90123456, 'Psiquiatra', 'laura.cruz@email.com', 778899001, 'Psiquiatria'),
    (10, 'Dr. Daniel Suarez', 10123456, 'Gastroenterologo', 'daniel.suarez@email.com', 889900112, 'Gastroenterologia');

-- Insertar datos en la tabla de patient
INSERT INTO patient (id, name, age, email, dni)
VALUES
    (1, 'Miguel Gonzalez', 35, 'miguel.gonzalez@email.com', 12345678),
    (2, 'Lucia Fernandez', 28, 'lucia.fernandez@email.com', 23456789),
    (3, 'Pablo Martinez', 50, 'pablo.martinez@email.com', 34567890),
    (4, 'Sofia Torres', 22, 'sofia.torres@email.com', 45678901),
    (5, 'Mia Ramirez', 45, 'mia.ramirez@email.com', 56789012),
    (6, 'Javier Morales', 60, 'javier.morales@email.com', 67890123),
    (7, 'Olivia Castro', 30, 'olivia.castro@email.com', 78901234),
    (8, 'Lucas Ruiz', 40, 'lucas.ruiz@email.com', 89012345),
    (9, 'Camila Delgado', 25, 'camila.delgado@email.com', 90123456),
    (10, 'Elias Herrera', 55, 'elias.herrera@email.com', 10123456);
