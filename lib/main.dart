import 'package:flutter/material.dart';

import 'data/question_bank.dart';
import 'models/quiz_question.dart';
import 'screens/quiz_screen.dart';
import 'screens/result_screen.dart';
import 'screens/topic_selection_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Learning App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF6F7FB),
      ),
      home: const QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatefulWidget {
  const QuizHomePage({super.key});

  @override
  State<QuizHomePage> createState() => _QuizHomePageState();
}

class _QuizHomePageState extends State<QuizHomePage> {
  QuizTopic? selectedTopic;
  int? lastScore;

  List<QuizQuestion> get selectedQuestions =>
      selectedTopic == null ? const [] : questionBank[selectedTopic!] ?? const [];

  void handleTopicSelected(QuizTopic topic) {
    setState(() {
      selectedTopic = topic;
      lastScore = null;
    });
  }

  void handleQuizComplete(int score) {
    setState(() {
      lastScore = score;
    });
  }

  void restartQuiz() {
    setState(() {
      lastScore = null;
    });
  }

  void chooseAnotherTopic() {
    setState(() {
      selectedTopic = null;
      lastScore = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (selectedTopic == null) {
      return TopicSelectionScreen(onTopicSelected: handleTopicSelected);
    }

    if (lastScore == null) {
      return QuizScreen(
        topicLabel: selectedTopic!.label,
        questions: selectedQuestions,
        onQuizComplete: handleQuizComplete,
      );
    }

    return ResultScreen(
      topicLabel: selectedTopic!.label,
      score: lastScore!,
      totalQuestions: selectedQuestions.length,
      onRestart: restartQuiz,
      onChooseAnotherTopic: chooseAnotherTopic,
    );
  }
}
