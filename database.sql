CREATE DATABASE sistema_educativo;
USE sistema_educativo;

-- TABLA: MODALIDAD
CREATE TABLE MODALIDAD (
    id_modalidad INT AUTO_INCREMENT PRIMARY KEY,
    codigo_modalidad VARCHAR(20) NOT NULL UNIQUE,
    nombre_modalidad VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    tipo VARCHAR(50),
    estado VARCHAR(20) DEFAULT 'Activo',
    CONSTRAINT chk_modalidad_estado 
        CHECK (estado IN ('Activo','Inactivo'))
);

-- TABLA: PROGRAMA
CREATE TABLE PROGRAMA (
    id_programa INT AUTO_INCREMENT PRIMARY KEY,
    codigo_programa VARCHAR(20) NOT NULL UNIQUE,
    nombre_programa VARCHAR(200) NOT NULL,
    id_modalidad INT NOT NULL,
    nivel_formacion VARCHAR(50),
    duracion_meses INT NOT NULL,
    descripcion VARCHAR(1000),
    estado VARCHAR(20) DEFAULT 'Activo',
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_programa_estado
        CHECK (estado IN ('Activo','Inactivo')),
    CONSTRAINT fk_programa_modalidad
        FOREIGN KEY (id_modalidad)
        REFERENCES MODALIDAD(id_modalidad)
);

-- TABLA: APRENDIZ
CREATE TABLE APRENDIZ (
    id_aprendiz INT AUTO_INCREMENT PRIMARY KEY,
    numero_documento VARCHAR(20) NOT NULL UNIQUE,
    tipo_documento VARCHAR(10) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(20),
    direccion VARCHAR(200),
    ciudad VARCHAR(100),
    estado VARCHAR(20) DEFAULT 'Activo',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_aprendiz_estado
        CHECK (estado IN ('Activo','Inactivo'))
);

-- TABLA: COMPETENCIA
CREATE TABLE COMPETENCIA (
    id_competencia INT AUTO_INCREMENT PRIMARY KEY,
    codigo_competencia VARCHAR(20) NOT NULL UNIQUE,
    nombre_competencia VARCHAR(200) NOT NULL,
    descripcion VARCHAR(1000),
    horas_estimadas INT NOT NULL,
    nivel VARCHAR(50),
    estado VARCHAR(20) DEFAULT 'Activo',
    CONSTRAINT chk_competencia_estado
        CHECK (estado IN ('Activo','Inactivo'))
);

-- TABLA: INSTRUCTOR
CREATE TABLE INSTRUCTOR (
    id_instructor INT AUTO_INCREMENT PRIMARY KEY,
    numero_documento VARCHAR(20) NOT NULL UNIQUE,
    tipo_documento VARCHAR(10) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    especialidad VARCHAR(100),
    nivel_educacion VARCHAR(50),
    estado VARCHAR(20) DEFAULT 'Activo',
    fecha_vinculacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_instructor_estado
        CHECK (estado IN ('Activo','Inactivo'))
);

-- TABLA: MATRICULA
CREATE TABLE MATRICULA (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aprendiz INT NOT NULL,
    id_programa INT NOT NULL,
    fecha_matricula DATE NOT NULL,
    estado_matricula VARCHAR(20) DEFAULT 'Activa',
    nota_promedio FLOAT DEFAULT 0.0,
    porcentaje_avance INT DEFAULT 0,
    observaciones VARCHAR(500),
    CONSTRAINT chk_nota
        CHECK (nota_promedio BETWEEN 0 AND 5),
    CONSTRAINT chk_avance
        CHECK (porcentaje_avance BETWEEN 0 AND 100),
    CONSTRAINT uq_matricula UNIQUE (id_aprendiz, id_programa),
    CONSTRAINT fk_matricula_aprendiz
        FOREIGN KEY (id_aprendiz)
        REFERENCES APRENDIZ(id_aprendiz),
    CONSTRAINT fk_matricula_programa
        FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA(id_programa)
);

-- TABLA: PROGRAMA_COMPETENCIA
CREATE TABLE PROGRAMA_COMPETENCIA (
    id_programa_competencia INT AUTO_INCREMENT PRIMARY KEY,
    id_programa INT NOT NULL,
    id_competencia INT NOT NULL,
    orden_secuencia INT,
    horas_asignadas INT,
    es_obligatoria VARCHAR(2) DEFAULT 'SI',
    CONSTRAINT chk_obligatoria
        CHECK (es_obligatoria IN ('SI','NO')),
    CONSTRAINT uq_programa_comp UNIQUE (id_programa, id_competencia),
    CONSTRAINT fk_pc_programa
        FOREIGN KEY (id_programa)
        REFERENCES PROGRAMA(id_programa),
    CONSTRAINT fk_pc_competencia
        FOREIGN KEY (id_competencia)
        REFERENCES COMPETENCIA(id_competencia)
);

-- TABLA: INSTRUCTOR_COMPETENCIA
CREATE TABLE INSTRUCTOR_COMPETENCIA (
    id_instructor_competencia INT AUTO_INCREMENT PRIMARY KEY,
    id_instructor INT NOT NULL,
    id_competencia INT NOT NULL,
    fecha_certificacion DATE,
    nivel_dominio VARCHAR(50),
    estado VARCHAR(20) DEFAULT 'Activo',
    CONSTRAINT chk_ic_estado
        CHECK (estado IN ('Activo','Inactivo')),
    CONSTRAINT uq_instructor_comp UNIQUE (id_instructor, id_competencia),
    CONSTRAINT fk_ic_instructor
        FOREIGN KEY (id_instructor)
        REFERENCES INSTRUCTOR(id_instructor),
    CONSTRAINT fk_ic_competencia
        FOREIGN KEY (id_competencia)
        REFERENCES COMPETENCIA(id_competencia)
);


