INSERT INTO PACIENTE VALUES
(1, 'Laura', 'Martínez', 1054234567, '1990-04-15', 'Calle 45 #12-10', 3204567890),
(2, 'Andrés', 'Gómez', 1023456789, '1985-09-22', 'Carrera 9 #80-25', 3107896543),
(3, 'María', 'Pérez', 1078945612, '1992-12-02', 'Av. 30 #45-67', 3112567894);


INSERT INTO MEDICO VALUES
(1, 'Camilo', 'Rojas', 'Cardiología'),
(2, 'Daniela', 'Suárez', 'Pediatría'),
(3, 'Santiago', 'Ramírez', 'Medicina General');


INSERT INTO CITA VALUES
(1, '2025-11-03 08:30:00', 'Chequeo general', 'Realizada'),
(2, '2025-11-04 10:00:00', 'Dolor de cabeza', 'Pendiente'),
(3, '2025-11-05 14:00:00', 'Control pediátrico', 'Programada');


INSERT INTO AGENDAR VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO ATENDER VALUES
(3, 1),
(1, 2),
(2, 3);


INSERT INTO DIAGNOSTICO VALUES
(1, 'I10', 'Hipertensión arterial'),
(2, 'J00', 'Resfriado común'),
(3, 'K21', 'Reflujo gastroesofágico');


INSERT INTO HISTORIAL_CLINICO VALUES
(1, '2025-10-30', 'Paciente con presión alta controlada', 1),
(2, '2025-11-01', 'Paciente con síntomas gripales leves', 2),
(3, '2025-11-02', 'Control pediátrico sin complicaciones', 3);


INSERT INTO MEDICAMENTO VALUES
(1, 'Losartán', 'Losartán 50mg', 1234, '2026-05-01', 200),
(2, 'Paracetamol', 'Dolex 500mg', 5678, '2027-03-10', 500),
(3, 'Omeprazol', 'Losec 20mg', 9101, '2026-12-20', 300);


INSERT INTO PRESCRIBIR VALUES
(1, 1),  -- Paciente 1 con Losartán
(2, 2),  -- Paciente 2 con Paracetamol
(3, 3);  -- Paciente 3 con Omeprazol