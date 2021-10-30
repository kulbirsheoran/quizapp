import 'package:flutter/material.dart';
import 'package:quizapp/progress_bar.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('Assets/images/quiz.jpg'), fit: BoxFit.fill)),
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ProgressBar(),
            ],
          ),
        ),
      )
    ]);
  }
}
