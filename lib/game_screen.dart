import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'list_of_words.dart';

ListOfWords listOfWords = ListOfWords();

class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  int winLose = 0;
  final clearText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hangman'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //TODO Place for the hangman art - which will update as the game progresses (with each failure)
          Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(String line in wordLines)
                      Text(line, style: kWordStyle,)
                    ],
                  ),
                ),
              ),
              //TODO Add a win/lose function
              TextField(
                controller: clearText,
                maxLength: 1,
                onSubmitted: (text){
                  setState(() {});
                  if(listOfWords.theWord.contains(text)){
                    for(int i = 0; listOfWords.theWord.length > i; i++)
                      if(listOfWords.theWord[i] == text) {
                        wordLines[i] = text;
                        if(wordLines.join("") == listOfWords.theWord){
                          winLose = 1;
                          Navigator.pushNamed(context, 'WinLose');
                        }
                      }
                  clearText.clear();
                } else {
                    if(wrongBlank.contains(text)) {}
                      else {wrongBlank += text;}
                      if(wrongBlank.length == 6){
                        winLose = 2;
                      }
                      clearText.clear();
                  }},
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Type here to guess',
                  border: OutlineInputBorder(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(wrongBlank, style: kWordStyle,),
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}

String rightBlank = ('-,'*listOfWords.wordLength());
String wrongBlank = ('');
List<String> wordLines = rightBlank.split(",");