// ============================================
// CONSULTA 1
// Competencias con más de 100 horas
// Operador: $gt (mayor que)
// ============================================
db.competencias.find(
  { horas_estimadas: { $gt: 100 } }
);

// ============================================
// CONSULTA 2
// Competencias con 100 horas o más
// Operador: $gte (mayor o igual que)
// ============================================
db.competencias.find(
  { horas_estimadas: { $gte: 100 } }
);

// ============================================
// CONSULTA 3
// Competencias con menos de 100 horas
// Operador: $lt (menor que)
// ============================================
db.competencias.find(
  { horas_estimadas: { $lt: 100 } }
);

// ============================================
// CONSULTA 4
// Competencias con 100 horas o menos
// Operador: $lte (menor o igual que)
// ============================================
db.competencias.find(
  { horas_estimadas: { $lte: 100 } }
);

// ============================================
// CONSULTA 5
// Aprendices con nota mayor a 3.5
// Operador: $gt
// ============================================
db.aprendices.find(
  { "matriculas.nota_promedio": { $gt: 3.5 } }
);

// ============================================
// CONSULTA 6
// Aprendices con nota mayor o igual a 4.0
// Operador: $gte
// ============================================
db.aprendices.find(
  { "matriculas.nota_promedio": { $gte: 4.0 } }
);

// ============================================
// CONSULTA 7
// Aprendices con nota menor a 3.5
// Operador: $lt
// ============================================
db.aprendices.find(
  { "matriculas.nota_promedio": { $lt: 3.5 } }
);

// ============================================
// CONSULTA 8
// Aprendices con avance menor o igual al 50%
// Operador: $lte
// ============================================
db.aprendices.find(
  { "matriculas.porcentaje_avance": { $lte: 50 } }
);

// ============================================
// CONSULTA 9
// Programas con duración mayor a 18 meses
// Operador: $gt
// ============================================
db.programas.find(
  { duracion_meses: { $gt: 18 } }
);

// ============================================
// CONSULTA 10
// Programas con duración menor o igual a 15 meses
// Operador: $lte
// ============================================
db.programas.find(
  { duracion_meses: { $lte: 15 } }
);
