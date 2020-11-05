import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: UserAccountsDrawerHeader(
                accountName: Text(''),
                accountEmail: Text(''),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/menu_avatar.jpg'),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                otherAccountsPictures: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
                // ListTile(
                //   leading: Icon(Icons.grading),
                //   title: Text("Education"),
                //   onTap: () {
                //     Get.toNamed('/education');
                //   },
                // ),
                // ListTile(
                //   leading: Icon(Icons.work),
                //   title: Text("Work Experience"),
                //   onTap: () {
                //     Get.toNamed('/workexp');
                //   },
                // ),
                ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text("My Works"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Get.toNamed('/mywork');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.graphic_eq),
                  title: Text("Skill"),
                  onTap: () {
                    Navigator.of(context).pop();
                    Get.toNamed('/skill');
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Exit"),
                  onTap: () {
                    exit(0);
                  },
                ),
                // Divider(),
                // IconButton(
                //   icon: Icon(Icons.brightness_2),
                //   onPressed: () {
                //     Get.changeTheme(
                //         Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                //   },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
