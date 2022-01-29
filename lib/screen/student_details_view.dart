

import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/student_class_model.dart';


class StudentDetailsView extends StatelessWidget {
  const StudentDetailsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<StudentListElement> studentlist=ModalRoute.of(context)!.settings.arguments as List<StudentListElement>;
    return Scaffold(
      // backgroundColor: Colors.grey.shade500,
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Student List')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
          
    
      body: ListView.builder(
        itemCount: studentlist.length,
        itemBuilder: (context, index) {
          return Container(            
            decoration: BoxDecoration(
              
             color: Colors.white,
            ),
            child: ListTile(
              leading: CircleAvatar(child: Text('${studentlist.elementAt(index).roll}',
                  style: TextStyle(  
                      color: Colors.white,)
                      ),
                  backgroundColor: Colors.green.shade900,
              ),
              title: Text('Student Name: ${studentlist.elementAt(index).name}'),
              subtitle: Text('Student Id: ${studentlist.elementAt(index).studentId}'),           
            ),
          );
        },
      )
    );
  }
}