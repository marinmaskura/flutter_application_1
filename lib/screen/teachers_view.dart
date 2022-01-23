import 'dart:js';

import 'package:flutter_application_1/model/teacher_model.dart';
import 'package:flutter_application_1/repositories/teacher_ropo.dart';
import 'package:flutter/material.dart';
class TeacherView extends StatelessWidget {
  const TeacherView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TeacherModel> teacherList = [
      TeacherModel(id: 1, name: 'Abc', education: 'MBBS', img: ''),
      TeacherModel(id: 2, name: 'Abc2', education: 'MBBS', img: ''),
      TeacherModel(id: 3, name: 'Abc2', education: 'MBBS', img: ''),
      TeacherModel(id: 4, name: 'Abc3', education: 'MBBS', img: ''),
      TeacherModel(id: 5, name: 'Abc4', education: 'MBBS', img: ''),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher View'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text('${teacherList.elementAt(index).id}'),
            ),
            title: Text(
              '${teacherList.elementAt(index).name}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
           trailing: Icon(Icons.phone),
            onTap: () async {
              List<TeacherModel> doctors = await teacherRepo.getteacherList();
              print(doctors.length);
              print(doctors[0].name); 
            },
          );
        }
        ),
    );
  }
}