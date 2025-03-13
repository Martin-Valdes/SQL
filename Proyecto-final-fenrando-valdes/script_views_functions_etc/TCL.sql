START TRANSACTION;

-- Insertar 10 nuevas consultas asociadas a los pacientes
INSERT INTO consultation (patient_id, doctor_id, date, notes) VALUES
(1, 1, '2023-10-01', 'Primera consulta de Juan Pérez.'),
(2, 1, '2023-10-02', 'Primera consulta de María Gómez.'),
(3, 2, '2023-10-03', 'Primera consulta de Carlos López.'),
(4, 2, '2023-10-04', 'Primera consulta de Ana Martínez.'),
(5, 3, '2023-10-05', 'Primera consulta de Luis Rodríguez.'),
(6, 3, '2023-10-06', 'Primera consulta de Sofía Hernández.'),
(7, 4, '2023-10-07', 'Primera consulta de Pedro Díaz.'),
(8, 4, '2023-10-08', 'Primera consulta de Lucía Sánchez.'),
(9, 5, '2023-10-09', 'Primera consulta de Jorge Ramírez.'),
(10, 5, '2023-10-10', 'Primera consulta de Mónica Torres.');

COMMIT;

-- Transacción 2: Crear 10 historiales médicos
START TRANSACTION;

-- Insertar 10 historiales médicos
INSERT INTO medicalhistory (patient_id, doctor_id, consultation_id, details) VALUES
(1, 1, 1, 'El paciente presenta síntomas de gripe.'),
(2, 1, 2, 'El paciente presenta síntomas de alergia.'),
(3, 2, 3, 'El paciente presenta síntomas de hipertensión.'),
(4, 2, 4, 'El paciente presenta síntomas de diabetes.'),
(5, 3, 5, 'El paciente presenta síntomas de migraña.'),
(6, 3, 6, 'El paciente presenta síntomas de artritis.'),
(7, 4, 7, 'El paciente presenta síntomas de asma.'),
(8, 4, 8, 'El paciente presenta síntomas de depresión.'),
(9, 5, 9, 'El paciente presenta síntomas de ansiedad.'),
(10, 5, 10, 'El paciente presenta síntomas de insomnio.');

COMMIT;

-- Transacción 3: Actualizar 10 consultas y crear notificaciones
START TRANSACTION;

-- Actualizar 10 consultas
UPDATE consultation SET notes = 'El paciente fue diagnosticado con gripe.' WHERE id = 1;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con alergia.' WHERE id = 2;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con hipertensión.' WHERE id = 3;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con diabetes.' WHERE id = 4;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con migraña.' WHERE id = 5;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con artritis.' WHERE id = 6;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con asma.' WHERE id = 7;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con depresión.' WHERE id = 8;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con ansiedad.' WHERE id = 9;
UPDATE consultation SET notes = 'El paciente fue diagnosticado con insomnio.' WHERE id = 10;

-- Insertar 10 notificaciones asociadas a las consultas
INSERT INTO notification (consultation_id, message) VALUES
(1, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(2, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(3, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(4, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(5, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(6, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(7, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(8, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(9, 'La consulta ha sido actualizada con un nuevo diagnóstico.'),
(10, 'La consulta ha sido actualizada con un nuevo diagnóstico.');

COMMIT;

-- Transacción 4: Crear 10 recetas y notificaciones asociadas
START TRANSACTION;

-- Insertar 10 recetas
INSERT INTO recipe (consultation_id, description) VALUES
(1, 'Tomar paracetamol cada 8 horas durante 5 días.'),
(2, 'Tomar antihistamínicos cada 12 horas durante 7 días.'),
(3, 'Tomar medicamento para la hipertensión diariamente.'),
(4, 'Tomar insulina según indicaciones médicas.'),
(5, 'Tomar medicamento para la migraña según sea necesario.'),
(6, 'Tomar antiinflamatorios cada 8 horas durante 10 días.'),
(7, 'Usar inhalador según sea necesario.'),
(8, 'Tomar antidepresivos diariamente.'),
(9, 'Tomar ansiolíticos según sea necesario.'),
(10, 'Tomar pastillas para dormir según sea necesario.');

-- Insertar 10 notificaciones asociadas a las recetas
INSERT INTO notification (consultation_id, message) VALUES
(1, 'Se ha generado una nueva receta para la consulta.'),
(2, 'Se ha generado una nueva receta para la consulta.'),
(3, 'Se ha generado una nueva receta para la consulta.'),
(4, 'Se ha generado una nueva receta para la consulta.'),
(5, 'Se ha generado una nueva receta para la consulta.'),
(6, 'Se ha generado una nueva receta para la consulta.'),
(7, 'Se ha generado una nueva receta para la consulta.'),
(8, 'Se ha generado una nueva receta para la consulta.'),
(9, 'Se ha generado una nueva receta para la consulta.'),
(10, 'Se ha generado una nueva receta para la consulta.');

COMMIT;

-- Transacción 5: Actualizar 10 historiales médicos y crear notificaciones
START TRANSACTION;

-- Actualizar 10 historiales médicos
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de gripe.' WHERE id = 1;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de alergia.' WHERE id = 2;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de hipertensión.' WHERE id = 3;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de diabetes.' WHERE id = 4;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de migraña.' WHERE id = 5;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de artritis.' WHERE id = 6;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de asma.' WHERE id = 7;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de depresión.' WHERE id = 8;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de ansiedad.' WHERE id = 9;
UPDATE medicalhistory SET details = 'El paciente ha mostrado mejoría en los síntomas de insomnio.' WHERE id = 10;

-- Insertar 10 notificaciones asociadas a los historiales médicos
INSERT INTO notification (consultation_id, message) VALUES
(1, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(2, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(3, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(4, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(5, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(6, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(7, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(8, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(9, 'El historial médico ha sido actualizado con la mejoría del paciente.'),
(10, 'El historial médico ha sido actualizado con la mejoría del paciente.');

COMMIT;