import 'package:flutter/material.dart';
import 'game_screen.dart';
import 'starting_menu.dart';
import 'you_win_or_lose.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'StartMenu',
      routes: {
        'StartMenu': (context) => StartMenu(),
        'Game': (context) => GameScreen(),
        'WinLose': (context) => YouWinLose(),
      },
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: Colors.white
        ),
    );
  }
}