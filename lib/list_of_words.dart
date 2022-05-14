import 'package:flutter/material.dart';
import 'dart:math';

class ListOfWords{

  List<String> theWords = [
    'abc','bab','bing'
  ];

  List<String> wrongLetters = [

  ];

  int random = Random().nextInt(3);

  String getWords(){
    return theWords[random];
  }



}
