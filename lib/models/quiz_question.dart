/// This class wont be a widget but its just a blueprint of 'question' object
/// i.e, it should contain; text for a question & a list of answers
///
class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text; // question text
  final List<String> answers; // list of answers

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);

    shuffledList.shuffle();
    return shuffledList;
  }
}
