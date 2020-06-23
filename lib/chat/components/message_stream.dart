import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chat/components/message_bubble.dart';
import 'package:flutter_tutorial/chat/utils/constants.dart';

class MessageStream extends StatelessWidget {
  final Firestore firestore;
  final FirebaseUser firebaseUser;

  MessageStream({this.firestore, this.firebaseUser});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection(MESSAGES_COLLECTION).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data.documents;
          messages.sort((a, b){
            var aDate = a[MS_KEY_CREATE_DATE];
            var bDate = b[MS_KEY_CREATE_DATE];
            return bDate.compareTo(aDate);
          });
          List<MessageBubble> messageWidgets = [];
          for (var message in messages) {
            final messageText = message.data[MS_KEY_TEXT];
            final messageSender = message.data[MS_KEY_SENDER];

            final messageWidget = MessageBubble(
                sender: messageSender, text: messageText, isMe: firebaseUser.email == messageSender);
            messageWidgets.add(messageWidget);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              children: messageWidgets,
            ),
          );
        } else {
          return Text("");
        }
      },
    );
  }
}
