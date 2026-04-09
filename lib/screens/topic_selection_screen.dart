import 'package:flutter/material.dart';

import '../data/question_bank.dart';

class TopicSelectionScreen extends StatelessWidget {
  const TopicSelectionScreen({
    super.key,
    required this.onTopicSelected,
  });

  final ValueChanged<QuizTopic> onTopicSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose Quiz Topic')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Interactive Quiz Learning Application',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              ...QuizTopic.values.map(
                (topic) => Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: FilledButton.tonalIcon(
                    onPressed: () => onTopicSelected(topic),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    icon: const Icon(Icons.menu_book_rounded),
                    label: Text(topic.label),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
