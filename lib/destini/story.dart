import 'choice.dart';

class Story {
  String _title;
  Choice _choiceA, _choiceB;

  Story(this._title, this._choiceA, this._choiceB);

  String getTitle() {
    return _title;
  }

  Choice getChoiceA() {
    return _choiceA;
  }

  Choice getChoiceB() {
    return _choiceB;
  }

  int getNextStoryNum(int choiceNumber) {
    if (choiceNumber == 1)
      return _choiceA.getNextStoryNum();
    else
      return _choiceB.getNextStoryNum();
  }
}
