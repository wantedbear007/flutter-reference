import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    String dpURL = "https://wantedbear007.github.io/site/images/user.png";
    String updated = "https://avatars.githubusercontent.com/u/83907431?v=4";
    return Drawer(
      backgroundColor: Colors.amberAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.amberAccent),
              margin: EdgeInsets.zero,
              currentAccountPicture: Image.network(dpURL),
              accountName: Text(
                "Bhanupratap Singh",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "pratapsinghbhanu444@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              print("parent is changed !");
            },
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              print("parent is changed !");
            },
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              print("parent is changed !");
            },
            leading: Icon(CupertinoIcons.settings),
            title: Text(
              "Settings",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {
              print("parent is changed !");
              setState(() {
                dpURL = updated;
              });
            },
            leading: Icon(CupertinoIcons.plus_rectangle_fill_on_rectangle_fill),
            title: Text(
              "Change",
              textScaleFactor: 1.2,
            ),
          ),
          Text("This is the sample paragraph that is to be written in drawer")
        ],
      ),
    );
  }
}
