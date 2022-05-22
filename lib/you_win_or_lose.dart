import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';

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
              child: Text('YOU WIN!', style: kWinLoseStyle,),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Play again?', style: kWinLoseStyle,),
            ),
          )
        ],
      ),
    );
  }
}
