class Plan {
  final int userId;    // Clave foránea del usuario y parte de la clave primaria
  final int subjectId; // Clave foránea de la asignatura y parte de la clave primaria
  final int sessionId; // Clave foránea de la sesión y parte de la clave primaria

  Plan({
    required this.userId,
    required this.subjectId,
    required this.sessionId,
  });

  // Convierte un objeto Plan a un Map. Útil para insertar en la base de datos
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'subjectId': subjectId,
      'sessionId': sessionId,
    };
  }

  // Crea un objeto Plan a partir de un Map. Útil para leer de la base de datos
  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      userId: map['userId'],
      subjectId: map['subjectId'],
      sessionId: map['sessionId'],
    );
  }
}
