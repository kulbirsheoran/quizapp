import 'package:flutter/material.dart';
import 'package:quizapp/progress_bar.dart';
import 'package:quizapp/quiz_screen.dart';
import 'package:quizapp/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QuizApp",
      theme: ThemeData.dark(),

      home:WelcomeScreen(),
    );
  }
}
