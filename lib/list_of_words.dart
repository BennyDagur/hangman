import 'package:flutter/material.dart';
import 'dart:math';

List<String> theWords = [
  'abc','bab','bing'
];


class ListOfWords{


  List<String> wrongLetters = [

  ];

  int random = Random().nextInt(theWords.length);

  int wordLength(){
    return theWords[random].length;
  }



}
