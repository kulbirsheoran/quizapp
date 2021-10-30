import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/quiz_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Assets/images/quiz.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              SafeArea(child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Spacer(flex: 2,),
                    Text("Let's Play Quiz",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),),

                    Text("Enter your information below"),
                    Spacer(flex: 2,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Full Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            )
                      ),
                    ),
                    Spacer(flex: 2,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizScreen()));
                      },
                      child: Container(width: double.infinity,

                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text("Lets Start Quiz",style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),),

                      ),
                    ),
                    Spacer(flex: 2,)
                  ],
                ),
              ))
            ],
          ),
        );

  }
}
