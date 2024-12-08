class Students {
  int StudentID;
  int FirstName;
  String LastName;
  String LastTime;

  Students({
    required this.StudentID,
    required this.FirstName,
    required this.LastName,
    required this.LastTime,
  });

  factory Students.fromJson(Map<String, dynamic> json) {
    return Students(
      StudentID: json["StudentID"],
      FirstName: json["FirstName"],
      LastName: json["LastName"],
      LastTime: json["LastTime"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["StudentID"] = StudentID;
    map["FirstName"] = FirstName;
    map["LastName"] = LastName;
    map["LastTime"] = LastTime;
    return map;
  }
}
