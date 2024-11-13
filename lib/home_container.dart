import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_interaction.dart';

/// this is the class for the main container which-
/// will be the same throughout the app.
///
class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  const HomeContainer.gradientDrawing({super.key});

  /// we building 3 widgets; the Container & Center.
  /// the 3rd widget, Quiz_Interaction(), is going to be-
  /// calling a stateful Widget
  ///
  @override
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
