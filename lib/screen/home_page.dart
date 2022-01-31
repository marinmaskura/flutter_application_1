

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_constants.dart';
import 'package:flutter_application_1/constants/exit_pop_.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        endDrawer: MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text("GMGH School B.Baria"),
        leading: TextButton(onPressed:  (){
          Navigator.pushNamed(context, AppConstats.WebPageView);
        }, child: Image.asset('assets/images/103225.png',
       ),
        // Icon(Icons.arrow_back, ),
        style: ElevatedButton.styleFrom(primary: Colors.green.shade900),
        ),
        // Image.asset('assets/images/103225.png'),
        backgroundColor: Colors.green.shade900,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
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
                    Container(
                      // margin: EdgeInsetsGeometry.infinity,
                      height: 50.0,
                      width: 450.0,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                      ),
                      child: Center(child: Text("Govt. Model Girls High School",
                      style: TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 25.0,color: Colors.green.shade900)
                       )
                      )
                    ),
                  SizedBox(height: 30.0,),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      // padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      width: 500.0,
                      child: 
                      Image.asset('assets/images/shongbordhona_1.jpg'),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                          
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        // margin: EdgeInsets.all(10.0),                  
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          
                          context: context,
                          name: 'About',
                          iconData: Icons.text_snippet_outlined,
                          color: Colors.green.shade900,
                          onTab: () {
                            
                            Navigator.pushNamed(context, '/firstpage');
                          },
                          ),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Introduction',
                          iconData: Icons.how_to_reg_outlined,
                          color: Colors.green.shade900,
                          onTab: () {
                            Navigator.pushNamed(context, '/introduction');
                          },
                        ),
                         ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Teacher List',
                          iconData: Icons.portrait_outlined,
                          color: Colors.green.shade900,
                          onTab: () {                    
                          Navigator.pushNamed(context, '/teacherview');
                          },
                        ),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Student',
                          iconData: Icons.supervised_user_circle,
                          color: Colors.green.shade900,
                          onTab: () { 
                            Navigator.pushNamed(context, AppConstats.StudentView);                   
                          },
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Photo Gallery',
                          iconData: Icons.photo_camera_outlined,
                          color: Colors.green.shade900,
                          onTab: () {  
                            Navigator.pushNamed(context, '/photogallery');                  
                          },
                        ),
                    ),
                      ),                  
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Important link',
                          iconData: Icons.link_rounded,
                          color: Colors.green.shade900,
                          onTab: () {  
                            Navigator.pushNamed(context, '/weblinkview');                  
                          },
                        ),
                    ),
                      ),                  
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,left: 15.0, top: 5.0, bottom: 5.0),
                        child: Card(
                        elevation: 10,
                        color: Colors.green.shade900,
                        child: _customButton(
                          context: context,
                          name: 'Contact',
                          iconData: Icons.phone_outlined,
                          color: Colors.green.shade900,
                          onTab: () {
                            Navigator.pushNamed(context, '/manpower');
                          },
                        ),
                      ),
                      ),
                        SizedBox(height: 100.0,)
                        ],
                      ),
                    )
                  
                  ],
                        ),
                ),
                ],
              ),
            ),
        ),
      
      ),
    );
  }

  Widget _customButton(
    {BuildContext? context,
    @required Color? color, 
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
    }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: color,
                ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.00),
              margin: EdgeInsets.all(8.00),
              width: MediaQuery.of(context!).size.width,                  
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                        iconData,
                        size: 40.00, color: Colors.white,),
                      Text('$name', 
                      style: TextStyle(
                      fontSize: 20.00,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,),
                    ],
                  ),                
              ),
    );
  }  
}
