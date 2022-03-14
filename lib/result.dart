import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {

  final VoidCallback resetClickAction;

  // ignore: use_key_in_widget_constructors
  const Result(this.resetClickAction);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Thanks for partaking!", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        RaisedButton(onPressed: resetClickAction,
                                color: Colors.blue,
                                 textColor: Colors.white,
         child: Text("Restart",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.bold),),)
      ],
    );
  }
}