import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:haohao_journal/screens/home/home_screen.dart';

void main() {
  group('HomeScreen Tests', () {
    testWidgets('displays app bar with title', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(),
        ),
      );

      expect(find.text('Haohao Journal'), findsOneWidget);
    });

    testWidgets('displays calendar button', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(),
        ),
      );

      expect(find.byIcon(Icons.calendar_today), findsOneWidget);
    });

    testWidgets('displays add task button', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(),
        ),
      );

      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('displays daily review section', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(),
        ),
      );

      expect(find.text('Daily Review'), findsOneWidget);
      expect(find.text('Write Today\'s Review'), findsOneWidget);
    });
  });
}
