
CREATE DATABASE hospitalR;

USE hospitalR;

CREATE TABLE expediente (
codExpPaci int IDENTITY(1,1) NOT NULL PRIMARY KEY,
FechaIngresoPaci date,
NomPaci varchar(80) NOT NULL,
PrimerApePaci varchar(80) NOT NULL,
SegApePaci varchar(80) NOT NULL,
TercerApePaci varchar(80),
SexoPaci varchar(10),
FechaNacPaci date,
EstadoCivilPaci varchar(50),
OcupacionPaci varchar(80),
NumDuiPaci varchar(10) NOT NULL,
DirecPaci varchar(150),
TelPaci varchar(10) NOT NULL,
nomPadrePaci varchar(80),
nomMadrePaci varchar(80),
nomConyuguePaci varchar(80),
nomResponsablePaci varchar (80) NOT NULL,
telResponsablePaci varchar(10) NOT NULL
);

CREATE TABLE notasEnfermeria(
codNotEnf int IDENTITY(1,1) NOT NULL PRIMARY KEY,
codExpPaci int NOT NULL,
PesoEnf varchar(10) NOT NULL,
EstaturaEnf varchar(10) NOT NULL,
TemperaturaEnf varchar(10) NOT NULL,
AlergMedicEnf varchar(80) NOT NULL,
presionArtEnf varchar(12) NOT NULL,
horaEnf time,
ObservacionesEnf varchar(200)
);

CREATE TABLE referencia(
codRefe int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomInstiRefe varchar(80) NOT NULL,
nomMedicoRefe varchar(80) NOT NULL,
CodExpPaci int NOT NULL,
diagnosticoRefe varchar(100) NOT NULL,
descripDiagRefe varchar(100),
ObservacionesRefe varchar(100)
);

CREATE TABLE historiaClin(
codHistCli int IDENTITY(1,1) NOT NULL PRIMARY KEY,
codExpPaci int NOT NULL,
PadecimientoCli varchar(80) NOT NULL,
TratamientoCli varchar(100),
fechaHCli date
);

CREATE TABLE historiaCDetalle(
codHistCDet int IDENTITY(1,1) NOT NULL PRIMARY KEY,
codExpPaci int NOT NULL,
AntePersCDet varchar(100) NOT NULL,
AnteFamCDet varchar(100) NOT NULL
);

CREATE TABLE docMedicos(
codDocMed int IDENTITY(1,1) NOT NULL PRIMARY KEY,
codExpPaci int NOT NULL,
FechaConsultaMed date,
DescripConsMed varchar(80) NOT NULL,
codPerMedi int NOT NULL,
codLabClin int NOT NULL
);

CREATE TABLE labClinico(
codLabClin int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomExaClin varchar(80) NOT NULL,
categoriaClin varchar(80) NOT NULL
);

CREATE TABLE perMedico(
codPerMedi int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomMedi varchar(80) NOT NULL,
primerApeMedi varchar(80) NOT NULL,
segApeMedi varchar(80) NOT NULL,
tercerApeMedi varchar(80),
sexoMedi varchar(10),
EspecialidadMedi varchar(80) NOT NULL,
FechaNacMedi date,
numDuiMedi varchar(10) NOT NULL,
numNitMedi varchar(15) NOT NULL,
telMedi varchar(10) NOT NULL
);

CREATE TABLE imagenologia(
codImag int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomImag varchar(80) NOT NULL,
imag varchar(25) 
);

CREATE TABLE usuario(
codUsu int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomUsu varchar(20) NOT NULL,
contraUsu varchar(10) NOT NULL,
codPerMedi int NOT NULL,
codRol int NOT NULL,
EstadoUsu varchar(20)
);

CREATE TABLE rol(
codrol int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomRol varchar(20) NOT NULL
);

CREATE TABLE entidades(
codEnti int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomRol varchar(20) NOT NULL
);

CREATE TABLE bitacora(
codBitacora int IDENTITY(1,1) NOT NULL PRIMARY KEY,
nomIncidenteBit varchar(45) NOT NULL,
fechaIncidenteBit datetime,
codEnti int NOT NULL,
codUsu int NOT NULL
);



/*INSERTAR DATOS*/

INSERT INTO expediente(NomPaci,PrimerApePaci,SegApePaci,TercerApePaci,SexoPaci,
EstadoCivilPaci,OcupacionPaci,NumDuiPaci,DirecPaci,TelPaci,nomPadrePaci,nomMadrePaci,nomConyuguePaci,
nomResponsablePaci,telResponsablePaci) 
VALUES 
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Julia','Perez','López','','Femenino',
'Casado','Doctora','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Pedro Guzman','Pedro Guzman','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Ramiro','Diaz','Martinez','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Karen','Arias','Escobar','','Femenino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Martin Osegueda','Martin Osegueda','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478'),
('Ramon','Juarez','López','','Masculino',
'Casado','Profesor','065478214-8','San Salvador','22949063','Carlos Juarez',
'Maria López','Rosa Guzman','Rosa Guzman','26039478');

INSERT INTO perMedico(nomMedi,primerApeMedi,segApeMedi,tercerApeMedi,sexoMedi,EspecialidadMedi,
FechaNacMedi,numDuiMedi,numNitMedi,telMedi) 
VALUES 
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Raul','Castro','Vargas','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Maria','Perez','Castro','','Femenino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Estela','Hernandez','Peña','','Femenino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578'),
('Juan','Perez','Castro','','Masculino','Cardiologo',
'85/05/14','045128796-5','24578965412','22941578');

INSERT INTO labClinico VALUES 
('HEMATOLOGIA','QUIMICO'),
('T3','HORMONAS'),
('HEMATOLOGIA1','QUIMICO'),
('T3','HORMONAS'),
('HEMATOLOGIA','QUIMICO'),
('T3','HORMONAS'),
('HEMATOLOGIA','QUIMICO'),
('T3','HORMONAS'),
('HEMATOLOGIA','QUIMICO'),
('T3','HORMONAS');

INSERT INTO imagenologia VALUES 
('RADIOGRAFIA TIPO1','img/rad/1'),
('RADIOGRAFIA TIPO2','img/rad/2'),
('RADIOGRAFIA TIPO3','img/rad/3'),
('RADIOGRAFIA TIPO4','img/rad/4'),
('RADIOGRAFIA TIPO5','img/rad/5'),
('RADIOGRAFIA TIPO6','img/rad/6'),
('ECOGRAFIA','img/ec/1'),
('TOMOGRAFIA1','img/tom/1'),
('TOMOGRAFIA2','img/tom/2'),
('TOMOGRAFIA3','img/tom/3');

INSERT INTO docMedicos VALUES 
(1,'2019/04/03','Presenta dolor abdominal',1,1,1),
(2,'2019/04/03','Presenta dolor abdominal',2,2,2),
(3,'2019/04/03','Presenta dolor abdominal',3,3,3),
(4,'2019/04/03','Presenta dolor abdominal',4,4,4),
(5,'2019/04/03','Presenta dolor abdominal',5,5,5),
(6,'2019/04/03','Presenta dolor abdominal',6,6,6),
(7,'2019/04/03','Presenta dolor abdominal',7,7,7),
(8,'2019/04/03','Presenta dolor abdominal',8,8,8),
(9,'2019/04/03','Presenta dolor abdominal',9,9,9),
(10,'2019/04/03','Presenta dolor abdominal',10,10,10);

INSERT INTO historiaClin 
VALUES
(1,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(2,'Rinitis alergica','Dieta y medicamento recetado,Rexacort','2018/05/01'),
(3,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(4,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(5,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(6,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(7,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(8,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(9,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01'),
(10,'Gastritis','Dieta y medicamento recetado,Omeprasol','2018/05/01');

INSERT INTO historiaCDetalle VALUES
(1,'Ansiedad','Asma y Diabetes'),
(2,'Ansiedad','Cancer'),
(3,'Ansiedad','Diabetes'),
(4,'Ansiedad','Asma y Diabetes'),
(5,'Ansiedad','Asma y Diabetes'),
(6,'Ansiedad','Asma'),
(7,'Ansiedad','Asma y Diabetes'),
(8,'Ansiedad','Asma y Diabetes'),
(9,'Ansiedad','Asma y Diabetes'),
(10,'Ansiedad','Asma y Diabetes');


INSERT INTO notasEnfermeria VALUES
(1,'50 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'), 
(2,'63 kg','1.75 cm', '37°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(3,'50 kg','1.75 cm', '35°','ninguno','120/80 mm Hg','10:25:00','No presenta molestias'),
(4,'58 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(5,'50 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(6,'50 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(7,'51 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(8,'50 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:55:00','No presenta molestias'),
(9,'50 kg','1.75 cm', '36°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias'),
(10,'50 kg','1.75 cm', '37°','ninguno','120/80 mm Hg','10:05:00','No presenta molestias');


INSERT INTO referencia VALUES
('Fosalud','Adrian Reyes',1,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Hospitalparavidas','Adrian Reyes',2,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',3,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',4,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Hospital Jose Molina','Adrian Reyes',5,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',6,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',7,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',8,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Clinica Santa Lucia','Adrian Reyes',9,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía'),
('Fosalud','Adrian Reyes',10,'Gastritis',
'El paciente presenta sintomas de gastritis cronica','El paciente necesita ultrasonografía');

INSERT INTO rol VALUES
('Administrador'),
('Super Administrador'),
('Usuario Normal'),
('Administrador de seguridad'),
('Propietario'),
('Gestor'),
('Editor'),
('Usuario Privilegiado'),
('Colaborador'),
('Delegador');

INSERT INTO entidades VALUES
('Expediente'),
('PersonalMedico'),
('Notas Enfermeria'),
('HistoriaClinica'),
('HistoriaClinDetalle'),
('Referencia'),
('DocMedicos'),
('Imagenologia'),
('LabClinico'),
('Usuario');

INSERT INTO usuario VALUES
('mariF','mar147L',1,1,'Activo'),
('germRivera','g2584',2,2,'Activo'),
('aliciaMartinez','alice14',3,3,'Activo'),
('raulLopez','Lopez12',4,4,'Activo'),
('bbta','bta36',5,5,'Activo'),
('JuanT','tmsa4',6,6,'Activo'),
('PedroSuarez','suarez45',7,7,'Activo'),
('EmiliaVal','valdez19',8,8,'Activo'),
('julioD','12345',9,9,'Activo'),
('gloriMenjivar','menjivar5',10,10,'Activo');

INSERT INTO bitacora VALUES
('Modificacion de entidad no autorizda','2019/05/01 10:05:00',1,1),
('Modificacion de entidad no autorizda','2019/05/01 1:05:00',2,2),
('Modificacion de entidad no autorizda','2019/05/01 9:30:00',3,3),
('Modificacion de entidad no autorizda','2019/05/01 11:05:00',4,4),
('Modificacion de entidad no autorizda','2019/05/01 10:35:00',5,5),
('Modificacion de entidad no autorizda','2019/05/01 10:00:00',6,6),
('Modificacion de entidad no autorizda','2019/05/01 13:05:00',7,7),
('Modificacion de entidad no autorizda','2019/05/01 5:20:00',8,8),
('Modificacion de entidad no autorizda','2019/05/01 10:05:00',9,9),
('Modificacion de entidad no autorizda','2019/05/01 10:10:00',10,10);


























