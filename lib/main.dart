import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/screens/education_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/mywork_screen.dart';
import 'package:portfolio/screens/skill_screen.dart';
import 'package:portfolio/screens/workexp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nut.in.th',
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(
          name: '/education',
          page: () => EducationScreen(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/workexp',
          page: () => WorkExpScreen(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/mywork',
          page: () => MyWorkScreen(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/skill',
          page: () => SkillScreen(),
          transition: Transition.fade,
        ),
      ],
    );
  }
}
