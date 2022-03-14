import 'package:flutter/material.dart';
import 'package:stateful_practice/answer.dart';
import './question.dart';
import './quiz.dart';
import './result.dart';
void main() => runApp(MyApp());

//Defining Stateful widget class
class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  int questionIndex = 0;  //changes the index for picking questions
  void changeQuestions(){
    setState(() {
        questionIndex = questionIndex + 1;   
    });
    print("User just selected answer");

  }

  void resultAction(){
    setState(() {
      questionIndex = 0;
    });
  }
  @override
  Widget build(BuildContext context){
    // Question selections
      const questions = [
      {
        "question" : "Who is your favourite musician?",
        "answer": ["eminem", "Bethel", "Sia", "Firefly"]
      },
      {
        "question" : "which color do you like best?",
        "answer": ["yellow", "green", "purple", "indigo"]
      },
      {
        "question" : "which swallow do you love swallow ?",
        "answer": ["amala","Pounded yam","Eba","Semo"]
      },
      {
        "question" : "How will you rate your school?",
        "answer": ["1.0", "2.0", "3.0", "4.0"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quiz App")),
        body: questionIndex < questions.length
        ? Quiz(changeQuestions,questions,questionIndex) :
        Result(resultAction)       
        ),
      );
  }

}