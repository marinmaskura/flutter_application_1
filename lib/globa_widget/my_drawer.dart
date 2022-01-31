import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.green.shade900,
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: UserAccountsDrawerHeader(
                accountName: Text('Govt. Model Girls High School',
                style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 23.0),),
                accountEmail: Text('Brahmanbaria Sadar, Brahmanbaria', 
                style: TextStyle(
                fontSize: 18.0)),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset("assets/images/103225.png"),
                  ),
                ), 
                decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/01.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
              ),
            ),
            
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet_outlined,
                  color: Colors.white,),
                  title: Text('About', style: TextStyle(fontWeight: FontWeight.bold, 
                          color: Colors.white,
                          fontSize: 15.0)
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/firstpage');
                  },
                ),
              ListTile(
              leading: Icon(Icons.how_to_reg_outlined,
              color: Colors.white,),
              title: Text('Introduction', style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 15.0)),
              onTap: (){
                Navigator.pushNamed(context, '/introduction');
              },
            ),
            ListTile(
              leading: Icon(Icons.portrait_outlined,
              color: Colors.white,),
              title: Text('Teacher List', style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 15.0)
                      ),
              onTap: (){
                Navigator.pushNamed(context, '/teacherview');
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle,
              color: Colors.white,),
              title: Text('Student', style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 15.0)),
              onTap: (){
                Navigator.pushNamed(context, '/studentview');
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_camera_outlined,
              color: Colors.white,),
              title: Text('Photo Gallery', style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 15.0)),
              onTap: (){
                Navigator.pushNamed(context, '/photogallery');
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_outlined,
              color: Colors.white,),
              title: Text('Contact Us', style: TextStyle(fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      fontSize: 15.0)),
              onTap: (){
                Navigator.pushNamed(context, '/manpower');
              },
            ),
           ],
          ),
            
            
            
            
            
            // ListTile(
            //   leading: Icon(Icons.home,
            //   color: Colors.white,),
            //   title: Text('Account'),
            //   onTap: (){
            //     Navigator.pushNamed(context, '/MyHomePage');
            //   },
            // ),
          ],
        ),
      );
  }
}