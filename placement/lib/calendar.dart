import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:placement/internship.dart';
import 'package:placement/result.dart';
import 'package:placement/reminder.dart';
import 'package:placement/HomePage.dart';
import 'package:placement/login.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
   CalendarController _controller;
   @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
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
    body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  todayColor: Colors.orange,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              onDaySelected: (date, events) {
                print(date.toIso8601String());
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            )
          ],
        ),
      ),
    );
  }
}