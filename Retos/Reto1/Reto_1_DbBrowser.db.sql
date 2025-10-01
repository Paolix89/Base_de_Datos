BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Ingresos" (
	"id_ingreso"	INTEGER,
	"habitacion"	INTEGER,
	"cama"	INTEGER,
	"fecha_ingreso"	TEXT,
	"id_medico"	INTEGER,
	"id_paciente"	INTEGER,
	PRIMARY KEY("id_ingreso" AUTOINCREMENT),
	FOREIGN KEY("id_medico") REFERENCES "Medicos"("id_medico"),
	FOREIGN KEY("id_paciente") REFERENCES "Pacientes"("id_paciente")
);
CREATE TABLE IF NOT EXISTS "Medicos" (
	"id_medico"	INTEGER,
	"nombre_medico"	TEXT,
	"apellidos_medico"	TEXT,
	"telefono"	INTEGER,
	"especialidad"	TEXT,
	PRIMARY KEY("id_medico" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Pacientes" (
	"id_paciente"	INTEGER,
	"nombre_paciente"	TEXT,
	"apellidos_paciente"	TEXT,
	"direccion"	TEXT,
	"poblacion"	TEXT,
	"provincia"	TEXT,
	"codigo_postal"	TEXT,
	"telefono"	INTEGER,
	"fecha_nacimiento"	TEXT,
	PRIMARY KEY("id_paciente" AUTOINCREMENT)
);
INSERT INTO "Ingresos" ("id_ingreso","habitacion","cama","fecha_ingreso","id_medico","id_paciente") VALUES (1,101,1,'2024-11-01',1,1),
 (2,402,2,'2024-11-15',2,2),
 (3,206,1,'2024-11-20',3,3),
 (4,305,2,'2024-11-25',4,4),
 (5,405,2,'2024-11-25',1,5),
 (6,204,1,'2024-11-20',2,6),
 (7,105,2,'2024-11-25',3,1);
INSERT INTO "Medicos" ("id_medico","nombre_medico","apellidos_medico","telefono","especialidad") VALUES (1,'Laura','García Torres',914567890,'Traumatología'),
 (2,'Pedro','Sánchez Díaz',912345876,'Pediatría'),
 (3,'María','López García',934567123,'Neurología'),
 (4,'José','Rodríguez Pérez',955678901,'Dermatología');
INSERT INTO "Pacientes" ("id_paciente","nombre_paciente","apellidos_paciente","direccion","poblacion","provincia","codigo_postal","telefono","fecha_nacimiento") VALUES (1,'Alberto','Ruiz Muñoz','Calle Mayor 123','Madrid','Madrid','28001',912345678,'1985-03-21'),
 (2,'Bárbara','Calvente Domínguez','Av. Sol 45','Valencia','Valencia','46001',963852741,'1990-07-12'),
 (3,'Cinthia','Torres Sánchez','C/ Olmo 22','Barcelona','Barcelona','08002',934567890,'1978-11-03'),
 (4,'Daniel','Pérez Díaz','Paseo Verde 67','Sevilla','Sevilla','41012',955123456,'2001-06-15'),
 (5,'Ana','Muriel Serrano','Plaza del Sol 89','Málaga','Málaga','29001',951234567,'1988-02-08'),
 (6,'Niko','Nacino Muñoz','C/ Felix de Azara 6','Arroyo de la Encomienda','Valladolid','47195',692831481,'1989-10-31');
CREATE VIEW cantidad_ingresos_pacientes AS
SELECT p.id_paciente, p.nombre_paciente, p.apellidos_paciente,
count (i.id_ingreso) AS cantidad_ingresos
FROM Pacientes p 
LEFT JOIN Ingresos i ON p.id_paciente = i.id_paciente
GROUP BY p.id_paciente, p.nombre_paciente, p.apellidos_paciente;
CREATE VIEW cantidad_pacientes_atendidos AS
SELECT m.id_medico, m.nombre_medico, m.apellidos_medico,
count (DISTINCT	i.id_ingreso) AS cantidad_pacientes_atendidos
FROM Medicos m
LEFT JOIN Ingresos i ON m.id_medico = i.id_medico
GROUP BY m.id_medico, m.nombre_medico, m.apellidos_medico;
CREATE VIEW vista_pacientes AS
SELECT Pacientes.id_paciente, Pacientes.nombre_paciente, Pacientes.apellidos_paciente, Medicos.id_medico, Medicos.nombre_medico, Medicos.apellidos_medico
FROM Pacientes
INNER JOIN Ingresos
ON Pacientes.id_paciente = Ingresos.id_paciente
INNER JOIN Medicos
ON Ingresos.id_medico = Medicos.id_medico;
COMMIT;
