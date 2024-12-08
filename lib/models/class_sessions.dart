class ClassSessions {
  int SessionID;
  int? Session;
  String? StartTime;
  String? EndTime;
  String? userId;
  String? RoomID;
  String? ClassID;

  ClassSessions(
      {required this.SessionID,
      this.Session,
      this.StartTime,
      this.EndTime,
      this.userId,
      this.RoomID,
      this.ClassID});

  factory ClassSessions.fromJson(Map<String, dynamic> json) {
    return ClassSessions(
      SessionID: json["SessionID"],
      Session: json["Session"],
      EndTime: json["EndTime"],
      StartTime: json["StartTime"],
      userId: json["userId"],
      RoomID: json["RoomID"],
      ClassID: json["ClassID"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["SessionID"] = SessionID;
    map["Session"] = Session;
    map["EndTime"] = EndTime;
    map["StartTime"] = StartTime;
    map["userId"] = userId;
    map["RoomID"] = RoomID;
    map["ClassID"] = ClassID;
    return map;
  }
}
