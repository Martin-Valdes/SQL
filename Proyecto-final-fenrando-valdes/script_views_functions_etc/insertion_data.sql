-- Insertar datos en la tabla de doctor
INSERT INTO doctor (id, name, dni, role, email, phone, specialty)
VALUES
    (1, 'Dr. John Smith', 12345678, 'Cardiologist', 'john.smith@email.com', 123456789, 'Cardiology'),
    (2, 'Dr. Jane Doe', 23456789, 'Neurologist', 'jane.doe@email.com', 987654321, 'Neurology'),
    (3, 'Dr. Alice Williams', 34567890, 'General Practitioner', 'alice.williams@email.com', 112233445, 'General Medicine'),
    (4, 'Dr. Bob Brown', 45678901, 'Pediatrician', 'bob.brown@email.com', 223344556, 'Pediatrics'),
    (5, 'Dr. Emily Johnson', 56789012, 'Dermatologist', 'emily.johnson@email.com', 334455667, 'Dermatology'),
    (6, 'Dr. Michael White', 67890123, 'Orthopedic Surgeon', 'michael.white@email.com', 445566778, 'Orthopedics'),
    (7, 'Dr. Jessica Green', 78901234, 'Ophthalmologist', 'jessica.green@email.com', 556677889, 'Ophthalmology'),
    (8, 'Dr. David Harris', 89012345, 'Endocrinologist', 'david.harris@email.com', 667788990, 'Endocrinology'),
    (9, 'Dr. Laura Clark', 90123456, 'Psychiatrist', 'laura.clark@email.com', 778899001, 'Psychiatry'),
    (10, 'Dr. Daniel Lewis', 10123456, 'Gastroenterologist', 'daniel.lewis@email.com', 889900112, 'Gastroenterology');

-- Insertar datos en la tabla de patient
INSERT INTO patient (id, name, age, email, dni)
VALUES
    (1, 'Michael Johnson', 35, 'michael.johnson@email.com', 12345678),
    (2, 'Emily Davis', 28, 'emily.davis@email.com', 23456789),
    (3, 'Liam Martinez', 50, 'liam.martinez@email.com', 34567890),
    (4, 'Sophia Taylor', 22, 'sophia.taylor@email.com', 45678901),
    (5, 'Mia Wilson', 45, 'mia.wilson@email.com', 56789012),
    (6, 'James Moore', 60, 'james.moore@email.com', 67890123),
    (7, 'Olivia Anderson', 30, 'olivia.anderson@email.com', 78901234),
    (8, 'Lucas Thomas', 40, 'lucas.thomas@email.com', 89012345),
    (9, 'Ava Jackson', 25, 'ava.jackson@email.com', 90123456),
    (10, 'Ethan Harris', 55, 'ethan.harris@email.com', 10123456);


