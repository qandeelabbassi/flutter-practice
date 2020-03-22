import 'choice.dart';
import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        Choice('I\'ll hop in. Thanks for the help!', 2),
        Choice('Better ask him if he\'s a murderer first.', 1)),
    Story(
        'He nods slowly, unphased by the question.',
        Choice('At least he\'s honest. I\'ll climb in.', 2),
        Choice('Wait, I know how to change a tire.', 3)),
    Story(
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        Choice('I love Elton John! Hand him the cassette tape.', 5),
        Choice('It\'s him or me! You take the knife and stab him.', 4)),
    Story(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        Choice('Restart', 0),
        Choice('', -1)),
    Story(
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        Choice('Restart', 0),
        Choice('', -1)),
    Story(
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        Choice('Restart', 0),
        Choice('', -1)),
  ];

  String getStoryTitle() {
    return _storyData[_storyNumber].getTitle();
  }

  Choice getChoiceA() {
    return _storyData[_storyNumber].getChoiceA();
  }

  Choice getChoiceB() {
    return _storyData[_storyNumber].getChoiceB();
  }

  bool isChoiceAVisible() {
    return _storyData[_storyNumber].getChoiceA().isVisible();
  }

  bool isChoiceBVisible() {
    return _storyData[_storyNumber].getChoiceB().isVisible();
  }

  int nextStory(int choiceNumber) {
    _storyNumber = _storyData[_storyNumber].getNextStoryNum(choiceNumber);
    return _storyNumber;
  }
}
