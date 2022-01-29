

import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/teacher_model.dart';
import 'package:flutter_application_1/repositories/teacher_ropo.dart';
import 'package:flutter/material.dart';
class TeacherView extends StatelessWidget {
  const TeacherView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Teacher List')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: FutureBuilder(
        future: teacherRepo.getteacherList(),
        builder: (context, snapshot) {
          List<TeacherModel> tec = snapshot.data as List<TeacherModel>;
          print(tec.length);
          return ListView.builder(
            itemCount: tec.length,
            itemBuilder: (context, index) {
              TeacherModel teacher = tec.elementAt(index);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: ElevatedButton(
                  onPressed: (){
                    
                }, child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    
                    Expanded(
                      flex: 1,
                      child: Image.asset('${teacher.image}')),
                      SizedBox(width: 30.0,),
               Expanded(
flex: 4,

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                          Text('${teacher.id}'),
                      Text('Name: ${teacher.name}'),
                      Text('User Name: ${teacher.username}'),
                      Text('Phone Number: ${teacher.phone}'),
                      Text('Address: ${teacher.address}'), 
                   ],
                 ),
               )
                    
                  ],
                ),
                
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                    primary: Colors.green,
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