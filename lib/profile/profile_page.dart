/*
 Important Learning Outcomes
 1) Widgets: SafeArea, Scaffold, Containers, Column, Row, Expanded, SizedBox
 2) Aligning widgets
 3) Text styling i.e custom font, size, color
 4) Loading images
 */

import 'package:flutter/material.dart';
import '../styles.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Profile', style: Styles.appbar_title_dark),
          iconTheme: IconThemeData(
            color: Colors.grey[700], //change your color here
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.all(25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: AssetImage('images/avatar.png'),
                    radius: 50.0),
                SizedBox(
                  height: 10.0,
                ),
                Text('Qandeel Abbassi', style: Styles.profileTitle),
                Text('FLUTTER DEVELOPER', style: Styles.profileSubTitle),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                    color: Colors.grey[50],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: IntrinsicHeight(
                          child: Row(children: <Widget>[
                        Icon(Icons.phone, color: Colors.grey),
                        SizedBox(width: 5.0),
                        VerticalDivider(color: Colors.grey),
                        SizedBox(width: 5.0),
                        Text('+92 335 0090081',
                            textAlign: TextAlign.center, style: Styles.content)
                      ])),
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                    color: Colors.grey[50],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: IntrinsicHeight(
                          child: Row(children: <Widget>[
                        Icon(Icons.email, color: Colors.grey),
                        SizedBox(width: 5.0),
                        VerticalDivider(color: Colors.grey),
                        SizedBox(width: 5.0),
                        Text('email@company.com',
                            textAlign: TextAlign.center, style: Styles.content)
                      ])),
                    ))
              ]),
        ),
      ),
    ));
  }
}
