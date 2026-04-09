# Quiz App (Flutter)

A complete mobile **Interactive Quiz Learning Application** built with Flutter and designed for Android APK generation.

## Features

- Topic selection screen with:
  - Science
  - History
  - Math
- 10 questions per topic
- 4 options per question, exactly one correct answer
- Auto-advance to next question after each answer
- Quiz UI includes:
  - Question number indicator (e.g., `Question 3/10`)
  - Question text
  - Four answer buttons
  - Progress bar
- Scoring:
  - Correct = 1
  - Wrong = 0
- Result screen:
  - Final score (e.g., `8/10`)
  - Performance message:
    - 0–3 → Needs Improvement
    - 4–7 → Good
    - 8–10 → Excellent
  - Restart Quiz button
  - Choose Another Topic button

## Folder Structure

```text
quiz_app/
├── android/
│   ├── app/
│   │   ├── build.gradle.kts
│   │   └── src/main/
│   ├── gradle/wrapper/
│   ├── build.gradle.kts
│   ├── gradle.properties
│   ├── gradlew
│   ├── gradlew.bat
│   └── settings.gradle.kts
├── ios/
├── lib/
│   ├── controllers/
│   │   └── quiz_controller.dart
│   ├── data/
│   │   └── question_bank.dart
│   ├── models/
│   │   └── quiz_question.dart
│   ├── screens/
│   │   ├── quiz_screen.dart
│   │   ├── result_screen.dart
│   │   └── topic_selection_screen.dart
│   ├── widgets/
│   │   └── answer_button.dart
│   └── main.dart
├── analysis_options.yaml
├── pubspec.yaml
└── README.md
```

## Build and Run

### 1) Prerequisites

- Install Flutter SDK (stable)
- Install Android Studio with Android SDK + platform tools
- Confirm setup:

```bash
flutter doctor
```

### 2) Get dependencies

```bash
flutter pub get
```

### 3) Run in debug mode

```bash
flutter run
```

### 4) Build release APK

```bash
flutter build apk --release
```

### 5) APK output location

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Notes

- Android Gradle files are included so this project can be opened in Android Studio.
- iOS folder is included for cross-platform Flutter project structure.
