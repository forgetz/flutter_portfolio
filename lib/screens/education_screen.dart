import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: Center(
        child: Text(
          'Coming Soon',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
