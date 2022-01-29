import 'package:flutter_application_1/model/student_class_model.dart';

import 'package:flutter/services.dart';

class StudentClassRepo {
  static Future<List<StudentList>> getStudentList() async{
    final jsonData =
    await rootBundle.loadString('assets/json/student_class_list.json');
    if (jsonData == null) {
      print('if cond ekhane');
      return [];
    } else {
      print('if cond ekhane');
      
      return studentListFromJson(jsonData);
    }
  }
}