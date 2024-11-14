import 'package:flutter/material.dart';

class QuizInteraction extends StatefulWidget {
  // 5.) for stateful widget we also need the constructor function as usual
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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
          // padding
          const SizedBox(
            height: 50,
          ),
          const Text(
            'The Quiz App',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          // padding
          const SizedBox(
            height: 50,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Press to START'),
            icon: const Icon(Icons.quiz),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
