import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/department_models.dart';

class ManPower extends StatelessWidget {
  const ManPower({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      // List<Department> deptlist = [
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      //   Department(id: 1, name: "bangla", img: ""),
      // ] ; 
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Contact')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: Center(
       child: Column(         
         children: [ SizedBox(height: 20.0,),
         Container(
                      child: Image.asset('assets/images/image_1.jpg'),                     
                      ),
         SizedBox(height: 20.0,),          
           Title(
             color: Colors.green, 
             child:CircleAvatar(
               backgroundColor: Colors.green.shade900,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,                  
                ),
           )
           ),
           SizedBox(height: 20.0,),
           Title(
             color: Colors.green, 
             child: Text('Address', style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold,))
           ),
           SizedBox(height: 10.0,),
             Text('kalaishreepara, Brahmanbaria', style: TextStyle(fontSize: 15.0, )),
             SizedBox(height: 10.0,),
            //  Text('Uttara Model Town,Uttara, Dhaka-1230'),
            SizedBox(height: 20.0,),
            SizedBox(height: 20.0,),
            SizedBox(height: 20.0,),
             Title(
             color: Colors.green, 
             child: CircleAvatar(
               backgroundColor: Colors.green.shade900,
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
           )
           ),
           SizedBox(height: 20.0,),
           Title(
             color: Colors.green, 
             child: Text('Phone Number', style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold,))
           ),
           SizedBox(height: 10.0,),
             Text('+8801913413491', style: TextStyle(fontSize: 15.0, )),
             SizedBox(height: 10.0,),
            //  Text('02-58951116'),
            //  SizedBox(height: 10.0,),
            //  Text('02-58955794'),
             SizedBox(height: 20.0,),
          //     Title(
          //    color: Colors.green, 
          //    child: 
          //    CircleAvatar(
          //       child: Icon(
          //         Icons.mobile_friendly,
          //         color: Colors.white,
          //       ),
          //  )
          //  ),
           SizedBox(height: 20.0,),
          //  Title(
          //    color: Colors.green, 
          //    child: Text('Mobile Number', style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold,))
          //  ),
          //  SizedBox(height: 10.0,),
          //    Text('0751-56160'),
          //    SizedBox(height: 10.0,),
            //  Text('01872607360, 01872607361, 01872607362, 01872607363,'),
            //  SizedBox(height: 10.0,),
            //  Text('01872607369, 0170664328, 01932357444'),
            SizedBox(height: 20.0,),
            Title(color: Colors.green, 
            child:  CircleAvatar(
              backgroundColor: Colors.green.shade900,
                child: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
           )
           ),
           SizedBox(height: 10.0,),
           Text('E-Mail Address',
           style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold,),)  ,
           SizedBox(height: 10.0,),
           Text('maskuraaktermarin@gmail.com',
           style: TextStyle(fontSize: 15.0, ),)
         ],
       ),
     ),
      // ListView.builder(
      //   itemCount: deptlist.length,
      //   itemBuilder: (context, index){
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 8.00),
      //       child: ElevatedButton(onPressed: (){},
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.green.shade300,
      //         padding: EdgeInsets.symmetric(vertical: 10.00),
      //       ), 
      //       child: Text('${deptlist.elementAt(index).name}',
      //       style: TextStyle(fontSize: 20.00, fontWeight: FontWeight.bold),),
            
      //       ),
      //     );
      // }),
    );
  }
}