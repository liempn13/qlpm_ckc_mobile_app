class ClassesStudent {
  int id;
  String? ClassID;
  String? StudentID;

  ClassesStudent({
    required this.id,
    this.ClassID,
    this.StudentID,
  });

  factory ClassesStudent.fromJson(Map<String, dynamic> json) {
    return ClassesStudent(
      id: json["id"],
      StudentID: json["StudentID"],
      ClassID: json["ClassID"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["id"] = id;
    map["StudentID"] = StudentID;
    map["ClassID"] = ClassID;
    return map;
  }
}
