import 'package:flutter/material.dart';
import 'dart:math';

List<String> theWords = [
  'abcde','bab','bing'
];

int random = Random().nextInt(theWords.length);

int randomize() {
 return random = Random().nextInt(theWords.length);
}

class ListOfWords{



  int wordLength(){
    return theWords[random].length;
  }

  String theWord(){
    return theWords[random];
  }


}
