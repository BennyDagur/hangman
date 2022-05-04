//TODO Implement the ability to input a character


//TODO UI that shows how many characters are in the word/sentence.


//TODO Place to keep track of incorrectly guessed letters.


//TODO Place for the hangman art - which will update as the game progresses (with each failure)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hangman'),
      ),
    );
  }
}
