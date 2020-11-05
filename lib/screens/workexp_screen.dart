import 'package:flutter/material.dart';

class WorkExpScreen extends StatefulWidget {
  @override
  _WorkExpScreenState createState() => _WorkExpScreenState();
}

class _WorkExpScreenState extends State<WorkExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Experience'),
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
