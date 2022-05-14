

import 'package:flutter/material.dart';
import 'list_of_words.dart';

class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

ListOfWords listOfWords = ListOfWords();

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
              //TODO UI that shows how many characters are in the word/sentence.
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  alignment: Alignment.center,
                  child: Text(listOfWords.getWords()),
                ),
              ),
              //TODO Implement the ability to input a character
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type here to guess',
                  border: OutlineInputBorder(),
                ),
              ),
              //TODO Place to keep track of incorrectly guessed letters.
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  alignment: Alignment.center,
                  child: Text('_'),
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
