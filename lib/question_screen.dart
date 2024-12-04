import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    // print('current quiz index = $currentQuestionIndex');

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // the start of quiz app practice session below.
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),

            // below is a way to display all answer buttons but its a repetition and hard-coded and has limitation. if some question have more than 4 answers.
            // so we uses the inbuilt keyword '...' (spread) to display these answer buttons dynamically
            // map used to convert one value to another type of value
            // ...currentQuestion.answers.map((answer) {}
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                // we need to do this in the page where the a state is in charge of displaying either home page, questions/answers page.
                return AnswerButton(
                    answerText: answer,
                    tapToGoNextHole: () {
                      answerQuestion(answer);
                    });
              },
            ),
            // below are the original non-dynamic way to display all of our answer button
            // AnswerButton(
            //   answerText: currentQuestion.answers[0],
            //   tapToGoNextHole: () {},
            // ),
            // const SizedBox(height: 20),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1],
            //   tapToGoNextHole: () {},
            // ),
            // const SizedBox(height: 20),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   tapToGoNextHole: () {},
            // ),
            // const SizedBox(height: 20),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3],
            //   tapToGoNextHole: () {},
            // ),
            // // the end of quiz app practice session.
          ],
        ),
      ),
    );
  }
}
