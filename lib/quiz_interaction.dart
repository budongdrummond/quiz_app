import 'package:flutter/material.dart';

// 1.) create the class for statefulWidget
class QuizInteraction extends StatefulWidget {
  // 6.) for stateful widget we also need the constructor function as usual
  const QuizInteraction({super.key});

  // 4.) invoke the createState method for statefulWidget
  @override
  State<QuizInteraction> createState() {
    // 5.) return a value of this type using another class see point 3.
    return _QuizInteractionState();
  }
}

// 2.) adding second (private) class to create value to return in createState method
class _QuizInteractionState extends State<QuizInteraction> {
  // 3.) in this we need to add the build() method - remembering the @override
  @override
  Widget build(context) {
    return const Text('The Quiz Screen Here');
  }
}
