import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chat/pages/chat_screen.dart';
import 'package:flutter_tutorial/chat/components/rounded_button.dart';
import 'package:flutter_tutorial/styles.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static String id = "chat_login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email, password;
  bool showSpinner = false;

  @override
  void initState() {
    super.initState();
    _auth.currentUser().then((user) {
      if (user != null) {
        Navigator.pushNamed(context, ChatScreen.id);
      }
    });
  }

  void setShowSpinner(bool show) {
    setState(() {
      showSpinner = show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: "logo",
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: Styles.kInputFieldDecoration
                    .copyWith(hintText: 'Enter your email.'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: Styles.kInputFieldDecoration
                    .copyWith(hintText: 'Enter your password.'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                buttonTitle: "Log In",
                bgColor: Colors.lightBlueAccent,
                onTapCallback: () {
                  setShowSpinner(true);
                  _auth
                      .signInWithEmailAndPassword(
                          email: email, password: password)
                      .then((user) {
                    if (user != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                    setShowSpinner(false);
                  }).catchError((err) {
                    print(err);
                    setShowSpinner(false);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
