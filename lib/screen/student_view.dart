

import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/student_class_model.dart';
import 'package:flutter_application_1/repositories/student_class_repo.dart';


class StudentView extends StatelessWidget {
  const StudentView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade500,
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Class')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: FutureBuilder(
        future: StudentClassRepo.getStudentList(),
        builder: (context, snapshot) {
          List<StudentList> stu = snapshot.data as List<StudentList>;
          print(stu.length);
          return ListView.builder(
            itemCount: stu.length,
            itemBuilder: (context, index) {
              StudentList student = stu.elementAt(index);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/studentdetailsview',arguments:stu.elementAt(index).studentList);
                }, child: ListTile(
                  leading:CircleAvatar(child: Text('${student.id}',
                  style: TextStyle(  
                      color: Colors.green.shade900,)
                  ),
                  backgroundColor: Colors.white,
                  ), 
                  title: Text('${student.className}',
                  style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 20.0)
                  ), 
                    
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                    primary: Colors.green.shade900,
                    onPrimary: Colors.white,
  
                  // side: BorderSide(color: Colors.grey, width: 5),
                  shadowColor: Colors.red,
                  elevation: 5,
                ),                
                ),
              );              
            }
            );
        }
        )
    );
  }
}