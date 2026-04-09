import 'package:flutter/material.dart';

import '../controllers/quiz_controller.dart';
import '../models/quiz_question.dart';
import '../widgets/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({
    super.key,
    required this.topicLabel,
    required this.questions,
    required this.onQuizComplete,
  });

  final String topicLabel;
  final List<QuizQuestion> questions;
  final ValueChanged<int> onQuizComplete;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final QuizController controller;
  bool answeringLocked = false;

  @override
  void initState() {
    super.initState();
    controller = QuizController(questions: widget.questions);
  }

  void submitAnswer(int selectedIndex) {
    if (answeringLocked) return;

    setState(() {
      answeringLocked = true;
      controller.submitAnswer(selectedIndex);
    });

    Future<void>.delayed(const Duration(milliseconds: 180), () {
      if (!mounted) return;

      if (controller.isLastQuestion) {
        widget.onQuizComplete(controller.score);
        return;
      }

      setState(() {
        controller.moveNext();
        answeringLocked = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = controller.currentQuestion;

    return Scaffold(
      appBar: AppBar(title: Text('${widget.topicLabel} Quiz')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Question ${controller.currentQuestionIndex + 1}/${widget.questions.length}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(value: controller.progress, minHeight: 8),
              const SizedBox(height: 24),
              Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    question.text,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ...List.generate(
                question.options.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: AnswerButton(
                    text: question.options[index],
                    onTap: () => submitAnswer(index),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                'Current score: ${controller.score}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
