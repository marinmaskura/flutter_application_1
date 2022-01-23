import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.blue.shade300,
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: UserAccountsDrawerHeader(
                accountName: Text('Maskura Akter Marin',
                style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 20.0),),
                accountEmail: Text('maskuraaktermarin@gmail.com'),
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
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Home Page'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.social_distance,
              color: Colors.white,),
              title: Text('Social Page'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Facebook'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Education'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Registration'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Login'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('User'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Location'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Contact'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.white,),
              title: Text('Account'),
              onTap: (){
                Navigator.pushNamed(context, '/MyHomePage');
              },
            ),
          ],
        ),
      );
  }
}