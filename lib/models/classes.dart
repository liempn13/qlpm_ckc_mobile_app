class Classes {
  int ClassID;
  String ClassName;
  int? Status;
  int? UserID;
  String LastTime;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  Classes(
      {required this.ClassID,
      required this.ClassName,
      this.Status,
      this.UserID,
      required this.LastTime,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});

  factory Classes.fromJson(Map<String, dynamic> json) {
    return Classes(
      ClassID: json["ClassID"],
      ClassName: json["ClassName"],
      UserID: json["UserID"],
      LastTime: json["LastTime"],
      Status: json["Status"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      deletedAt: json["deletedAt"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["ClassID"] = ClassID;
    map["ClassName"] = ClassName;
    map["UserID"] = UserID;
    map["LastTime"] = LastTime;
    map["Status"] = Status;
    map["createdAt"] = createdAt;
    map["updatedAt"] = updatedAt;
    map["deletedAt"] = deletedAt;
    return map;
  }
}
