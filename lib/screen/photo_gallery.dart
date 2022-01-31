import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/department_models.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({ Key? key }) : super(key: key);

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
      appBar: AppBar(title: Center(child: Text('Photo Gallery')), 
      backgroundColor: Colors.green.shade900,
      leading: ElevatedButton(onPressed:  (){
        Navigator.pop(context);
      }, child: Icon(Icons.arrow_back, ),
      style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
      )
          
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
            width: double.maxFinite,
            child: Stack(
              fit: StackFit.expand,
              children: [
                
                ImageFiltered(
                  imageFilter: ImageFilter.blur(),
                child: Image.asset("assets/images/bangladesh_map.png",
                fit: BoxFit.cover,)
                ),
                SizedBox(height: 10.0,),
         SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/shongbordhona_1.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/shongbordhona_2.jpg'),
                    ),
                  ),
                ],
                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/shongbordhona_3.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/shongbordhona_4.jpg'),
                    ),
                  ),
                ],
                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/shongbordhona_5.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_1.jpg'),
                    ),
                  ),
                ],
                
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,             
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_2.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_3.jpg'),
                    ),
                  ),
                ],
                
              ),

                   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_4.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_5.jpg'),
                    ),
                  ),
                ],
                
              ),       Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_6.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_7.jpg'),
                    ),
                  ),
                ],
                
              ),       Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/ovibabok_chowni_8.jpg'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('assets/images/s_s_c_2021_student.jpg'),
                    ),
                  ),
                ],
                
              ),       
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //   ],
                
              // ),       Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //   ],
                
              // ),       Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.png'),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.png'),
              //       ),
              //     ),
              //   ],
                
              // ),       Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.png'),
              //       ),
              //     ),
              //   ],
                
              // ),       Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.all(10.0),
              //         padding: EdgeInsets.all(10.0),
              //         height: 200.0,
              //         width: 200.0,
              //         child: Image.asset('assets/images/shongbordhona_4.jpg'),
              //       ),
              //     ),
                  
              //   ],
                
              // ),  
            ],
          ),
        ),
       ]
      ),
      )
    );
  }
}