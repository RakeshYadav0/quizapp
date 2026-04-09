import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.topicLabel,
    required this.score,
    required this.totalQuestions,
    required this.onRestart,
    required this.onChooseAnotherTopic,
  });

  final String topicLabel;
  final int score;
  final int totalQuestions;
  final VoidCallback onRestart;
  final VoidCallback onChooseAnotherTopic;

  String get performanceMessage {
    if (score <= 3) return 'Needs Improvement';
    if (score <= 7) return 'Good';
    return 'Excellent';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz Result')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '$topicLabel Quiz Complete!',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 18),
              Text(
                'Final Score: $score/$totalQuestions',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                performanceMessage,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              FilledButton(
                onPressed: onRestart,
                style: FilledButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                child: const Text('Restart Quiz'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: onChooseAnotherTopic,
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Choose Another Topic'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
