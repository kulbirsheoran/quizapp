import 'package:flutter/material.dart';
import 'package:quizapp/body.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [

          FlatButton(onPressed: (){}, child: Text("Skip")),
        ],
      ),
      body: Body(),

    );
  }
}
