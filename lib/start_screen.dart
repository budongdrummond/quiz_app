import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  /// we cant use the argument in the const. function in the build method
  /// so we need to place it into a new variable.
  /// the 'this.'in the argument above allow us automatically-
  /// set its value with the variable set below and use it in the build method.
  ///
  final void Function() startQuiz;
  final activeHomePageImage =
      'assets/images/auchenblae-golf-club-logo.png'; // make sure forward slash is used

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // auchenblae logo using asset
        Image.asset(
          activeHomePageImage,
          width: 150,
        ),
        // padding using sized box
        const SizedBox(
          height: 20,
        ),
        // main text
        const Text(
          'Welcome to quiz',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        // padding using sized box
        const SizedBox(
          height: 20,
        ),
        // text button to start calculate score.
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            textStyle: const TextStyle(
              fontSize: 15,
            ),
          ), // invalid const value error mean check any unwanted const in lines above
          child: const Text('Calculate Score'),
        ),
        // padding using sized box
        const SizedBox(
          height: 10,
        ),
        // text button to start recording score
        TextButton(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            textStyle: const TextStyle(fontSize: 15),
          ), // invalid const value error mean check any unwanted const in lines above
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
