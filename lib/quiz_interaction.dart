import 'package:flutter/material.dart';

class QuizInteraction extends StatefulWidget {
  // 5.) for stateful widget we also need the constructor function
  const QuizInteraction({super.key});

  // 1.) invoke the createState method for statefulWidget
  @override
  State<QuizInteraction> createState() {
    // 4.) return a value of this type using another class see point 3.
    return _QuizInteractionState();
  }
}

// 2.) adding second class to create value to return in createState method
class _QuizInteractionState extends State<QuizInteraction> {
  // 3.) in this we need to add the build() method - remembering the @override
  @override
  Widget build(context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'The Quiz App',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
