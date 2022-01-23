import 'package:flutter_application_1/model/student_model.dart';
import 'package:flutter/services.dart';

class StudentRepo {
  static Future<List<StudentModel>> getStudentList() async{
    final response =
    await rootBundle.loadString('assets/json/student_list.json');
    if (response == null) {
      return [];
    } else {
      List<StudentModel> user= studentModelFromJson(response);
      return user;
    }
  }
}