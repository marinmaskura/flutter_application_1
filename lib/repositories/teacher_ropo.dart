import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/teacher_model.dart';

class teacherRepo{
  static Future<List<TeacherModel>> getteacherList() async{
    final respose = await rootBundle.loadString('assets/json/teacher_list.json');
    if (respose !=null) {List<dynamic> teacher = await json.decode(respose);
    List<TeacherModel> teacherList = 
    teacher.map((e) => TeacherModel.fromJson(e)).toList();
      return teacherList;
    } else{
      return [];
    }
  }
}