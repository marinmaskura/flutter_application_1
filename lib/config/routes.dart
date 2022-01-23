
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_constants.dart';

import 'package:flutter_application_1/screen/contact.dart';
import 'package:flutter_application_1/screen/department.dart';
import 'package:flutter_application_1/screen/department_details.dart';
import 'package:flutter_application_1/screen/manpower.dart';
import 'package:flutter_application_1/screen/introduction.dart';
import 'package:flutter_application_1/screen/home_page.dart';
import 'package:flutter_application_1/screen/location.dart';
import 'package:flutter_application_1/screen/student_view.dart';
import 'package:flutter_application_1/screen/first_page.dart';
import 'package:flutter_application_1/screen/test_result.dart';
import 'package:flutter_application_1/screen/photo_gallery.dart';

class AppRoutes {
  AppRoutes._();
  static final myInitRoute = AppConstats.MyHomePage;
  static final Map<String, WidgetBuilder> myRoutes = {
    AppConstats.MyHomePage: (context) => MyHomePage(),
    AppConstats.Contact: (context)=> Contact(),
    AppConstats.DepartmentDetailsview: (context)=> DepartmentDetailsview(),
    AppConstats.DepertmentView: (context)=>DepertmentView(),
    AppConstats.ManPower: (context)=> ManPower(),
    AppConstats.Introduction: (context)=> Introduction(),
    AppConstats.TestResult: (context)=> TestResult(),
    AppConstats.StudentView: (context)=> StudentView(),
    AppConstats.FirstPage: (context)=> FirstPage(),
    AppConstats.PhotoGallery: (context)=> PhotoGallery(),
  };
  
}