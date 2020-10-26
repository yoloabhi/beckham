import 'package:flutter/material.dart';
import 'package:placement/calendar.dart';
import 'package:placement/result.dart';
import 'package:placement/reminder.dart';
import 'package:placement/HomePage.dart';
import 'package:placement/login.dart';

class Internship extends StatefulWidget {
  @override
  _InternshipState createState() => _InternshipState();
}

class _InternshipState extends State<Internship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internships'),
        backgroundColor: Color.fromRGBO(0, 0, 255, 0.8),
      ),
      drawer: new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("$name"),
            accountEmail: new Text("$email"),
            currentAccountPicture: new CircleAvatar(
               backgroundColor: Colors.cyan[100],
               child: new Text("$name"),     
            ),
          ),
          new ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Homepage()));
          },
          ),
          new ListTile(
            leading: Icon(Icons.work),
            title: Text('Internships'),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Internship()));
          },
          ),
          new ListTile(
            leading: Icon(Icons.date_range),
            title: Text('Calendar'),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Calendar()));
          },
          ),
          new ListTile(
            leading: Icon(Icons.assessment),
            title: Text('Result'),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Result()));
          },
          ),
          new ListTile(
            leading: Icon(Icons.message),
            title: Text('Reminder'),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Reminder()));
          },
          ),
        ],
      ),
    ),
    body: Center(
          child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              height: 120,
              width: 500,
              child: Text('GOOGLE', style: TextStyle(fontSize: 40.0)),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              height: 120,
              width: 500,
              child: Text('DELL', style: TextStyle(fontSize: 40.0)),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              height: 120,
              width: 500,
              child: Text('ASUS', style: TextStyle(fontSize: 40.0)),
          ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              height: 120,
              width: 500,
              child: Text('AMAZON', style: TextStyle(fontSize: 40.0)),
          )
          ],
          )
        ),
      );
  }
}