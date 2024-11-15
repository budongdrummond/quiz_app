import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_interaction.dart';

/// this is the class for the main container which-
/// will be the same throughout the app.
///

// 1.) class to create custome widget and in this e.g.; a statelessWidget.
class StartScreen extends StatelessWidget {
  const StartScreen(
      {super.key}); // 4.) add constructor function with named argument

  const StartScreen.gradientDrawing({super.key});

  /// we building 3 widgets; the Container & Center.
  /// the 3rd widget, Quiz_Interaction(), is going to be-
  /// calling a stateful Widget
  ///

  // 3.) to make it clear at the end implementing and overiding the method stated by statelessWidget.
  @override
  // 2.) inside of the custom statelesidget class we add a build method-
  //      which will return a widget (a type of widget)
  Widget build(BuildContext context) {
    // 4.) we use 'center' to ensure widget is centre of the screen
    return Center(
      // 5.) we use column or row after because if we want multiple widgets
      //      next to each other. Use 'children' argument for column which in turn it wants a list
      //      column display up/down and row is side to side.
      child: Column(
        // 6.) use mainAxisSize to tidy the way our widgets in Column being arranged
        //      maxAxisSize.min used so we can minimise the free space around the axis of Column
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // padding
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Hit button to start Quiz',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(153, 253, 235, 162)),
          ),
          // padding
          const SizedBox(
            height: 50,
          ),
          FloatingActionButton.extended(
            // 8.) once pressed the quiz interaction custom statefulWidget is called
            onPressed: () {},
            label: const Text('Press to START'),
            icon: const Icon(Icons.quiz),
            foregroundColor: const Color.fromARGB(194, 169, 60, 60),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
