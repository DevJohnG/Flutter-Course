import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const startAlignment = Alignment.centerRight;
const endAlignment = Alignment.centerLeft;

class HomeContainer extends StatelessWidget {
  const HomeContainer(this.startQuiz, this.c1, this.c2, {super.key});

  final void Function() startQuiz;

  final Color c1;
  final Color c2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            /*
            Opacity(
              opacity: 0.6,
              child: Image.asset('assets/images/quiz-logo.png', width: 300),
            ),*/
            SizedBox(height: 50),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
              ),
            ),
            SizedBox(height: 25),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              icon: Icon(Icons.arrow_right_alt_rounded),
              label: const Text('Start Quiz', style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
