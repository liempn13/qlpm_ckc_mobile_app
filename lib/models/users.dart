class Users {
  int id;
  String email;
  String name;
  String phone;
  String password;
  String role;
  int? status;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime? deletedAt;

  Users(
      {required this.id,
      required this.email,
      required this.name,
      required this.phone,
      required this.password,
      required this.role,
      this.status,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json["id"],
      email: json["email"],
      name: json["name"],
      phone: json["phone"],
      password: json["password"],
      role: json["role"],
      status: json["status"],
      createdAt: DateTime.parse(json["createdAt"]),
      updatedAt: DateTime.parse(json["updatedAt"]),
      deletedAt: DateTime.parse(json["deletedAt"]),
    );
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["id"] = id;
    map["email"] = email;
    map["name"] = name;
    map["password"] = password;
    map["phone"] = phone;
    map["role"] = role;
    map["status"] = status;
    map["createdAt"] = createdAt;
    map["updatedAt"] = updatedAt;
    map["deletedAt"] = deletedAt;
    return map;
  }
}
