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
      appBar: AppBar(title: Center(child: Text('weblink view')),
      leading: ElevatedButton(onPressed:  (){
        Navigator.pushNamed(context, '/');
      }, child: Icon(Icons.arrow_back),
      )      
      ),
      body: ListView.builder(
        itemCount: webList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5.0,left: 10.0,right: 10.0),
            child: ElevatedButton(
                onPressed: () {
                  _launchURL('${webList.elementAt(index).webUrl}');
                },
                child: Text('${webList.elementAt(index).name}'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade900,
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 15.0,
                ),
                ),
          );
        },
      ),
      // ElevatedButton(
      //   onPressed: () {
      //     _launchURL();
      //   },
      //   child: Text('data')
      //   ,)    
       
    );
  }
}