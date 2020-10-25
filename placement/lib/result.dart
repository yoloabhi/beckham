import 'package:flutter/material.dart';
import 'package:placement/calendar.dart';
import 'package:placement/internship.dart';
import 'package:placement/reminder.dart';
import 'package:placement/HomePage.dart';
import 'package:placement/login.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
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
                    Color(0xF142C5F5),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('TESLA Interview',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-REJECTED',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xF142C5F5),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('QUALCOMM Interview',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-ACCEPTED',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xF142C5F5),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('INFOSYS Interview',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-ACCEPTED',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.0, 0.0),
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xF142C5F5),
                    Color(0xF61976E2),
                    Color(0xF142C5F5),
                  ],
                ),
              ),
              padding: EdgeInsets.fromLTRB(5.0, 20.0, 0.0, 0.0),
              child: Text('SPACEX Interview',
                  style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-REJECTED',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ],
        ),
    );
  }
}