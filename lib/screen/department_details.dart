import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/department_models.dart';
class DepartmentDetailsview extends StatelessWidget {
  const DepartmentDetailsview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Department arg = ModalRoute.of(context)!.settings.arguments as Department;
    return Scaffold(
      appBar: AppBar(
        title: Text('Department Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${arg.name}'),
            Text('${arg.deptDetils!.titel}'),
            Text('${arg.deptDetils!.dec}'),

            
          ],
        ),
      ),
    );
  }
}