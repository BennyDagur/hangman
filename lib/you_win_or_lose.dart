import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'package:hangman/game_screen.dart';
import 'package:hangman/list_of_words.dart';

class YouWinLose extends StatefulWidget {
  const YouWinLose({Key? key}) : super(key: key);

  @override
  State<YouWinLose> createState() => _YouWinLoseState();
}

class _YouWinLoseState extends State<YouWinLose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text('YOU $winLose!', style: kWinLoseStyle,),
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
