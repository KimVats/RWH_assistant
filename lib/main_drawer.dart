//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './about_screen.dart';
import './login_page.dart';
//import './home_page.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "Account:",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(
              'About',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'LogOut',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
