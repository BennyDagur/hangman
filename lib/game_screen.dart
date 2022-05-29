import 'package:flutter/material.dart';
import 'package:hangman/constants.dart';
import 'list_of_words.dart';

ListOfWords listOfWords = ListOfWords();
String winLose = '';


String rightBlank = ('-,'*listOfWords.theWord().length);
String wrongBlank = ('');

String Lines(){
    String line = '-,'*listOfWords.theWord().length;
    return line;
  }


class GameScreen extends StatefulWidget {
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  final textController = TextEditingController();

  List<String> wordLines = Lines().split(",");

  List<String> spaces() {
    for(int num = 0; listOfWords.theWord().length > num; num++)
      if(listOfWords.theWord()[num].contains(' ')) {
        wordLines[num] = listOfWords.theWord()[num];
      }
    return wordLines;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Hangman'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Image(image: AssetImage('images/${wrongBlank.length}hang.png')),
                  ),
                ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        for(String line in spaces())
                        Text(line, style: kWordStyle,)
                      ],
                    ),
                  ),
                ),
              ),
              TextField(
                controller: textController,
                maxLength: 1,
                onSubmitted: (text){
                  setState(() {});
                  if(listOfWords.theWord().toLowerCase().contains(text.toLowerCase())){
                    for(int i = 0; listOfWords.theWord().length > i; i++)
                      if(listOfWords.theWord()[i].toLowerCase() == text.toLowerCase()) {
                        wordLines[i] = listOfWords.theWord()[i];
                        if(wordLines.join() == listOfWords.theWord()){
                          winLose = 'Win';
                          Navigator.pushNamed(context, 'End');
                        }
                      }
                  textController.clear();
                } else {
                    if(wrongBlank.contains(text.toLowerCase())) {}
                      else {wrongBlank += text.toLowerCase();}
                      if(wrongBlank.length == 6){
                        winLose = 'Lose';
                        Navigator.pushNamed(context, 'End');
                      }
                      textController.clear();
                  }},
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Type here to guess',
                  border: OutlineInputBorder(),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(wrongBlank, style: kWordStyle,),
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
