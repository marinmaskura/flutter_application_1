import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_constants.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text("Govt. Model Girls High School")),
      leading: Image.asset('assets/images/103225.png'),
      backgroundColor: Colors.green.shade900,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Image.asset("assets/images/bangladesh_map.png",
            fit: BoxFit.cover,)
            ),
          Column(
        children: [
          SizedBox(height: 15.0,),
          Row(        
            children: [
              Container(
                
              )
            ],
          ),
          Row(        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  
                  context: context,
                  name: 'First Page',
                  iconData: Icons.content_paste_outlined,
                  color: Colors.green.shade900,
                  onTab: () {
                    
                    Navigator.pushNamed(context, '/firstpage');
                  },
                  ),
              ),
              Card(
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
            ],
          ),
          Row(        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  context: context,
                  name: 'Manpower',
                  iconData: Icons.portrait_outlined,
                  color: Colors.green.shade900,
                  onTab: () {
                    Navigator.pushNamed(context, '/manpower');
                  },
                ),
              ),
              Card(
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
            ],
          ),
          Row(        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  context: context,
                  name: 'Test Result',
                  iconData: Icons.login,
                  color: Colors.green.shade900,
                  onTab: () {
                    Navigator.pushNamed(context, '/testresult');
                  },
                ),
              ),
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  context: context,
                  name: 'Photo Gallery',
                  iconData: Icons.verified_user,
                  color: Colors.green.shade900,
                  onTab: () {  
                    Navigator.pushNamed(context, '/photogallery');                  
                  },
                ),
              ),              
            ],
          ),
          Row(        
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  context: context,
                  name: 'location',
                  iconData: Icons.map,
                  color: Colors.green.shade900,
                  onTab: () {
                    Navigator.pushNamed(context, '/location');
                  },
                ),
              ),
              Card(
                elevation: 10,
                color: Colors.green.shade900,
                child: _customButton(
                  context: context,
                  name: 'contact',
                  iconData: Icons.contact_support,
                  color: Colors.green.shade900,
                  onTab: () {                    
                  Navigator.pushNamed(context, '/contact');
                  },
                ),
              ),              
            ],
          ),
        ],
      ),
          ],
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
              height: 120.00,
              width: MediaQuery.of(context!).size.width*.40,                  
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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