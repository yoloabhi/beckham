import 'package:flutter/material.dart';
import 'package:placement/calendar.dart';
import 'package:placement/internship.dart';
import 'package:placement/result.dart';
import 'package:placement/reminder.dart';
import 'package:placement/login.dart';


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placement'),
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
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 10.0),
              child: Text('Annoucements',
                  style: TextStyle(
                      fontSize: 50.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: Text('DELL Interview',
                  style: TextStyle(
                      fontSize: 42.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-19th June',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),   
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: Text('AMAZON Interview',
                  style: TextStyle(
                      fontSize: 42.0, fontWeight: FontWeight.bold)),
            ), 
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-22nd June',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: Text('ASUS Interview',
                  style: TextStyle(
                      fontSize: 42.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-1st July',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: Text('GOOGLE Interview',
                  style: TextStyle(
                      fontSize: 42.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 15.0, left: 20.0),
              child: InkWell(
                child: Text(
                  '-27th June',
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