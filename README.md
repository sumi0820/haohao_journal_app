# Haohao Journal

A self-growth support app that helps you "carefully record and nurture your daily life." It manages tasks on a weekly basis (sprint) and facilitates daily and sprint-end reflections.

## Features

- Sprint Management (automatically starts at Monday 00:00, ends at Sunday 23:59)
- Task Registration & Management
- Task List View (by Epic and by Planned Date)
- Today's Task List
- Overdue Task Warning
- Daily Review
- Sprint Review
- Calendar View

## Tech Stack

- Flutter 3.22+
- Dart 3.x
- Riverpod (State Management)
- GoRouter (Routing)
- Freezed (Data Models)
- Material3 Design

## Development Setup

1. Install Flutter SDK

```bash
# Install Flutter SDK
brew install flutter
```

2. Install Dependencies

```bash
flutter pub get
```

3. Generate Code

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the App

```bash
flutter run
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
