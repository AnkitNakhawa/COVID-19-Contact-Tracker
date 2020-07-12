import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('COVID Contact Tracer'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.notifications),
              title: new Text('Notifications'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Contacts'))
          ],
        ),
        // Body content
        body: Center(
          child: Column(children: <Widget>[
            Text(
              'Notification',
              style: TextStyle(fontSize: 50)
            ),
            Text(
                'Michelle: Sick on Tuesday',
                style: TextStyle(fontSize: 30)
            ),
            Text(
                'Message: Hi everyone! Sorry, but I got tested on Tuesday and have COVID.',
                style: TextStyle(fontSize: 20)
            )

          ])
        )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}