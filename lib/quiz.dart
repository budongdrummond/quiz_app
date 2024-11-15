import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      // add an argument to display a widget as MaterialApp widget is only a shell widget
      home: Scaffold(
        // add body argument that accept a widget - which is the 'start' screen widget
        //  in this instance - it uses special/custom function widget 'start screen'
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 45, 3, 96),
                Color.fromARGB(255, 81, 22, 91)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const StartScreen(), // call the next custom widget
        ),
      ),
    );
  }
}
