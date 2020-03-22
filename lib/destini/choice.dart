class Choice {
  String _choiceText;
  int _nextStoryNum;

  Choice(this._choiceText, this._nextStoryNum);

  bool isVisible() {
    return _nextStoryNum != -1;
  }

  String getChoiceText() {
    return _choiceText;
  }

  int getNextStoryNum() {
    return _nextStoryNum;
  }
}
