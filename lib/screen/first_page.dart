import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/department_details_models.dart';
import 'package:flutter_application_1/model/department_models.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      List<Department> deptlist = [
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
        Department(id: 1, name: "bangla", img: "",
        deptDetils: DepartmentdetailsModel(
          id: 1,
          name: 'bang',
          titel: 'Bangla one',
          dec: 'insfsf',
          img: '',
        ),
        ),
      ] ; 
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: 
      Center(
        child: Center(child: Text('Deprtment'))),
        leading: ElevatedButton(onPressed:  (){
        Navigator.pushNamed(context, '/');
      }, child: Icon(Icons.arrow_back),
      )      
      ),
      body: ListView.builder(
        itemCount: deptlist.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.00),
            child: ElevatedButton(onPressed: (){
              if (deptlist.elementAt(index).id==1) {
                Department bngDept=deptlist[0];
              Navigator.pushNamed(context, '/deptdetail',arguments: bngDept);
              }else if (deptlist.elementAt(index).id==2) {
                Department bngDept=deptlist[1];
                Navigator.pushNamed(context, '/deptdetail',arguments: bngDept);
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade300,
              padding: EdgeInsets.symmetric(vertical: 10.00),
            ), 
            child: Text('${deptlist.elementAt(index).name}',
            style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),),
            
            ),
          );
      }),
    );
  }
}