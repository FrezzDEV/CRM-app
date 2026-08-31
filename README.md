# CRM-app

Flutter/Dart CRM application for Android.

## Project structure

```text
lib/
├── app/
│   └── app.dart
├── core/
│   └── theme/
│       └── app_theme.dart
├── features/
│   ├── navigation/
│   │   └── presentation/
│   │       └── main_shell.dart
│   ├── home/
│   │   └── presentation/
│   │       ├── screens/
│   │       │   └── home_screen.dart
│   │       └── widgets/
│   │           ├── app_header.dart
│   │           ├── goal_progress_card.dart
│   │           ├── income_by_platform_section.dart
│   │           └── todays_tasks_section.dart
│   ├── history/
│   │   └── presentation/
│   │       └── screens/
│   │           └── history_screen.dart
│   └── settings/
│       └── presentation/
│           └── screens/
│               └── settings_screen.dart
└── main.dart
```

## UI rules from the reference

The right-hand design is the source of truth. Home contains Apex header, Monthly Goal, Income by Platform, Today's Tasks, and bottom navigation for Home / History / Settings.

Do not add avatar, search, Calendar tab, duplicated branding, or unrelated CRM controls unless explicitly requested.

## Architecture rule

Each new feature or technology must first be checked against the existing project structure. Keep UI, business logic, and data access separated; reuse existing components before introducing new dependencies.
