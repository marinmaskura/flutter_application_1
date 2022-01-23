

import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/student_model.dart';
import 'package:flutter_application_1/model/teacher_model.dart';
import 'package:flutter_application_1/repositories/student_repo.dart';
import 'package:flutter_application_1/model/department_models.dart';

class StudentView extends StatelessWidget {
  const StudentView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Department> deptlist = [
        Department(id: 1, name: "Class One", img: ""),
        Department(id: 1, name: "Class Two", img: ""),
        Department(id: 1, name: "Class Three", img: ""),
        Department(id: 1, name: "Class Four", img: ""),
        Department(id: 1, name: "Class Five", img: ""),
        Department(id: 1, name: "Class Six", img: ""),
        Department(id: 1, name: "Class Seven", img: ""),
        Department(id: 1, name: "Class Eight", img: ""),
        Department(id: 1, name: "Class Nine", img: ""),
        Department(id: 1, name: "Class Ten", img: ""),
      ] ; 
    return Scaffold(
      
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Student')), 
      leading: ElevatedButton(onPressed:  (){
        Navigator.pushNamed(context, '/');
      }, child: Icon(Icons.arrow_back),
      )     
      ),
      body: FutureBuilder(
        future: StudentRepo.getStudentList(),
        builder: (context, snapshot) {
          List<StudentModel> stu = snapshot.data as List<StudentModel>;
          print(stu.length);
          return ListView.builder(
            itemCount: stu.length,
            itemBuilder: (context, index) {
              StudentModel student = stu.elementAt(index);
              return ListTile(
                title: Text('${student.name}'),
                // leading: CircleAvatar(
                //   child: 
                // ),
              );
              
            }
            );
        }
        )
    );
  }
}