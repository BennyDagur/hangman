import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'list_of_words.dart';
import 'dart:math';

ListOfWords listOfWords = ListOfWords();
String winLose = '';

class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  final clearText = TextEditingController();

  List<String> wordLines = lines().wordLines().split(",");

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
                    child: Image(image: AssetImage('images/${wrongBlank.length}hang.png')),
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
                  if(listOfWords.theWord().toLowerCase().contains(text.toLowerCase())){
                    for(int i = 0; listOfWords.theWord().length > i; i++)
                      if(listOfWords.theWord()[i].toLowerCase() == text.toLowerCase()) {
                        wordLines[i] = listOfWords.theWord()[i];
                        if(wordLines.join() == listOfWords.theWord()){
                          winLose = 'WIN';
                          Navigator.pushNamed(context, 'WinLose');
                          wrongBlank = '';
                        }
                      }
                  clearText.clear();
                } else {
                    if(wrongBlank.contains(text.toLowerCase())) {}
                      else {wrongBlank += text.toLowerCase();}
                      if(wrongBlank.length == 6){
                        winLose = 'LOSE';
                        Navigator.pushNamed(context, 'WinLose');
                        wrongBlank = '';
                      }
                      clearText.clear();
                  }},
                decoration: InputDecoration(
                  counterText: '',
                  hintText: '${listOfWords.theWord()}',
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

String rightBlank = ('-,'*listOfWords.theWord().length);
String wrongBlank = ('');

class lines {
  String wordLines(){
    String line = '-,'*listOfWords.theWord().length;
    return line;
  }
}