CREATE TABLE PACIENTE (
  Cod_Paciente INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Documento BIGINT,
  Fecha_Nacimiento DATE,
  Direccion VARCHAR(100),
  Telefono BIGINT
);

CREATE TABLE MEDICO (
  Cod_Medico INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Especialidad VARCHAR(50)
);

CREATE TABLE CITA (
  Cod_Cita INT PRIMARY KEY,
  Fecha_Hora DATETIME,
  Motivo_Consulta VARCHAR(100),
  Estado VARCHAR(30)
);

CREATE TABLE AGENDAR (
  Cod_Paciente INT,
  Cod_Cita INT,
  PRIMARY KEY (Cod_Paciente, Cod_Cita),
  FOREIGN KEY (Cod_Paciente) REFERENCES PACIENTE(Cod_Paciente),
  FOREIGN KEY (Cod_Cita) REFERENCES CITA(Cod_Cita)
);

CREATE TABLE ATENDER (
  Cod_Medico INT,
  Cod_Cita INT,
  PRIMARY KEY (Cod_Medico, Cod_Cita),
  FOREIGN KEY (Cod_Medico) REFERENCES MEDICO(Cod_Medico),
  FOREIGN KEY (Cod_Cita) REFERENCES CITA(Cod_Cita)
);

CREATE TABLE DIAGNOSTICO (
  Cod_Diagnostico INT PRIMARY KEY,
  Cod_CIE11 VARCHAR(10),
  Descripcion VARCHAR(200)
);

CREATE TABLE HISTORIAL_CLINICO (
  Cod_Historial INT PRIMARY KEY,
  Fecha DATE,
  Observaciones VARCHAR(300),
  Cod_Paciente INT,
  FOREIGN KEY (Cod_Paciente) REFERENCES PACIENTE(Cod_Paciente)
);

CREATE TABLE MEDICAMENTO (
  Cod_Medicamento INT PRIMARY KEY,
  Nombre_Generico VARCHAR(50),
  Nombre_Comercial VARCHAR(50),
  Lote INT,
  Fecha_Vencimiento DATE,
  Stock INT
);

CREATE TABLE PRESCRIBIR (
  Cod_Historial INT,
  Cod_Medicamento INT,
  PRIMARY KEY (Cod_Historial, Cod_Medicamento),
  FOREIGN KEY (Cod_Historial) REFERENCES HISTORIAL_CLINICO(Cod_Historial),
  FOREIGN KEY (Cod_Medicamento) REFERENCES MEDICAMENTO(Cod_Medicamento)
);