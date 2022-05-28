import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'package:hangman/game_screen.dart';
import 'package:hangman/list_of_words.dart';

class EndScreen extends StatefulWidget {
  const EndScreen({Key? key}) : super(key: key);

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text('You $winLose! The word was ${wordContainer[random]}', style: kWinLoseStyle,),
            ),
          ),
          SizedBox(height: 10,),
          MaterialButton(
            onPressed: (){Navigator.pushNamed(context, 'StartMenu');},
            color: Colors.blue,
            child: Text('Play again?', style: kWinLoseStyle,),
          ),
        ],
      ),
    );
  }
}
