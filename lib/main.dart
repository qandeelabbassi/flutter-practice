import 'package:flutter/material.dart';
import 'styles.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.png'),
                    radius: 50.0),
                SizedBox(
                  height: 10.0,
                ),
                Text('Qandeel Abbassi', style: Styles.title),
                Text('FLUTTER DEVELOPER', style: Styles.subTitle),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey[200]),
                    ),
                    padding: EdgeInsets.all(10),
                    child: IntrinsicHeight(
                        child: Row(children: <Widget>[
                      Icon(Icons.phone, color: Colors.grey),
                      SizedBox(width: 5.0),
                      VerticalDivider(color: Colors.grey),
                      SizedBox(width: 5.0),
                      Text('+92 335 0090081',
                          textAlign: TextAlign.center, style: Styles.content)
                    ]))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.grey[200]),
                    ),
                    padding: EdgeInsets.all(10),
                    child: IntrinsicHeight(
                        child: Row(children: <Widget>[
                      Icon(Icons.email, color: Colors.grey),
                      SizedBox(width: 5.0),
                      VerticalDivider(color: Colors.grey),
                      SizedBox(width: 5.0),
                      Text('email@company.com',
                          textAlign: TextAlign.center, style: Styles.content)
                    ])))
              ]),
        ),
      ),
    ));
  }
}

// Simple image demo
/*
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Car Counter')),
        backgroundColor: Colors.orange[700],
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
              child: new Image.network(
                'https://images.unsplash.com/photo-1507272931001-fc06c17e4f43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                fit: BoxFit.cover,
              ))
        ],
      ),
    ),
  ));
}
*/
