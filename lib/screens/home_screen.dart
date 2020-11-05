import 'package:flutter/material.dart';
import 'package:portfolio/widgets/drawer_widget.dart';
import 'package:portfolio/widgets/social_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: DrawerWidget(),
        body: Container(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.3,
                    backgroundImage:
                        AssetImage('assets/images/circle_avatar.jpg'),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    'Saranpong Komolchoktawee',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Software Developer at Bangkok Airways',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  // SizedBox(height: 20.0),
                  // Text(
                  //   'Birthdate 16 Jan 89',
                  //   style: TextStyle(fontSize: 16.0),
                  // ),
                  SizedBox(height: 30.0),
                  Text(
                    'Address 105 Soi 13 Charoennakorn Rd.\nKlongsan Klongtonsai Bangkok 10600',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  SocialWidget(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
