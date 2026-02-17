USE sistema_educativo;

-- ============================================
-- CONSULTA 1
-- Buscar aprendices que se llamen "Mar" y estén activos
-- Operadores: LIKE, AND
-- ============================================
SELECT 
    id_aprendiz,
    nombres,
    apellidos,
    numero_documento,
    ciudad,
    estado
FROM APRENDIZ
WHERE nombres LIKE 'Mar%'
  AND estado = 'Activo';

-- CONSULTA 2
-- Buscar aprendices de Bogotá o Medellín
-- Operadores: OR
SELECT 
    nombres,
    apellidos,
    numero_documento,
    ciudad,
    telefono
FROM APRENDIZ
WHERE ciudad LIKE '%Bogotá%'
   OR ciudad LIKE '%Medellín%';

-- CONSULTA 3
-- Buscar programas que sean Técnico o Tecnólogo y estén activos
-- Operadores: OR, AND

SELECT 
    codigo_programa,
    nombre_programa,
    nivel_formacion,
    duracion_meses,
    estado
FROM PROGRAMA
WHERE (nivel_formacion LIKE '%Técnico%'
   OR nivel_formacion LIKE '%Tecnólogo%')
  AND estado = 'Activo';


-- CONSULTA 4
-- Buscar instructores de especialidad Programación o Desarrollo
-- Operadores: LIKE, OR

SELECT 
    nombres,
    apellidos,
    email,
    especialidad,
    nivel_educacion
FROM INSTRUCTOR
WHERE especialidad LIKE '%Programación%'
   OR especialidad LIKE '%Desarrollo%';


-- CONSULTA 5
-- Buscar competencias con más de 100 horas y que estén activas
-- Operadores: AND

SELECT 
    codigo_competencia,
    nombre_competencia,
    horas_estimadas,
    nivel,
    estado
FROM COMPETENCIA
WHERE horas_estimadas > 100
  AND estado = 'Activo';


-- CONSULTA 6
-- Buscar matrículas con nota mayor a 3.5 y avance mayor al 50%
-- Operadores: AND

SELECT 
    id_matricula,
    id_aprendiz,
    id_programa,
    fecha_matricula,
    nota_promedio,
    porcentaje_avance,
    estado_matricula
FROM MATRICULA
WHERE nota_promedio > 3.5
  AND porcentaje_avance > 50;


-- CONSULTA 7
-- Buscar aprendices con número de documento que contenga "10"
-- y que sean de Bogotá o Cali
-- Operadores: LIKE, AND, OR

SELECT 
    nombres,
    apellidos,
    numero_documento,
    ciudad,
    estado
FROM APRENDIZ
WHERE numero_documento LIKE '%10%'
  AND (ciudad LIKE '%Bogotá%'
   OR ciudad LIKE '%Cali%');


-- CONSULTA 8
-- Buscar programas virtuales o mixtos con duración menor a 18 meses
-- Operadores: OR, AND, LIKE

SELECT 
    p.codigo_programa,
    p.nombre_programa,
    p.duracion_meses,
    p.nivel_formacion,
    m.nombre_modalidad
FROM PROGRAMA p
JOIN MODALIDAD m ON p.id_modalidad = m.id_modalidad
WHERE (m.nombre_modalidad LIKE '%Virtual%'
   OR m.nombre_modalidad LIKE '%Mixta%')
  AND p.duracion_meses < 18;


-- CONSULTA 9
-- Buscar instructores con Maestría o Doctorado que estén activos
-- Operadores: OR, AND

SELECT 
    nombres,
    apellidos,
    email,
    especialidad,
    nivel_educacion,
    estado
FROM INSTRUCTOR
WHERE (nivel_educacion LIKE '%Maestría%'
   OR nivel_educacion LIKE '%Doctorado%')
  AND estado = 'Activo';


-- CONSULTA 10
-- Buscar aprendices con matrícula activa y nota menor a 3.0
-- Operadores: AND

SELECT 
    m.id_matricula,
    a.nombres,
    a.apellidos,
    p.nombre_programa,
    m.nota_promedio,
    m.porcentaje_avance,
    m.observaciones
FROM MATRICULA m
JOIN APRENDIZ a ON m.id_aprendiz = a.id_aprendiz
JOIN PROGRAMA p ON m.id_programa = p.id_programa
WHERE m.estado_matricula = 'Activa'
  AND m.nota_promedio < 3.0;

