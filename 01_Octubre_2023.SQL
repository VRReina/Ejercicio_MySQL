-- * Se crea la base de datos con el nombre "comercial"

CREATE DATABASE comercial;


--* Visualizar base de datos creadas
SHOW DATABASES; 

--* Utilizar la base de datos creada (comercial)
USE comercial;

-- * Se crean la primera tabla de la base de datos denominada (oficinas)

CREATE TABLE oficinas(
    id_oficina INT AUTO_INCREMENT PRIMARY KEY,
    cuidad VARCHAR (40) NOT NULL,
    telefono VARCHAR (20) UNIQUE NOT NULL,
    direccion TEXT,
    departamento VARCHAR (20) NOT NULL,
    pais VARCHAR (20) NOT NULL,
    creado  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--* Visualizamos como quedo la estructura de la primera tabla.
DESC oficinas

-- * Se crean la segunda tabla de la base de datos denominada (empleado)
CREATE TABLE empleado(
    documento INT PRIMARY KEY,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (30) NOT NULL,
    telefono VARCHAR (20) UNIQUE NOT NULL,
    correo VARCHAR (50) UNIQUE NOT NULL,
    id_oficina INT,
    jefe VARCHAR (40) NOT NULL,
    cargo VARCHAR (50) NOT NULL,
    creado  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--* Visualizamos como quedo la estructura de la segunda tabla.
DESC empleado

-- * Se crean la tecera tabla de la base de datos denominada (cliente)
CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY,
    empresa VARCHAR (50) NOT NULL,
    nombre VARCHAR (50)  NOT NULL,
    apellido VARCHAR (30) NOT NULL,
    telefono VARCHAR (20) UNIQUE NOT NULL,
    direccion TEXT,
    departamento VARCHAR (20) NOT NULL,
    pais VARCHAR (20) NOT NULL,
    empleado_atiende VARCHAR (50) UNIQUE NOT NULL,
    creado  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--* Visualizamos como quedo la estructura de la tercera tabla.
DESC cliente

--* Visualizar las tablas creadas posteriormente
SHOW TABLE; 

--* Se hace el registro de 50 datos para la tabla de oficina
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Leticia', 3204565027, 'Cl. 9 #9-50', 'Amazonas', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Medellín', 3122135690, 'Calle 34 # 65-117', 'Antioquia', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Arauca', 3152142918, 'Cl 15 #16-59', 'Arauca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Barranquilla', 3229522039, 'Calle 15 # 9 - 64', 'Atlantico', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Bogotá', 3135744842, 'Av. El Dorado # 103 - 22 ', 'Cundinamarca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Cartagena de Indias', 3229095896, 'Tv. 53 #31-21', 'Bolivar', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Tunja', 'Boyaca', 31345927474, 'Cra. 11 #7-41', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Manizales', 3204565026, 'Cra. 24 #30-7', 'Caldas', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Florencia', 3204565029, 'Cra. 14 #20-28', 'Caquetá', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Yopal', 3134565027, 'Kr 26', 'Casanare', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Popayán', 3134568971, 'Cl. 66 Nte. #9 - 96 ', 'Cauca','Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Valledupar', 3143152918, 'Cra. 7a #44-44', 'Cesar', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Quibdo', 3134152918, 'Cra. 3 #27-13', 'Chocó','Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Montería', 3132135698, 'Cra. 2 #44-45', 'Córdoba', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Inírida', 3132145874, 'Cl. 19 #49', 'Guainía', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('San José del Guaviare', 3163696720, 'Cl 9 20-37', 'Guaviare', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Neiva', 3163695489, 'Carrera 18 c # 50 a 28', 'Huila',  'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Riocha', 3205468974, 'Cl. 15 #12a-80 ', 'La guajira', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Santa Marta', 3112750236, 'Cl. 28 #19C-40 ', 'Magdalena', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Villavicencio', 3117200254, 'Cra. 31 #40-48', 'Meta', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Pasto',3166980587, 'Nariño', 'Cl 18 #7-29', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('San José de Cúcuta', 3175858969, 'Calle 22N, Aeropuerto #11-85', 'Norte de Santander', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Mocoa', 3005698787,  'Cl. 7 #5-59', 'Putumayo', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Armenia', 3014575454, 'Cra 15 #22-42 ', 'Quindío', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Pereira', 3054560102, 'Calle 14 #13-16, Sectir Invico', 'Risaralda', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('San Andrés', 3063210609, 'Tr10 A 30-01 School House ', 'San Andrés', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Bucaramanga', 3095486363, 'Cra. 33 #55-18 ', 'Santander', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Sincelejo', 3015690055, 'Cra. 4 #25G25', 'Sucre', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Ibagué', 3239528987, 'Cra 3 #69-22', 'Tolima', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Cali', 3239568781, 'Av. Roosevelt #38a- 46', 'Valle del Cauca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Mitú', 3265478964, 'Cra. 14 #12-50', 'Vaupés', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Puerto Carreño', 8659293, 'Cra. 6 #18-22', 'Vichada', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Bello', 8634578, 'Cra. 49 #49-55', 'Antioquia', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Buenaventura', 8612547, 'Cl. 1 Sur # 74-36', 'Valle del Cauca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Buga', 8956321, 'Cl. 21 #12-6', 'Valle del Cauca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Envigado', 8575028, 'Cra. 42 #35S-38', 'Antioquia', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Ipiales', 8572546, 'Cl. 17 #7-75', 'Nariño', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Melgar', 8457421, 'Cl. 6 #27-20', 'Tolima', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Pamplona', 8235690, 'CALLE 6 # 8-60', 'Norte de Santander', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Pitalito', 3124744546, 'Cl. 9 #1b-20', 'Huila', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Piedecuesta', 8110203, 'Cl 10 #6-44', 'Santander', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Tunja', 8541206, 'Cl. 51 #2b-25', 'Boyacá', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Zipaquirá', 8577777, 'Cl. 4 #9-10', 'Cundinamarca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Tumaco', 8454544, 'Cra. 9a #14-2 a 14-46', 'Nariño', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Turbo', 3122130809, 'Cl. 101 # 98A34', 'Antioquia', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('La plata', 8233333, 'Cra. 3 #6-9', 'Huila', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Soledad', 8522323, 'Cl. 51 #13-3', 'Atlántico', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Tibú', 8599999, 'Av 13 A #21-35', 'Norte de Santander', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Soacha', 3194580204, 'Cl 15 #3-35', 'Cudinamarca', 'Colombia');
INSERT INTO oficinas (cuidad, telefono, direccion, departamento, pais)
VALUES ('Riohacha', 31421230708, 'Cl. 15 #12a-80', 'La Guajira', 'Colombia');

--* Se hace el registro de 100 datos para la tabla de empleado

INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (123456789, 'Valentina', 'Ramirez Reina', 3122135690, 'valentinaramirezreina30@gmail.com', 1, 'Yolanda Reina','Cajera' );
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100001, 'Juan', 'Pérez', 3121000011, 'juanperez1@email.com', 1, 'Yolanda Reina', 'Cargo1'); 
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100002, 'Ana', 'Sánchez', 3121000022, 'anasanchez2@email.com', 2, 'María López', 'Cargo2');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100003, 'Carlos', 'Gómez', 3121000033, 'carlosgomez3@email.com', 3, 'Pedro Rodríguez', 'Cargo3');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100004, 'Laura', 'Martínez', 3121000044, 'lauramartinez4@email.com', 4, 'Ana Sánchez', 'Cargo4');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100005, 'Sofía', 'López', 3121000055, 'sofialopez5@email.com', 5, 'Carlos Pérez', 'Cargo5');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100006, 'David', 'Hernández', 3121000066, 'davidhernandez6@email.com', 6, 'Elena López', 'Cargo6');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100007, 'Elena', 'García', 3121000077, 'elenagarcia7@email.com', 7, 'Pedro Rodríguez', 'Cargo7');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100008, 'Pablo', 'Rodríguez', 3121000088, 'pablorodriguez8@email.com', 8, 'Ana Sánchez', 'Cargo8');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100009, 'Lucía', 'Fernández', 3121000099, 'luciafernandez9@email.com', 9, 'Carlos Pérez', 'Cargo9');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100010, 'Marta', 'López', 3121000100, 'martalopez10@email.com', 10, 'Elena López', 'Cargo10');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100011, 'Javier', 'Sánchez', 3121000111, 'javiersanchez11@email.com', 11, 'Pedro Rodríguez', 'Cargo11');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100012, 'Carmen', 'Gómez', 3121000122, 'carmengomez12@email.com', 12, 'María López', 'Cargo12');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100013, 'Diego', 'Martínez', 3121000133, 'diegomartinez13@email.com', 13, 'Carlos Pérez', 'Cargo13');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100014, 'Sara', 'Hernández', 3121000144, 'sarahernandez14@email.com', 14, 'Elena López', 'Cargo14');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100015, 'Manuel', 'Pérez', 3121000155, 'manuelperez15@email.com', 15, 'Pedro Rodríguez', 'Cargo15');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100016, 'Isabel', 'García', 3121000166, 'isabelgarcia16@email.com', 16, 'Ana Sánchez', 'Cargo16');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100017, 'Joaquín', 'López', 3121000177, 'joaquinlopez17@email.com', 17, 'Carlos Pérez', 'Cargo17');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100018, 'Cristina', 'Gómez', 3121000188, 'cristinagomez18@email.com', 18, 'Elena López', 'Cargo18');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100019, 'Jorge', 'Martínez', 3121000199, 'jorgemartinez19@email.com', 19, 'Pedro Rodríguez', 'Cargo19');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100020, 'Rosa', 'Hernández', 3121000200, 'rosahernandez20@email.com', 20, 'Ana Sánchez', 'Cargo20');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100021, 'Daniel', 'Sánchez', 3121000211, 'danielsanchez21@email.com', 21, 'Carlos Pérez', 'Cargo21');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100022, 'Santiago', 'Gómez', 3121000222, 'santiagogomez22@email.com', 22, 'Elena López', 'Cargo22');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100023, 'Sara Lucia', 'Rodríguez', 3121000233, 'sararodriguez23@email.com', 23, 'Pedro Rodríguez', 'Cargo23');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100024, 'Lucía Luisa', 'Martínez', 3121000244, 'luciamartinez24@email.com', 24, 'Ana Sánchez', 'Cargo24');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100025, 'David Felipe', 'López', 3121000255, 'davidlopez25@email.com', 25, 'Carlos Pérez', 'Cargo25');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100026, 'Ana Maria', 'García', 3121000266, 'anagarcia26@email.com', 26, 'Elena López', 'Cargo26');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100027, 'Martha', 'Hernández', 3121000277, 'martahernandez27@email.com', 27, 'Pedro Rodríguez', 'Cargo27');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100028, 'Carlos Mario', 'Fernández', 3121000288, 'carlosfernandez28@email.com', 28, 'Ana Sánchez', 'Cargo28');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100029, 'Pablo Mario', 'Martínez', 3121000299, 'pablomartinez29@email.com', 29, 'Carlos Pérez', 'Cargo29');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100030, 'Lucía Marinaa', 'Gómez', 3121000300, 'luciagomez30@email.com', 30, 'Elena López', 'Cargo30');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100031, 'Andrés Felipe', 'Rodríguez', 3121000311, 'andresrodriguez31@email.com', 31, 'Pedro Rodríguez', 'Cargo31');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100032, 'Isabel Maria', 'Sánchez', 3121000322, 'isabelsanchez32@email.com', 32, 'María López', 'Cargo32');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100033, 'Joaquín Jose', 'Fernández', 3121000333, 'joaquinfernandez33@email.com', 33, 'Carlos Pérez', 'Cargo33');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100034, 'Carmen Maria', 'López', 3121000344, 'carmenlopez34@email.com', 34, 'Elena López', 'Cargo34');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100035, 'Rosa Maria', 'Gómez', 3121000355, 'rosagomez35@email.com', 35, 'Pedro Rodríguez', 'Cargo35');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100036, 'Diego Martin', 'Sánchez', 3121000366, 'diegosanchez36@email.com', 36, 'Ana Sánchez', 'Cargo36');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100037, 'Lucía Lucia', 'Martínez', 3121000377, 'luciamartinez37@email.com', 37, 'Carlos Pérez', 'Cargo37');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100038, 'Manuel Felipe', 'Rodríguez', 3121000388, 'manuelrodriguez38@email.com', 38, 'Elena López', 'Cargo38');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100039, 'Eva', 'Fernández', 3121000399, 'evafernandez39@email.com', 39, 'Pedro Rodríguez', 'Cargo39');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100040, 'Santiago Julian', 'López', 3121000400, 'santiagolopez40@email.com', 40, 'Ana Sánchez', 'Cargo40');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100041, 'Daniel Davis', 'Gómez', 3121000411, 'danielgomez41@email.com', 41, 'Carlos Pérez', 'Cargo41');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100042, 'Cristina Mario', 'Martínez', 3121000422, 'cristinamartinez42@email.com', 42, 'Elena López', 'Cargo42');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100043, 'Jorge Jose', 'Sánchez', 3121000433, 'jorgesanchez43@email.com', 43, 'Pedro Rodríguez', 'Cargo43');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100044, 'Sara Marina', 'Gómez', 3121000444, 'saragomez44@email.com', 44, 'Ana Sánchez', 'Cargo44');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100045, 'Manuel Joaquin', 'López', 3121000455, 'manuellopez45@email.com', 45, 'Carlos Pérez', 'Cargo45');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100046, 'Carmen Mariana', 'Martínez', 3121000466, 'carmenmartinez46@email.com', 46, 'Elena López', 'Cargo46');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100047, 'Maria Lucía', 'Hernández', 3121000477, 'luciahernandez47@email.com', 47, 'Pedro Rodríguez', 'Cargo47');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100048, 'Santiago Luis', 'Sánchez', 3121000488, 'santiagosanchez48@email.com', 48, 'Ana Sánchez', 'Cargo48');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100049, 'Diego Diago', 'Gómez', 3121000499, 'diegogomez49@email.com', 49, 'Carlos Pérez', 'Cargo49');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100050, 'Elena Eliana', 'Martínez', 3121000500, 'elenamartinez50@email.com', 50, 'Elena López', 'Cargo50');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100051, 'Pablo Miguel', 'López', 3121000511, 'pablolopez51@email.com', 1, 'Pedro Rodríguez', 'Cargo51');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100052, 'Cristina Nicolas', 'Gómez', 3121000522, 'cristinagomez52@email.com', 2, 'Ana Sánchez', 'Cargo52');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100053, 'Joaquín Nicolas', 'Martínez', 3121000533, 'joaquinmartinez53@email.com', 3, 'Carlos Pérez', 'Cargo53');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100054, 'MarianSara', 'López', 3121000544, 'saralopez54@email.com', 4, 'Elena López', 'Cargo54');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100055, 'luiCarlos', 'Sánchez', 3121000555, 'carlossanchez55@email.com', 5, 'Pedro Rodríguez', 'Cargo55');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100056, 'MariRosa', 'García', 3121000566, 'rosagarcia56@email.com', 6, 'Ana Sánchez', 'Cargo56');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100057, 'Dani', 'Martínez', 3121000577, 'danielmartinez57@email.com', 7, 'Carlos Pérez', 'Cargo57');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100058, 'Laure', 'López', 3121000588, 'lauralopez58@email.com', 8, 'Elena López', 'Cargo58');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100059, 'Santiage', 'Gómez', 3121000599, 'santiagogomez59@email.com', 9, 'Pedro Rodríguez', 'Cargo59');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100060, 'Lucí', 'Martínez', 3121000600, 'luciamartinez60@email.com', 10, 'Ana Sánchez', 'Cargo60');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100061, 'Car', 'Rodríguez', 3121000611, 'carlosrodriguez61@email.com', 11, 'Carlos Pérez', 'Cargo61');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100062, 'Manu', 'Gómez', 3121000622, 'manuelgomez62@email.com', 12, 'Elena López', 'Cargo62');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100063, 'Sari', 'Martínez', 3121000633, 'saramartinez63@email.com', 13, 'Pedro Rodríguez', 'Cargo63');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100064, 'Carme', 'López', 3121000644, 'carmenlopez64@email.com', 14, 'Ana Sánchez', 'Cargo64');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100065, 'Luciana', 'Sánchez', 3121000655, 'luciasanchez65@email.com', 15, 'Carlos Pérez', 'Cargo65');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100066, 'Danilo', 'Hernández', 3121000666, 'danielhernandez66@email.com', 16, 'Elena López', 'Cargo66');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100067, 'Joaquí', 'Gómez', 3121000677, 'joaquingomez67@email.com', 17, 'Pedro Rodríguez', 'Cargo67');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100068, 'Rosario', 'Martínez', 3121000688, 'rosamartinez68@email.com', 18, 'Ana Sánchez', 'Cargo68');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100069, 'Juan Pablo', 'López', 3121000699, 'juanpablolopez69@email.com', 19, 'Carlos Pérez', 'Cargo69');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100070, 'Manueli', 'Sánchez', 3121000700, 'manuelisanchez70@email.com', 20, 'Elena López', 'Cargo70');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100071, 'Lauris', 'Martínez', 3121000711, 'laurismartinez71@email.com', 21, 'Pedro Rodríguez', 'Cargo71');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100072, 'Thiago', 'Martínez', 3121000722, 'Thiagomartinez72@email.com', 22, 'Ana Sánchez', 'Cargo72');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100073, 'Carmin', 'Hernández', 3121000733, 'carmenhernandez73@email.com', 23, 'Carlos Pérez', 'Cargo73');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100074, 'Sarai', 'Sánchez', 3121000744, 'sarasanchez74@email.com', 24, 'Elena López', 'Cargo74');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100075, 'Daniela', 'López', 3121000755, 'danielalopez75@email.com', 25, 'Pedro Rodríguez', 'Cargo75');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100076, 'Lucían', 'García', 3121000766, 'luciagarcia76@email.com', 26, 'Ana Sánchez', 'Cargo76');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100077, 'Samuel', 'López', 3121000777, 'samuellopez77@email.com', 27, 'Carlos Pérez', 'Cargo77');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100078, 'Joacho', 'Martínez', 3121000788, 'joachonmartinez78@email.com', 28, 'Elena López', 'Cargo78');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100079, 'Manuela', 'García', 3121000799, 'manuelagarcia79@email.com', 29, 'Pedro Rodríguez', 'Cargo79');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100080, 'Carla', 'Martínez', 3121000800, 'carlanmartinez80@email.com', 30, 'Ana Sánchez', 'Cargo80');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100081, 'Karla', 'Sánchez', 3121000811, 'Karlasanchez81@email.com', 31, 'Carlos Pérez', 'Cargo81');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100082, 'Katerin', 'Gómez', 3121000822, 'kateringomez82@email.com', 32, 'Elena López', 'Cargo82');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100083, 'Juan Jose', 'Martínez', 3121000833, 'juanjosemartinez83@email.com', 33, 'Pedro Rodríguez', 'Cargo83');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100084, 'Lucína', 'López', 3121000844, 'lucinalopez84@email.com', 34, 'Ana Sánchez', 'Cargo84');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100085, 'Juliana', 'Hernández', 3121000855, 'julianahernandez85@email.com', 35, 'Carlos Pérez', 'Cargo85');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100086, 'Yola', 'Sánchez', 3121000866, 'yolasanchez86@email.com', 36, 'Elena López', 'Cargo86');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100087, 'Josue', 'Martínez', 3121000877, 'josuemartinez87@email.com', 37, 'Pedro Rodríguez', 'Cargo87');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100088, 'Marimar', 'López', 3121000888, 'marimarlopez88@email.com', 38, 'Ana Sánchez', 'Cargo88');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100089, 'Laurina', 'Gómez', 3121000899, 'laurinagomez89@email.com', 39, 'Carlos Pérez', 'Cargo89');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100090, 'Fabian', 'Martínez', 3121000900, 'fabianmartinez90@email.com', 40, 'Elena López', 'Cargo90');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100091, 'Elinaa', 'Hernández', 3121000911, 'elianahernandez91@email.com', 41, 'Pedro Rodríguez', 'Cargo91');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100092, 'Elina', 'García', 3121000922, 'elinagarcia92@email.com', 42, 'Ana Sánchez', 'Cargo92');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100093, 'Giseth', 'Rodríguez', 3121000933, 'gisethrodriguez93@email.com', 43, 'Carlos Pérez', 'Cargo93');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100094, 'Liliana', 'Fernández', 3121000944, 'lilianafernandez94@email.com', 44, 'Elena López', 'Cargo94');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100095, 'Mayra', 'López', 3121000955, 'mayralopez95@email.com', 45, 'Pedro Rodríguez', 'Cargo95');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100096, 'Javier Santiago', 'Sánchez', 3121000966, 'javiersanchez96@email.com', 46, 'Ana Sánchez', 'Cargo96');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100097, 'Ivan', 'Gómez', 3121000977, 'iavangomez97@email.com', 47, 'Carlos Pérez', 'Cargo97');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100098, 'Duvan', 'Martínez', 3121000988, 'duvanmartinez98@email.com', 48, 'Elena López', 'Cargo98');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100099, 'Saray', 'Hernández', 3121000999, 'sarayhernandez99@email.com', 49, 'Pedro Rodríguez', 'Cargo99');
INSERT INTO empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo)
VALUES (111100100, 'Mario', 'Pérez', 3121001000, 'marioperez100@email.com', 50, 'Ana Sánchez', 'Cargo100');

--* Se hace el registro de 50 datos para la tabla de CLIENTE

INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100002, 'Acme Corporation', 'Ana', 'Sánchez', 3121000022, 'Cl. 9 #9-52', 'Amazonas', 'Colombia', 'Manuel Perez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100001, 'GlobalTech Solutions', 'Juan', 'Pérez', 3121000011, 'Cra. 24 #30-8', 'Caldas', 'Colombia', 'Sara Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (21110032, 'Industrias Starlight', 'Lian', 'Sánchez', 3121000333, 'Cra. 14 #21-28', 'Caquetá', 'Colombia', ' Mario Perez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100003, 'Innovaciones rápidas', 'Carlos', 'Gómez', 3121000033, 'Kr 36', 'Casanare', 'Colombia', 'Saray Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100004, 'Sistemas Cuánticos', 'Laura', 'Martínez', 3121000044, 'Cl. 67 Nte. #9 - 96 ', 'Cauca', 'Colombia', 'Duvan Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100005, 'Empresas horizonte','Sofía', 'López', 3121000055, 'Cra. 7a #45-44', 'Cesar', 'Colombia', 'Ivan Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100015, 'Empresas de girasol', 'Casandra', 'Ramos', 3121450055, 'Cra. 3 #29-13', 'Chocó','Colombia', 'Javier Santiago Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (121100006, 'Soluciones CyberMatrix', 'David', 'Hernández', 3121000066, 'Cra. 2 #44-45', 'Córdoba', 'Colombia', 'Mayra Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100007, 'Tecnologías SilverFox', 'Elena', 'García', 3121000077, 'Cl. 19 #49', 'Guainía', 'Colombia', 'Liliana Fernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100008, 'Empresas BlueWave', 'Pablo', 'Rodríguez', 3121000088, 'Cl 9 20-37', 'Guaviare', 'Colombia', 'Giseth Rodrigez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100009, 'Innovaciones de vértice', 'Lucía', 'Fernández', 3121000099, 'Carrera 18 c # 50 a 28', 'Huila', 'Colombia', 'Elina Garcia');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100010, 'Grupo RedSky', 'Marta', 'López', 3121000100, 'Cl. 15 #12a-80 ', 'La guajira', 'Colombia', 'Elinaa Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100011, 'TechNova Inc.', 'Javier', 'Sánchez', 3121000111, 'Cl. 28 #19C-40 ', 'Magdalena', 'Colombia', 'Fabian Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100012, 'Innovaciones GreenScape', 'Carmen', 'Gómez', 3121000122, 'Cra. 31 #40-48', 'Meta', 'Colombia', 'Laurina Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100013, 'Tecnologías GoldenGate', 'Diego', 'Martínez', 3121000133, 'Cl 18 #7-29', 'Nariño', 'Colombia', 'Marimar Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100014, 'Dinámica del Fénix', 'Sara', 'Hernández', 3121000144, 'Calle 22N, Aeropuerto #11-85', 'Norte de Santander', 'Colombia', 'Josue Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211990015, 'Industrias Neptuno', 'Manuel', 'Pérez', 3121000155, 'Cl. 7 #5-59', 'Putumayo', 'Colombia', 'Yola Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100016, 'Sistemas AeroNexx', 'Isabel', 'García', 3121000166, 'Cra 15 #22-42 ', 'Quindío', 'Colombia', 'Juliana Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100017, 'Innovadores pioneros', 'Joaquín', 'López', 3121000177, 'Calle 14 #13-16, Sectir Invico', 'Risaralda', 'Colombia', 'Lucina Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100018, 'Vórtice visionario', 'Cristina', 'Gómez', 3121000188, 'Tr10 A 30-01 School House ', 'San Andrés', 'Colombia', 'Juan Jose Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100019, 'Sistemas de espumoso', 'Jorge', 'Martínez', 3121000199, 'Cra. 33 #55-18 ', 'Santander', 'Colombia', 'Katerin Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100020, 'Innovaciones ecotecnológicas', 'Rosa', 'Hernández', 3121000200, 'Cra. 4 #25G25', 'Sucre', 'Colombia', 'Karla Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100021, 'Tecnologías AlphaWave', 'Daniel', 'Sánchez', 3121000211, 'Cra 3 #69-22', 'Tolima', 'Colombia', 'Carla Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100022, 'Innovaciones Aurora', 'Santiago', 'Gómez', 3121000222, 'Av. Roosevelt #38a- 46', 'Valle del Cauca', 'Colombia', 'Manuela Garcia');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100023, 'Soluciones estelares', 'Sara Lucia', 'Rodríguez', 3121000233, 'Cra. 14 #12-50', 'Vaupés', 'Colombia', 'Joacho Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100024, 'Tecnologías OptiCore', 'Lucía Luisa', 'Martínez', 3121000244, 'Cra. 6 #18-22', 'Vichada', 'Colombia', 'Samuel Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100025, 'Empresas QuantumLeap', 'David Felipe', 'López', 3121000255, 'Cra. 49 #49-55', 'Antioquia', 'Colombia', 'Lucian Garcia');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100026, 'NovaSphere Inc.', 'Ana Maria', 'García', 3121000266, 'Cl. 1 Sur # 74-36', 'Valle del Cauca', 'Colombia', 'Daniela Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100027, 'Soluciones InnovateX', 'Martha', 'Hernández', 3121000277, 'Cl. 21 #12-6', 'Valle del Cauca', 'Colombia', 'Sarai Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100028, 'Tecnologías FusionX', 'Carlos Mario', 'Fernández', 3121000288, 'Cra. 42 #35S-38', 'Antioquia', 'Colombia', 'Carmin Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100029, 'Industrias OmegaPrime', 'Pablo Mario', 'Martínez', 3121000299, 'Cl. 17 #7-75', 'Nariño', 'Colombia', 'Thiago Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (111100030, 'Innovaciones Solaris', 'Lucía Marinaa', 'Gómez', 3121000300, 'Cl. 6 #27-20', 'Tolima', 'Colombia', 'Lauris Martines');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (111100031, 'Sistemas infinitos', 'Andrés Felipe', 'Rodríguez', 3121000311, 'CALLE 6 # 8-60', 'Norte de Santander', 'Colombia', 'Manueli Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (111100032, 'Empresas Xcelerate', 'Isabel Maria', 'Sánchez', 3121000322, 'Cl. 9 #1b-20', 'Huila', 'Colombia', 'Juan Pablo Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100033, 'Soluciones Tierra Verde', 'Joaquín Jose', 'Fernández', 3121880337, 'Cl 10 #6-44', 'Santander', 'Colombia', 'Rosario Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100034, 'Tecnologías de onda dinámica', 'Carmen Maria', 'López', 3121000344, 'Cl. 51 #2b-25', 'Boyacá', 'Colombia', 'Joaqui Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100035, 'Innovaciones de Firebird', 'Rosa Maria', 'Gómez', 3121000355, 'Cl. 4 #9-10', 'Cundinamarca', 'Colombia', 'Danilo Hernandez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100036, 'Grupo NexaTech', 'Diego Martin', 'Sánchez', 3121000366, 'Cra. 9a #14-2 a 14-46', 'Nariño', 'Colombia', 'Luciana Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100037, 'Evolucionar Tech Inc.', 'Lucía Lucia', 'Martínez', 3121000377, 'Cl. 101 # 98A34', 'Antioquia', 'Colombia', 'Carme Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100038, 'Empresas TerraSphere', 'Manuel Felipe', 'Rodríguez', 3121000388, 'Cra. 3 #6-9', 'Huila', 'Colombia', 'Sari Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100039, 'Soluciones SparkTech', 'Eva', 'Fernández', 3121000399, 'Cl. 51 #13-3', 'Atlántico', 'Colombia', 'Manu Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100040, 'Innovaciones hacia el cielo', 'Santiago Julian', 'López', 3121000400, 'Av 13 A #21-35', 'Norte de Santander', 'Colombia', 'Car Rodriguez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100041, 'Tecnologías GalaxyGate', 'Daniel Davis', 'Gómez', 3121000411, 'Cl 15 #3-35', 'Cudinamarca', 'Colombia', 'Luci Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100042, 'Empresas PrimeWave', 'Cristina Mario', 'Martínez', 3121000422, 'Cl. 15 #12a-80', 'La Guajira', 'Colombia', 'Santiage Gomez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100043, 'Sistemas ElementX', 'Jorge Jose', 'Sánchez', 3121000433, 'Cl. 16 #12a-88', 'Antioquia', 'Colombia', 'Laura Lopez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100044, 'VisionCraft Inc.', 'Sara Marina', 'Gómez', 3121000444, 'Cl. 8 #11-10', 'Valle del cauca', 'Colombia', 'Dani Martinez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100045, 'Innovaciones BioNexx', 'Manuel Joaquin', 'López', 3121000455, 'Cl. 5 #14-3', 'Nariño', 'Colombia', 'MariaRosa Garcia');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100046, 'Tecnologías de cuásar', 'Carmen Mariana', 'Martínez', 3121000466, 'CALLE 45 # 8-60', 'Huila', 'Colombia', 'luisCarlos Sanchez');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100047, 'Empresas InnovateSpace', 'Maria Lucía', 'Hernández', 3121000477, 'Cl. 65 #1a-80', 'Boyaca', 'Colombia', 'MarianSara');
INSERT INTO cliente (id_cliente, empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES (211100048, 'Soluciones ApexTech', 'Santiago Luis', 'Sánchez', 3121000488, 'Cl. 1 #3a-80', 'Cundinamarca', 'Colombia', 'Joaquin Nicolas Martinez');
