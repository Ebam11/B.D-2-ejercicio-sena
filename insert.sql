USE sistema_educativo;


-- INSERCIÓN DE DATOS: MODALIDAD

INSERT INTO MODALIDAD (codigo_modalidad, nombre_modalidad, descripcion, tipo, estado) VALUES
('MOD001', 'Presencial', 'Formación completamente presencial en instalaciones del centro de formación', 'Presencial', 'Activo'),
('MOD002', 'Virtual', 'Formación 100% virtual a través de plataforma LMS y herramientas digitales', 'Virtual', 'Activo'),
('MOD003', 'Mixta', 'Combinación de sesiones presenciales y virtuales para mayor flexibilidad', 'Híbrida', 'Activo'),
('MOD004', 'A Distancia', 'Formación con encuentros presenciales esporádicos y seguimiento virtual', 'Híbrida', 'Activo');

-- INSERCIÓN DE DATOS: APRENDIZ

INSERT INTO APRENDIZ (numero_documento, tipo_documento, nombres, apellidos, fecha_nacimiento, telefono, direccion, ciudad, estado) VALUES
-- Aprendices de Bogotá
('1010234567', 'CC', 'María', 'Gómez Pérez', '2002-05-15', '3101234567', 'Calle 10 #20-30', 'Bogotá', 'Activo'),
('1015678901', 'CC', 'Laura', 'Hernández Ruiz', '2001-12-05', '3145678901', 'Carrera 20 #34-78', 'Bogotá', 'Activo'),
('1019876543', 'CC', 'Andrés', 'Morales Castro', '2003-06-18', '3189876543', 'Avenida 68 #45-23', 'Bogotá', 'Activo'),
('1012345678', 'TI', 'Valentina', 'Torres Méndez', '2005-03-22', '3112345678', 'Calle 80 #12-34', 'Bogotá', 'Activo'),

-- Aprendices de Medellín
('1020345678', 'CC', 'Carlos', 'Rodríguez López', '2001-08-22', '3209876543', 'Carrera 15 #45-67', 'Medellín', 'Activo'),
('1060789012', 'TI', 'Marcos', 'Castro Vargas', '2004-07-20', '3198765432', 'Calle 25 #15-30', 'Medellín', 'Activo'),
('1023456789', 'CC', 'Isabella', 'Ramírez Soto', '2002-11-30', '3023456789', 'Carrera 70 #23-45', 'Medellín', 'Activo'),

-- Aprendices de Cali
('1030456789', 'CC', 'Ana', 'Martínez Silva', '2003-11-10', '3156789012', 'Avenida 30 #12-45', 'Cali', 'Activo'),
('1070890123', 'CC', 'Sofía', 'Ramírez Díaz', '2002-09-14', '3176543210', 'Avenida 40 #20-50', 'Cali', 'Activo'),
('1034567890', 'CC', 'Camilo', 'Gutiérrez Peña', '2001-04-08', '3134567890', 'Calle 5 #67-89', 'Cali', 'Activo'),

-- Aprendices de otras ciudades
('1040567890', 'CC', 'Mario', 'Sánchez Torres', '2002-03-18', '3187654321', 'Calle 50 #23-56', 'Barranquilla', 'Activo'),
('1080901234', 'CC', 'Diego', 'Jiménez Cruz', '2003-04-25', '3102345678', 'Carrera 10 #30-40', 'Cartagena', 'Activo'),
('1045678901', 'CC', 'Juliana', 'Ospina Ríos', '2002-07-12', '3145678901', 'Avenida 15 #20-30', 'Manizales', 'Activo'),
('1056789012', 'CC', 'Sebastián', 'Vargas Luna', '2001-10-25', '3156789012', 'Calle 30 #40-50', 'Pereira', 'Activo'),
('1067890123', 'TI', 'Gabriela', 'Castillo Vega', '2004-12-15', '3167890123', 'Carrera 5 #10-20', 'Bucaramanga', 'Activo');

-- INSERCIÓN DE DATOS: PROGRAMA

INSERT INTO PROGRAMA (codigo_programa, nombre_programa, id_modalidad, nivel_formacion, duracion_meses, descripcion, estado) VALUES
-- Programas de Desarrollo de Software
('PROG001', 'Técnico en Programación de Software', 1, 'Técnico', 18, 'Programa enfocado en fundamentos de programación, desarrollo de aplicaciones básicas y lógica computacional', 'Activo'),
('PROG002', 'Tecnólogo en Análisis y Desarrollo de Software', 2, 'Tecnólogo', 24, 'Programa avanzado en análisis, diseño y desarrollo de aplicaciones empresariales', 'Activo'),
('PROG003', 'Tecnólogo en Desarrollo de Aplicaciones Web', 3, 'Tecnólogo', 22, 'Especialización en desarrollo frontend, backend y bases de datos para aplicaciones web', 'Activo'),

-- Programas de Infraestructura TI
('PROG004', 'Técnico en Sistemas', 1, 'Técnico', 15, 'Programa de soporte técnico, mantenimiento de equipos y redes básicas', 'Activo'),
('PROG005', 'Tecnólogo en Gestión de Redes de Datos', 3, 'Tecnólogo', 22, 'Programa especializado en diseño, implementación y administración de redes empresariales', 'Activo'),
('PROG006', 'Técnico en Seguridad Informática', 2, 'Técnico', 16, 'Fundamentos de ciberseguridad, protección de datos y análisis de vulnerabilidades', 'Activo'),

-- Programas de Diseño y Multimedia
('PROG007', 'Técnico en Diseño Web', 2, 'Técnico', 12, 'Programa de desarrollo frontend, diseño UX/UI y creación de experiencias digitales', 'Activo'),
('PROG008', 'Tecnólogo en Producción Multimedia', 3, 'Tecnólogo', 20, 'Creación de contenidos digitales, animación, video y diseño gráfico', 'Activo'),

-- Programas de Gestión
('PROG009', 'Tecnólogo en Gestión de Proyectos TI', 2, 'Tecnólogo', 18, 'Metodologías ágiles, gestión de equipos y dirección de proyectos tecnológicos', 'Activo'),
('PROG010', 'Técnico en Soporte y Mantenimiento de Equipos', 1, 'Técnico', 14, 'Diagnóstico, reparación y mantenimiento de hardware y software', 'Activo');


-- INSERCIÓN DE DATOS: COMPETENCIA

INSERT INTO COMPETENCIA (codigo_competencia, nombre_competencia, descripcion, horas_estimadas, nivel, estado) VALUES
-- Competencias de Programación
('COMP001', 'Fundamentos de Programación', 'Algoritmos, estructuras de datos, lógica de programación y resolución de problemas', 120, 'Básico', 'Activo'),
('COMP002', 'Programación Orientada a Objetos', 'Principios de POO, encapsulamiento, herencia, polimorfismo con Java/Python', 150, 'Intermedio', 'Activo'),
('COMP003', 'Estructuras de Datos Avanzadas', 'Árboles, grafos, tablas hash, algoritmos de ordenamiento y búsqueda', 100, 'Avanzado', 'Activo'),
('COMP004', 'Desarrollo de Software Ágil', 'Scrum, Kanban, desarrollo iterativo e incremental', 80, 'Intermedio', 'Activo'),

-- Competencias de Desarrollo Web
('COMP005', 'Desarrollo Web Frontend', 'HTML5, CSS3, JavaScript, frameworks modernos (React, Vue, Angular)', 180, 'Intermedio', 'Activo'),
('COMP006', 'Desarrollo Web Backend', 'Node.js, Python Django/Flask, desarrollo de APIs RESTful', 160, 'Avanzado', 'Activo'),
('COMP007', 'Diseño UX/UI', 'Principios de diseño, wireframing, prototipado, experiencia de usuario', 90, 'Intermedio', 'Activo'),
('COMP008', 'Responsive Web Design', 'Diseño adaptativo, mobile-first, CSS frameworks (Bootstrap, Tailwind)', 70, 'Básico', 'Activo'),

-- Competencias de Bases de Datos
('COMP009', 'Bases de Datos Relacionales', 'Diseño de bases de datos, SQL, normalización, MySQL/PostgreSQL', 100, 'Intermedio', 'Activo'),
('COMP010', 'Bases de Datos NoSQL', 'MongoDB, Redis, Cassandra, modelado de datos no relacionales', 85, 'Avanzado', 'Activo'),

-- Competencias de Infraestructura
('COMP011', 'Redes de Computadores', 'Protocolos TCP/IP, configuración de routers y switches, troubleshooting', 110, 'Intermedio', 'Activo'),
('COMP012', 'Administración de Servidores Linux', 'Shell scripting, gestión de servicios, seguridad en Linux', 95, 'Intermedio', 'Activo'),
('COMP013', 'Administración de Servidores Windows', 'Active Directory, PowerShell, políticas de grupo', 95, 'Intermedio', 'Activo'),
('COMP014', 'Virtualización y Cloud Computing', 'VMware, Docker, Kubernetes, AWS/Azure básico', 120, 'Avanzado', 'Activo'),

-- Competencias de Seguridad
('COMP015', 'Seguridad Informática', 'Principios de ciberseguridad, análisis de vulnerabilidades, ethical hacking básico', 90, 'Avanzado', 'Activo'),
('COMP016', 'Criptografía Aplicada', 'Algoritmos de cifrado, certificados digitales, PKI', 75, 'Avanzado', 'Activo'),

-- Competencias de Gestión
('COMP017', 'Gestión de Proyectos TI', 'PMI, metodologías ágiles, planificación y control de proyectos', 80, 'Avanzado', 'Activo'),
('COMP018', 'Análisis de Requerimientos', 'Levantamiento de requisitos, casos de uso, historias de usuario', 70, 'Intermedio', 'Activo'),

-- Competencias Transversales
('COMP019', 'Control de Versiones con Git', 'Git, GitHub, GitLab, flujos de trabajo colaborativos', 50, 'Básico', 'Activo'),
('COMP020', 'Testing y Calidad de Software', 'Pruebas unitarias, integración, TDD, automatización de pruebas', 85, 'Intermedio', 'Activo');


-- INSERCIÓN DE DATOS: INSTRUCTOR

INSERT INTO INSTRUCTOR (numero_documento, tipo_documento, nombres, apellidos, email, telefono, especialidad, nivel_educacion, estado) VALUES
-- Instructores de Programación
('40123456', 'CC', 'Pedro', 'González Medina', 'pedro.gonzalez@educativo.edu.co', '3201234567', 'Programación', 'Maestría', 'Activo'),
('50234567', 'CC', 'Andrea', 'López Castillo', 'andrea.lopez@educativo.edu.co', '3159876543', 'Desarrollo Web', 'Especialización', 'Activo'),
('80567890', 'CC', 'Luis', 'Vargas Mendoza', 'luis.vargas@educativo.edu.co', '3198765432', 'Desarrollo de Software', 'Maestría', 'Activo'),
('90678901', 'CC', 'Claudia', 'Mejía Ortiz', 'claudia.mejia@educativo.edu.co', '3109876543', 'Ingeniería de Software', 'Doctorado', 'Activo'),

-- Instructores de Bases de Datos
('60345678', 'CC', 'Jorge', 'Mora Quintero', 'jorge.mora@educativo.edu.co', '3187654321', 'Bases de Datos', 'Maestría', 'Activo'),
('91789012', 'CC', 'Patricia', 'Suárez Gómez', 'patricia.suarez@educativo.edu.co', '3191234567', 'Arquitectura de Datos', 'Especialización', 'Activo'),

-- Instructores de Infraestructura y Redes
('70456789', 'CC', 'Diana', 'Rojas Pérez', 'diana.rojas@educativo.edu.co', '3145678901', 'Redes y Seguridad', 'Doctorado', 'Activo'),
('92890123', 'CC', 'Fernando', 'Acosta Ruiz', 'fernando.acosta@educativo.edu.co', '3192345678', 'Infraestructura TI', 'Maestría', 'Activo'),
('93901234', 'CC', 'Gabriela', 'Cortés Lara', 'gabriela.cortes@educativo.edu.co', '3193456789', 'Sistemas Operativos', 'Especialización', 'Activo'),

-- Instructores de Diseño
('94012345', 'CC', 'Roberto', 'Silva Parra', 'roberto.silva@educativo.edu.co', '3194567890', 'Diseño UX/UI', 'Profesional', 'Activo'),
('95123456', 'CC', 'Marcela', 'Ángel Torres', 'marcela.angel@educativo.edu.co', '3195678901', 'Diseño Gráfico', 'Especialización', 'Activo'),

-- Instructores de Gestión
('96234567', 'CC', 'Hernán', 'Zapata Cruz', 'hernan.zapata@educativo.edu.co', '3196789012', 'Gestión de Proyectos', 'Maestría', 'Activo'),
('97345678', 'CC', 'Carolina', 'Restrepo Díaz', 'carolina.restrepo@educativo.edu.co', '3197890123', 'Análisis de Negocios', 'Especialización', 'Activo');


-- INSERCIÓN DE DATOS: MATRICULA

INSERT INTO MATRICULA (id_aprendiz, id_programa, fecha_matricula, estado_matricula, nota_promedio, porcentaje_avance, observaciones) VALUES
-- Matrículas del primer semestre 2024
(1, 1, '2024-02-01', 'Activa', 4.20, 65, 'Buen desempeño académico, participación activa'),
(2, 2, '2024-02-01', 'Activa', 3.80, 55, 'Estudiante regular, cumple con entregas'),
(3, 4, '2024-03-15', 'Activa', 4.50, 70, 'Excelente rendimiento, colaborativo'),
(4, 1, '2024-02-01', 'Activa', 3.20, 45, 'Necesita refuerzo en algunas áreas'),
(5, 5, '2024-01-20', 'Activa', 4.00, 60, 'Buen avance, destaca en redes'),
(6, 7, '2024-04-10', 'Activa', 3.90, 40, 'Creativo en diseño, participación activa'),
(7, 2, '2024-02-01', 'Activa', 4.30, 68, 'Destacado en programación orientada a objetos'),
(8, 4, '2024-03-15', 'Activa', 3.60, 52, 'Cumple con entregas, mejorando continuamente'),
(9, 3, '2024-02-15', 'Activa', 4.10, 58, 'Buen manejo de tecnologías web'),
(10, 6, '2024-03-01', 'Activa', 3.75, 48, 'Interés marcado en seguridad informática'),
(11, 8, '2024-02-20', 'Activa', 4.25, 62, 'Excelente en producción multimedia'),
(12, 9, '2024-01-15', 'Activa', 3.95, 70, 'Liderazgo en proyectos grupales'),
(13, 10, '2024-04-05', 'Activa', 3.50, 35, 'Buen manejo de hardware'),
(14, 3, '2024-02-10', 'Activa', 4.40, 72, 'Sobresaliente en desarrollo web'),
(15, 5, '2024-03-20', 'Activa', 3.85, 50, 'Sólido conocimiento en redes');

-- INSERCIÓN DE DATOS: PROGRAMA_COMPETENCIA

INSERT INTO PROGRAMA_COMPETENCIA (id_programa, id_competencia, orden_secuencia, horas_asignadas, es_obligatoria) VALUES
-- Técnico en Programación de Software
(1, 1, 1, 120, 'SI'),   -- Fundamentos de Programación
(1, 2, 2, 150, 'SI'),   -- POO
(1, 9, 3, 100, 'SI'),   -- Bases de Datos Relacionales
(1, 19, 4, 50, 'SI'),   -- Git

-- Tecnólogo en Análisis y Desarrollo de Software
(2, 1, 1, 100, 'SI'),   -- Fundamentos
(2, 2, 2, 140, 'SI'),   -- POO
(2, 3, 3, 100, 'SI'),   -- Estructuras de Datos Avanzadas
(2, 9, 4, 95, 'SI'),    -- BD Relacionales
(2, 6, 5, 160, 'SI'),   -- Backend
(2, 4, 6, 80, 'SI'),    -- Desarrollo Ágil
(2, 20, 7, 85, 'NO'),   -- Testing

-- Tecnólogo en Desarrollo de Aplicaciones Web
(3, 5, 1, 180, 'SI'),   -- Frontend
(3, 6, 2, 160, 'SI'),   -- Backend
(3, 9, 3, 100, 'SI'),   -- BD Relacionales
(3, 7, 4, 90, 'SI'),    -- UX/UI
(3, 8, 5, 70, 'SI'),    -- Responsive Design
(3, 19, 6, 50, 'SI'),   -- Git

-- Técnico en Sistemas
(4, 1, 1, 80, 'SI'),    -- Fundamentos
(4, 11, 2, 110, 'SI'),  -- Redes
(4, 13, 3, 95, 'SI'),   -- Windows Server
(4, 15, 4, 90, 'NO'),   -- Seguridad

-- Tecnólogo en Gestión de Redes de Datos
(5, 11, 1, 120, 'SI'),  -- Redes
(5, 12, 2, 95, 'SI'),   -- Linux
(5, 13, 3, 95, 'SI'),   -- Windows Server
(5, 14, 4, 120, 'SI'),  -- Virtualización y Cloud
(5, 15, 5, 100, 'SI'),  -- Seguridad

-- Técnico en Seguridad Informática
(6, 15, 1, 120, 'SI'),  -- Seguridad Informática
(6, 16, 2, 75, 'SI'),   -- Criptografía
(6, 11, 3, 90, 'SI'),   -- Redes
(6, 12, 4, 80, 'NO'),   -- Linux

-- Técnico en Diseño Web
(7, 5, 1, 150, 'SI'),   -- Frontend
(7, 7, 2, 90, 'SI'),    -- UX/UI
(7, 8, 3, 70, 'SI'),    -- Responsive Design

-- Tecnólogo en Producción Multimedia
(8, 7, 1, 110, 'SI'),   -- UX/UI
(8, 5, 2, 120, 'SI'),   -- Frontend
(8, 8, 3, 70, 'NO'),    -- Responsive Design

-- Tecnólogo en Gestión de Proyectos TI
(9, 17, 1, 100, 'SI'),  -- Gestión de Proyectos
(9, 18, 2, 90, 'SI'),   -- Análisis de Requerimientos
(9, 4, 3, 80, 'SI'),    -- Desarrollo Ágil

-- Técnico en Soporte y Mantenimiento
(10, 1, 1, 60, 'SI'),   -- Fundamentos
(10, 13, 2, 80, 'SI'),  -- Windows Server
(10, 11, 3, 70, 'NO');  -- Redes

-- INSERCIÓN DE DATOS: INSTRUCTOR_COMPETENCIA

INSERT INTO INSTRUCTOR_COMPETENCIA (id_instructor, id_competencia, fecha_certificacion, nivel_dominio, estado) VALUES
-- Instructor 1: Pedro González (Programación)
(1, 1, '2020-06-15', 'Experto', 'Activo'),
(1, 2, '2021-03-20', 'Experto', 'Activo'),
(1, 3, '2021-09-10', 'Avanzado', 'Activo'),
(1, 4, '2022-01-15', 'Intermedio', 'Activo'),

-- Instructor 2: Andrea López (Desarrollo Web)
(2, 5, '2019-08-10', 'Experto', 'Activo'),
(2, 6, '2020-11-25', 'Avanzado', 'Activo'),
(2, 7, '2021-04-18', 'Intermedio', 'Activo'),
(2, 8, '2020-02-22', 'Experto', 'Activo'),

-- Instructor 3: Jorge Mora (Bases de Datos)
(3, 9, '2018-05-15', 'Experto', 'Activo'),
(3, 10, '2020-07-20', 'Avanzado', 'Activo'),
(3, 6, '2019-11-30', 'Intermedio', 'Activo'),

-- Instructor 4: Diana Rojas (Redes y Seguridad)
(4, 11, '2019-09-30', 'Experto', 'Activo'),
(4, 12, '2020-02-14', 'Experto', 'Activo'),
(4, 15, '2018-12-10', 'Experto', 'Activo'),
(4, 16, '2020-08-25', 'Avanzado', 'Activo'),

-- Instructor 5: Luis Vargas (Desarrollo de Software)
(5, 2, '2021-07-18', 'Experto', 'Activo'),
(5, 6, '2022-01-22', 'Experto', 'Activo'),
(5, 20, '2021-11-05', 'Avanzado', 'Activo'),
(5, 19, '2020-09-15', 'Experto', 'Activo'),

-- Instructor 6: Claudia Mejía (Ingeniería de Software)
(6, 3, '2019-05-20', 'Experto', 'Activo'),
(6, 4, '2020-03-15', 'Experto', 'Activo'),
(6, 18, '2021-06-10', 'Avanzado', 'Activo'),
(6, 20, '2020-12-08', 'Experto', 'Activo'),

-- Instructor 7: Patricia Suárez (Arquitectura de Datos)
(7, 9, '2019-08-22', 'Experto', 'Activo'),
(7, 10, '2021-02-18', 'Experto', 'Activo'),

-- Instructor 8: Fernando Acosta (Infraestructura TI)
(8, 11, '2020-04-12', 'Avanzado', 'Activo'),
(8, 12, '2019-10-25', 'Experto', 'Activo'),
(8, 13, '2020-01-30', 'Experto', 'Activo'),
(8, 14, '2021-05-14', 'Avanzado', 'Activo'),

-- Instructor 9: Gabriela Cortés (Sistemas Operativos)
(9, 12, '2020-07-08', 'Experto', 'Activo'),
(9, 13, '2019-12-15', 'Experto', 'Activo'),

-- Instructor 10: Roberto Silva (Diseño UX/UI)
(10, 7, '2020-09-20', 'Experto', 'Activo'),
(10, 8, '2021-03-12', 'Avanzado', 'Activo'),
(10, 5, '2020-11-18', 'Intermedio', 'Activo'),

-- Instructor 11: Marcela Ángel (Diseño Gráfico)
(11, 7, '2019-06-25', 'Experto', 'Activo'),
(11, 8, '2020-02-10', 'Experto', 'Activo'),

-- Instructor 12: Hernán Zapata (Gestión de Proyectos)
(12, 17, '2019-04-15', 'Experto', 'Activo'),
(12, 18, '2020-08-20', 'Avanzado', 'Activo'),
(12, 4, '2021-01-10', 'Experto', 'Activo'),

-- Instructor 13: Carolina Restrepo (Análisis de Negocios)
(13, 18, '2020-05-18', 'Experto', 'Activo'),
(13, 17, '2021-09-22', 'Intermedio', 'Activo'),
(13, 4, '2020-10-30', 'Avanzado', 'Activo');