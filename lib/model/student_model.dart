// To parse this JSON data, do
//
//     final studentModel = studentModelFromJson(jsonString);

import 'dart:convert';

List<StudentModel> studentModelFromJson(String str) => List<StudentModel>.from(json.decode(str).map((x) => StudentModel.fromJson(x)));

String studentModelToJson(List<StudentModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StudentModel {
    StudentModel({
        this.id,
        this.name,
        this.regNo,
        this.studentModelClass,
    });

    int? id;
    String? name;
    int? regNo;
    String? studentModelClass;

    factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        id: json["id"],
        name: json["name"],
        regNo: json["reg no"],
        studentModelClass: json["class"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "reg no": regNo,
        "class": studentModelClass,
    };
}
