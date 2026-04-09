class QuizQuestion {
  const QuizQuestion({
    required this.text,
    required this.options,
    required this.correctOptionIndex,
  }) : assert(options.length == 4, 'Each question must have exactly 4 options.');

  final String text;
  final List<String> options;
  final int correctOptionIndex;

  bool isCorrect(int selectedIndex) => selectedIndex == correctOptionIndex;
}
