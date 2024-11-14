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
    return Container(
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
      child: const Center(
        // this is where we calling the statefulWidget.
        child: QuizInteraction(),
      ),
    );
  }
}
