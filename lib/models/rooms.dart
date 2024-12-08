class Rooms {
  int RoomID;
  String? RoomName;
  int NumberOfComputers;
  String? StandardRAM;
  String? StandardHDD;
  String? StandardCPU;
  String? Status;
  String createdAt;
  String updatedAt;
  String? deletedAt;

  Rooms(
      {required this.RoomID,
      this.RoomName,
      required this.NumberOfComputers,
      this.StandardRAM,
      this.StandardHDD,
      this.StandardCPU,
      this.Status,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});

  factory Rooms.fromJson(Map<String, dynamic> json) {
    return Rooms(
      RoomID: json["RoomID"],
      RoomName: json["RoomName"],
      NumberOfComputers: json["NumberOfComputers"],
      StandardHDD: json["StandardHDD"],
      StandardRAM: json["StandardRAM"],
      StandardCPU: json["StandardCPU"],
      Status: json["Status"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      deletedAt: json["deletedAt"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["RoomID"] = RoomID;
    map["RoomName"] = RoomName;
    map["NumberOfComputers"] = NumberOfComputers;
    map["StandardHDD"] = StandardHDD;
    map["StandardRAM"] = StandardRAM;
    map["StandardCPU"] = StandardCPU;
    map["Status"] = Status;
    map["createdAt"] = createdAt;
    map["updatedAt"] = updatedAt;
    map["deletedAt"] = deletedAt;
    return map;
  }
}
