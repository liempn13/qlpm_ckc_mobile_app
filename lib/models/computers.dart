class Computers {
  int ID;
  int RoomID;
  String ComputerName;
  String RAM;
  String HDD;
  String CPU;
  String LastTime;

  Computers({
    required this.ID,
    required this.RoomID,
    required this.ComputerName,
    required this.RAM,
    required this.HDD,
    required this.CPU,
    required this.LastTime,
  });

  factory Computers.fromJson(Map<String, dynamic> json) {
    return Computers(
      ID: json["ID"],
      RoomID: json["RoomID"],
      ComputerName: json["ComputerName"],
      HDD: json["HDD"],
      RAM: json["RAM"],
      CPU: json["CPU"],
      LastTime: json["LastTime"],
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["ID"] = ID;
    map["RoomID"] = RoomID;
    map["ComputerName"] = ComputerName;
    map["HDD"] = HDD;
    map["RAM"] = RAM;
    map["CPU"] = CPU;
    map["LastTime"] = LastTime;
    return map;
  }
}
