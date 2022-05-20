import 'package:flutter/material.dart';
import 'dart:math';

List<String> theWords = [
  'abc','bab','bing'
];
int random = Random().nextInt(theWords.length);

class ListOfWords{



  int wordLength(){
    return theWords[random].length;
  }

  String word = theWords[random];


}
