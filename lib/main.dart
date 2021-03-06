import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      initialRoute: AppRoutes.myInitRoute,
      routes:  AppRoutes.myRoutes, 
    );
  }

 
}