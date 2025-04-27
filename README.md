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
- OpenAPI Generator (API Client Generation)

## Development Setup

1. Install Flutter SDK

```bash
# Install Flutter SDK
brew install flutter
```

2. Install OpenAPI Generator

```bash
brew install openapi-generator
```

3. Install Dependencies

```bash
flutter pub get
```

4. Generate Code

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

5. Run the App

```bash
flutter run
```

## Updating API Types

To update the API client types when the server's OpenAPI specification changes:

1. Ensure the server is running locally
2. Generate the API client code:

```bash
# Generate API client from OpenAPI specification
openapi-generator generate \
  -i http://localhost:8080/v3/api-docs \
  -g dart-dio \
  -o lib/api
```

3. Update dependencies and regenerate code:

```bash
# Update dependencies
flutter pub get

# Regenerate code (including mocks for tests)
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run tests to ensure everything works:

```bash
# Run API tests
flutter test test/api
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
