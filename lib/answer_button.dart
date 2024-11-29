import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  // AnswerButton(this.answerText, this.tapToGoNextHole, {super.key});
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.tapToGoNextHole,
  });

  final String answerText;
  final void Function() tapToGoNextHole;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tapToGoNextHole,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 63, 181, 150),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
