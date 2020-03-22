import 'package:flutter/material.dart';
import 'package:flutter_tutorial/destini/story_brain.dart';
import 'package:flutter_tutorial/quiz/quiz_brain.dart';
import 'package:flutter_tutorial/styles.dart';
import 'package:platform_alert_dialog/platform_alert_dialog.dart';

class DestiniPage extends StatefulWidget {
  @override
  _DestiniPageState createState() => _DestiniPageState();
}

class _DestiniPageState extends State<DestiniPage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg_destini.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          storyBrain.getStoryTitle(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: storyBrain.isChoiceAVisible(),
                    child: Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: FlatButton(
                        textColor: Colors.white,
                        color: Colors.red,
                        child: Text(
                          storyBrain.getChoiceA().getChoiceText(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            storyBrain.nextStory(1);
                          });
                        },
                      ),
                    )),
                  ),
                  Visibility(
                    visible: storyBrain.isChoiceBVisible(),
                    child: Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: FlatButton(
                        color: Colors.blue,
                        child: Text(
                          storyBrain.getChoiceB().getChoiceText(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            storyBrain.nextStory(2);
                          });
                        },
                      ),
                    )),
                  )
                ],
              )),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text("Destini", style: Styles.appbar_title_light),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
          )
        ],
      ),
    );
  }
}
