import 'package:adv_basics/data/questions.dart';

import 'questions_screen.dart';
import 'package:flutter/material.dart';
import 'home_container.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
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

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeContainer(
      switchScreen,
      Color.fromRGBO(138, 10, 131, 1),
      Color.fromRGBO(90, 0, 86, 1),
    );

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(62, 0, 119, 1),
        body: screenWidget,
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
