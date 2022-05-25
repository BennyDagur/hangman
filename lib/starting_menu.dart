import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'package:hangman/game_screen.dart';
import 'list_of_words.dart';


class StartMenu extends StatefulWidget {
  const StartMenu({Key? key}) : super(key: key);

  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hangman'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                setState(() {});
                lines().wordLines();
                random = Random().nextInt(theWords.length);
                Navigator.pushNamed(context, 'Game');
                },
              color: Colors.blue,
              child: Text('Play', style: kWinLoseStyle,),
            ),
          ),
          SizedBox(height: 10,),
          MaterialButton(
            onPressed: ()
            {Navigator.pushNamed(context, 'WinLose');},
            color: Colors.red,
            child: Text('Rules', style: kWinLoseStyle,),
          ),
        ],
      ),
    );
  }
}
