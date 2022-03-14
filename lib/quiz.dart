import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  late int questionIndex;
  late List<Map> questions;
  late VoidCallback changeQuestions;

  Quiz(@required this.changeQuestions, 
       @required this.questions, 
       @required this.questionIndex);


  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Question((questions[questionIndex]["question"] as String)),   //The questions goes in here
                                                                      // The questions would be a dynamic type
                                                                      // Changes based on the user selection
          // Answers button
          ...(questions[questionIndex]["answer"] as List<String>)
          .map((answer){ return Answer(changeQuestions,answer);}).toList()
      
    ]);
  }
}