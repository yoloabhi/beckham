import 'package:flutter/material.dart';
import 'package:placement/calendar.dart';
import 'package:placement/internship.dart';
import 'package:placement/result.dart';
import 'package:placement/HomePage.dart';
import 'package:placement/login.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder'),
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
            title: Text('Results'),
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

    body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0B47A9),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('DELL Interview on 19th June',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0B47A9),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('AMAZON Interview on 22nd June ',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0B47A9),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('GOOGLE Interview on 27th June ',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0B47A9),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('ASUS Interview on 1st July ',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        
    );
  }
}