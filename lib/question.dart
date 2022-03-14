import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String newquestion;

  Question(this.newquestion);   //Instantiating the new question with passed-in data.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child : Text(newquestion,
              style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 41, 41, 41)),
              textAlign: TextAlign.center,
    ),
  );
  }
}