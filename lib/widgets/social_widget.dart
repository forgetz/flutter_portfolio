import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatefulWidget {
  @override
  _SocialWidgetState createState() => _SocialWidgetState();
}

class _SocialWidgetState extends State<SocialWidget> {
  final double spaceWidth = 20.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              launchUrl('https://nut.in.th/');
            },
            child: Icon(MaterialCommunityIcons.web, size: 40.0),
          ),
          SizedBox(width: spaceWidth),
          GestureDetector(
            onTap: () {
              launchUrl('mailto:creadz@gmail.com?subject=Contact');
            },
            child: Icon(MaterialCommunityIcons.email, size: 40.0),
          ),
          SizedBox(width: spaceWidth),
          GestureDetector(
            onTap: () {
              launchUrl('https://m.me/forgetz/');
            },
            child: Icon(FontAwesome5Brands.facebook_messenger, size: 40.0),
          ),
          SizedBox(width: spaceWidth),
          GestureDetector(
            onTap: () {
              launchUrl('https://www.linkedin.com/in/forgetz/');
            },
            child: Icon(FontAwesome5Brands.linkedin, size: 40.0),
          ),
          SizedBox(width: spaceWidth),
          GestureDetector(
            onTap: () {
              launchUrl('https://github.com/forgetz');
            },
            child: Icon(FontAwesome5Brands.github_alt, size: 40.0),
          ),
        ],
      ),
    );
  }

  void launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Get.snackbar('Error', 'Can\'t launch $url', backgroundColor: Colors.red);
    }
  }
}
