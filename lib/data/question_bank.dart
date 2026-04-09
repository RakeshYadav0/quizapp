import '../models/quiz_question.dart';

enum QuizTopic {
  science('Science'),
  history('History'),
  math('Math');

  const QuizTopic(this.label);
  final String label;
}

const Map<QuizTopic, List<QuizQuestion>> questionBank = {
  QuizTopic.science: [
    QuizQuestion(
      text: 'What planet is known as the Red Planet?',
      options: ['Venus', 'Mars', 'Jupiter', 'Mercury'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What gas do plants absorb from the atmosphere?',
      options: ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Helium'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'What is the chemical symbol for water?',
      options: ['O2', 'CO2', 'H2O', 'NaCl'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'How many bones are there in an adult human body?',
      options: ['206', '201', '186', '226'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'Which part of the cell contains genetic material?',
      options: ['Cytoplasm', 'Nucleus', 'Membrane', 'Ribosome'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What force keeps us on the ground?',
      options: ['Magnetism', 'Friction', 'Gravity', 'Tension'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'What is the boiling point of water at sea level?',
      options: ['100°C', '90°C', '80°C', '120°C'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'Which organ pumps blood through the body?',
      options: ['Liver', 'Lungs', 'Brain', 'Heart'],
      correctOptionIndex: 3,
    ),
    QuizQuestion(
      text: 'What is the nearest star to Earth?',
      options: ['Polaris', 'Sirius', 'The Sun', 'Alpha Centauri'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'Which process turns liquid water into vapor?',
      options: ['Condensation', 'Evaporation', 'Freezing', 'Sublimation'],
      correctOptionIndex: 1,
    ),
  ],
  QuizTopic.history: [
    QuizQuestion(
      text: 'Who was the first President of the United States?',
      options: ['Abraham Lincoln', 'Thomas Jefferson', 'George Washington', 'John Adams'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'In which year did World War II end?',
      options: ['1945', '1939', '1918', '1950'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'Which ancient civilization built the pyramids?',
      options: ['Romans', 'Greeks', 'Mayans', 'Egyptians'],
      correctOptionIndex: 3,
    ),
    QuizQuestion(
      text: 'The Renaissance began in which country?',
      options: ['France', 'Italy', 'England', 'Spain'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What wall came down in 1989 symbolizing the Cold War’s end?',
      options: ['Great Wall', 'Berlin Wall', 'Hadrian’s Wall', 'Western Wall'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'Who discovered America in 1492 according to popular historical accounts?',
      options: ['Vasco da Gama', 'Christopher Columbus', 'Marco Polo', 'Ferdinand Magellan'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'Which empire was ruled by Julius Caesar?',
      options: ['Ottoman Empire', 'Roman Empire', 'British Empire', 'Mongol Empire'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'Who was known as the Maid of Orléans?',
      options: ['Cleopatra', 'Joan of Arc', 'Queen Victoria', 'Marie Curie'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'The Declaration of Independence was signed in which year?',
      options: ['1776', '1789', '1801', '1754'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'Which civilization is credited with early democracy?',
      options: ['Sparta', 'Athens', 'Persia', 'Babylon'],
      correctOptionIndex: 1,
    ),
  ],
  QuizTopic.math: [
    QuizQuestion(
      text: 'What is 8 × 7?',
      options: ['54', '56', '64', '49'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What is the square root of 81?',
      options: ['9', '8', '7', '6'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'What is 15 + 27?',
      options: ['42', '40', '44', '41'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'What is 100 ÷ 4?',
      options: ['20', '25', '30', '40'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What is the value of π (pi) approximately?',
      options: ['2.14', '3.14', '4.13', '3.41'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'What is 12²?',
      options: ['124', '122', '144', '142'],
      correctOptionIndex: 2,
    ),
    QuizQuestion(
      text: 'What is 45 - 19?',
      options: ['26', '24', '28', '25'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'What is 3/4 as a decimal?',
      options: ['0.75', '0.25', '0.5', '1.25'],
      correctOptionIndex: 0,
    ),
    QuizQuestion(
      text: 'Solve: 9 + 6 ÷ 3',
      options: ['5', '11', '15', '13'],
      correctOptionIndex: 1,
    ),
    QuizQuestion(
      text: 'How many degrees are in a right angle?',
      options: ['45', '180', '90', '60'],
      correctOptionIndex: 2,
    ),
  ],
};
