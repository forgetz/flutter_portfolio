import 'package:flutter/material.dart';

class SkillScreen extends StatefulWidget {
  @override
  _SkillScreenState createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> listHeader = List<String>();
    listHeader.add("Coding Language");
    listHeader.add("Database");
    listHeader.add("Other");

    List<String> language = List<String>();
    language.add('C#');
    language.add('ASP.NET MVC');
    language.add('.NET Core');
    language.add('VB.NET');
    language.add('PHP');
    language.add('Javascript');
    language.add('Python');
    language.add('Flutter');
    language.add('Nuxt.js');
    language.add('T-SQL');

    List<String> database = List<String>();
    database.add('Microsoft SQL Server');
    database.add('MySQL');
    database.add('SQLite');

    List<String> others = List<String>();
    others.add('Firebase');

    return Scaffold(
      appBar: AppBar(
        title: Text('Skill'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        itemCount: listHeader.length,
        itemBuilder: (BuildContext context, int index) {
          List<String> focusList;
          if (index == 0) {
            focusList = language;
          } else if (index == 1) {
            focusList = database;
          } else {
            focusList = others;
          }

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listHeader[index],
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40.0),
              SizedBox(
                height: 100.0,
                child: PageView.builder(
                  itemCount: focusList.length,
                  itemBuilder: (BuildContext context, int itemIndex) {
                    return _buildDetail(focusList, itemIndex);
                  },
                ),
              ),
              SizedBox(height: 40.0),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDetail(List<String> list, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
          ),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Center(
            child: Text(
          list[index],
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
