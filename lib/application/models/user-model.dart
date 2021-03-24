import 'dart:convert';

class UserModel {
  String id;
  String createdAt;
  String name;
  String avatar;

  UserModel({this.id, this.createdAt, this.name, this.avatar});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'name': name,
      'avatar': avatar,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      createdAt: map['createdAt'],
      name: map['name'],
      avatar: map['avatar'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
