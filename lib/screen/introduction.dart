import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/department_models.dart';

class Introduction extends StatelessWidget {
  const Introduction({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Introduction')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(              
              children: [
                Expanded(
                  child: Container(
                    // margin: EdgeInsetsGeometry.infinity,
                    height: 50.0,
                    width: 450.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    child: Center(child: Text("Introduction to the school at a glance",
                    style: TextStyle(fontWeight: FontWeight.w800,
                    fontSize: 25.0)
                     )
                    )                    
                  ),
                ),
              ],
            ),          
            SizedBox(
              height: 10.0,
            ),
           
            _customStyle(
                  title: "School EIIN",
                   bodyText: '65465163'
                ),
            _customStyle(
                  title: "School name",
                   bodyText: 'Govt. Model Girls High School'
                ),
            _customStyle(
                  title: "Village / house and road details",
                   bodyText: 'Haldar Para'
                ),
            _customStyle(
                  title: "Word Number",
                   bodyText: '3'
                ),
            _customStyle(
                  title: "Union / Municipality / City Corporation",
                   bodyText: 'Brahmanbaria Municipality'
                ),
            _customStyle(
                  title: "Post Office",
                   bodyText: 'Brahmanbaria Sadar'
                ),
            _customStyle(
                  title: "Post code :",
                   bodyText: '3400'
                ),
            _customStyle(
                  title: "Police Station",
                   bodyText: 'Brahmanbaria Sadar'
                ),
            _customStyle(
                  title: "Upazila",
                   bodyText: 'Brahmanbaria Sadar'
                ),
            _customStyle(
                  title: "District",
                   bodyText: 'Brahmanbaria'
                ),
            _customStyle(
                  title: "Category",
                   bodyText: 'Chittagong'
                ),
            _customStyle(
                  title: "Telephone",
                   bodyText: '0751-56160'
                ),
            _customStyle(
                  title: "E-mail",
                   bodyText: 'govtmodelgirlshighschool@yahoo.com'
                ),
            _customStyle(
                  title: "Website",
                   bodyText: 'www.gmghschool.edu.bd'
                ),
            _customStyle(
                  title: "Number of students",
                   bodyText: '1446'
                ),
            _customStyle(
                  title: "School shift",
                   bodyText: 'One shift'
                ),
            _customStyle(
                  title: "School type",
                   bodyText: 'Girls'
                ),   
          ],
        ),
      ),
    );
  }
  Widget _customStyle({required String title,required String  bodyText}){
    return   Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex:2 ,
                    child: Text('${title}', style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15.0)
                      )
                      ),
                    Text(': '),
                  Expanded(
                    flex:2 ,child: Text('${bodyText}', style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15.0))),
                ],
              ),
            );
  }
}