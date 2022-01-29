// To parse this JSON data, do
//
//     final teacherModel = teacherModelFromJson(jsonString);

import 'dart:convert';

List<TeacherModel> teacherModelFromJson(String str) => List<TeacherModel>.from(json.decode(str).map((x) => TeacherModel.fromJson(x)));

String teacherModelToJson(List<TeacherModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeacherModel {
    TeacherModel({
        this.id,
        this.name,
        this.username,
        this.phone,
        this.address,
        this.image,
    });

    int? id;
    String? name;
    String? username;
    String? phone;
    String? address;
    String? image;

    factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        phone: json["phone"],
        address: json["address"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "phone": phone,
        "address": address,
        "image": image,
    };
}
