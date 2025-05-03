import 'questions_screen.dart';
import 'package:flutter/material.dart';
import 'home_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  /*Widget? activeScreen;
  @override
  void initState() {
    activeScreen = HomeContainer(
      switchScreen,
      Color.fromRGBO(138, 10, 131, 1),
      Color.fromRGBO(90, 0, 86, 1),
    );
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(110, 0, 105, 1),
        body:
            activeScreen == 'start-screen'
                ? HomeContainer(
                  switchScreen,
                  Color.fromRGBO(138, 10, 131, 1),
                  Color.fromRGBO(90, 0, 86, 1),
                )
                : QuestionsScreen(),
      ),
    );
  }
}

/*
void quiz() {
  const MaterialApp(
    home: Scaffold(
      body: QuestionsScreen(
        Color.fromRGBO(44, 0, 94, 1),
        Color.fromRGBO(122, 0, 153, 1),
      ),
    ),
  );
}
*/
