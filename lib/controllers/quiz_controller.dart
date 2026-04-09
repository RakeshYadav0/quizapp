import '../models/quiz_question.dart';

class QuizController {
  QuizController({required this.questions});

  final List<QuizQuestion> questions;

  int currentQuestionIndex = 0;
  int score = 0;

  QuizQuestion get currentQuestion => questions[currentQuestionIndex];

  double get progress => (currentQuestionIndex + 1) / questions.length;

  bool get isLastQuestion => currentQuestionIndex == questions.length - 1;

  void submitAnswer(int selectedIndex) {
    if (currentQuestion.isCorrect(selectedIndex)) {
      score += 1;
    }
  }

  bool moveNext() {
    if (isLastQuestion) return false;
    currentQuestionIndex += 1;
    return true;
  }

  void reset() {
    currentQuestionIndex = 0;
    score = 0;
  }
}
