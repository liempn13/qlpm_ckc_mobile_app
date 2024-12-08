class Attendances {
  int AttendanceID;
  String StudentID;
  String SessionID;
  String Present;

  Attendances(
      {required this.AttendanceID,
      required this.StudentID,
      required this.SessionID,
      required this.Present});

  factory Attendances.fromJson(Map<String, dynamic> json) {
    return Attendances(
      AttendanceID: json["AttendanceID"],
      StudentID: json["StudentID"],
      SessionID: json["SessionID"],
      Present: json["Present"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["AttendanceID"] = AttendanceID;
    map["StudentID"] = StudentID;
    map["SessionID"] = SessionID;
    map["Present"] = Present;
    return map;
  }
}
