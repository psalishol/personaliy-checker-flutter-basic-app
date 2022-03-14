import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback pressAction;   //using voidcallback
  final String answerChoices;
  Answer(this.pressAction, this.answerChoices);

  @override
  Widget build(BuildContext context) {

      return Container(
        width: double.infinity,
        margin: EdgeInsets.all(1.5),
        child : RaisedButton(child: Text(answerChoices,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                            onPressed: pressAction,
                            color: Colors.blue,
                            textColor: Colors.white,
        )
      );
  }
}