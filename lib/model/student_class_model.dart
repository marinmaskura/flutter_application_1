// To parse this JSON data, do
//
//     final studentList = studentListFromJson(jsonString);

import 'dart:convert';

List<StudentList> studentListFromJson(String str) => List<StudentList>.from(json.decode(str).map((x) => StudentList.fromJson(x)));

String studentListToJson(List<StudentList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StudentList {
    StudentList({
        this.id,
        this.className,
        this.studentList,
    });

    int? id;
    String? className;
    List<StudentListElement>? studentList;

    factory StudentList.fromJson(Map<String, dynamic> json) => StudentList(
        id: json["id"],
        className: json["class_name"],
        studentList: List<StudentListElement>.from(json["student_list"].map((x) => StudentListElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "class_name": className,
        "student_list": List<dynamic>.from(studentList!.map((x) => x.toJson())),
    };
}

class StudentListElement {
    StudentListElement({
        this.studentId,
        this.name,
        this.roll,
    });

    int? studentId;
    String? name;
    String? roll;

    factory StudentListElement.fromJson(Map<String, dynamic> json) => StudentListElement(
        studentId: json["student id"],
        name: json["name"],
        roll: json["roll"],
    );

    Map<String, dynamic> toJson() => {
        "student id": studentId,
        "name": name,
        "roll": roll,
    };
}
