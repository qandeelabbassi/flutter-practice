import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chat/pages/chat_screen.dart';
import 'package:flutter_tutorial/chat/pages/login_screen.dart';
import 'package:flutter_tutorial/chat/pages/registration_screen.dart';
import 'package:flutter_tutorial/chat/pages/welcome_screen.dart';

class ChatMain extends StatelessWidget {
  static String id = "chat_main";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
