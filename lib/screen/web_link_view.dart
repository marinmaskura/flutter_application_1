import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/globa_widget/my_drawer.dart';
import 'package:flutter_application_1/model/web_link_model.dart';
import 'package:flutter_application_1/repositories/web_link_repo.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLinkView extends StatefulWidget {
  const WebLinkView({ Key? key }) : super(key: key);

  @override
  State<WebLinkView> createState() => _WebLinkViewState();
}

class _WebLinkViewState extends State<WebLinkView> {
  List<WebModel> webList = [];
void _launchURL(String  url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'could not launch $url';
  }
}
  @override
  void initState() {
    
    super.initState();
    WebRepo.getWebLink().then((value) {
      setState(() {
        webList.addAll(value);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    
  
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: AppBar(title: Center(child: Text('Important Link',
      style: TextStyle(fontSize: 24.0),)
      ), 
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
         ListView.builder(
          itemCount: webList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 20.0,right: 20.0),
              child: ElevatedButton(
                  onPressed: () {
                    _launchURL('${webList.elementAt(index).webUrl}');
                  },
                  child: Text('${webList.elementAt(index).name}',
                  style: TextStyle(fontSize: 18.0),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade900,
                    padding: EdgeInsets.only(top: 15,bottom: 15, left: 10, right: 10),
                    shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 15.0,
                  ),
                  ),
            );
          },
        ),
              ]
      ),
              
      )   
       
    );
  }
}