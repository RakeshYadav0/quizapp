import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_app/controllers/quiz_controller.dart';
import 'package:quiz_app/models/quiz_question.dart';

void main() {
  group('QuizController', () {
    final questions = [
      const QuizQuestion(
        text: 'Q1',
        options: ['A', 'B', 'C', 'D'],
        correctOptionIndex: 1,
      ),
      const QuizQuestion(
        text: 'Q2',
        options: ['A', 'B', 'C', 'D'],
        correctOptionIndex: 2,
      ),
    ];

    test('scores correct answers and advances', () {
      final controller = QuizController(questions: questions);

      expect(controller.score, 0);
      expect(controller.currentQuestionIndex, 0);

      controller.submitAnswer(1);
      expect(controller.score, 1);
      expect(controller.moveNext(), isTrue);
      expect(controller.currentQuestionIndex, 1);

      controller.submitAnswer(0);
      expect(controller.score, 1);
      expect(controller.isLastQuestion, isTrue);
      expect(controller.moveNext(), isFalse);
    });
  });
}
