import 'package:flutter/material.dart';
import 'dart:math';

List<String> wordContainer = [
  'abcde','bab','bing', 'God Emperor of Mankind'
];

int random = Random().nextInt(wordContainer.length);

int randomize() {
 return random = Random().nextInt(wordContainer.length);
}

class ListOfWords{



  int wordLength(){
    return wordContainer[random].length;
  }

  String theWord(){
    return wordContainer[random];
  }


}
