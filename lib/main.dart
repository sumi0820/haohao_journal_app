import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:haohao_journal/screens/home/home_screen.dart';
import 'package:haohao_journal/screens/summary/daily_detail_screen.dart';
import 'package:haohao_journal/screens/summary/summary_screen.dart';
import 'package:haohao_journal/screens/task/task_create_screen.dart';
import 'package:haohao_journal/screens/task/task_detail_screen.dart';
import 'package:haohao_journal/screens/task/task_list_screen.dart';
import 'package:openapi/api.dart';

void main() {
  // Initialize API client
  final apiClient = ApiClient(basePath: 'http://localhost:8080');
  final healthCheckApi = HealthCheckControllerApi(apiClient);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/task',
      builder: (context, state) => const TaskListScreen(),
    ),
    GoRoute(
      path: '/task/create',
      builder: (context, state) => const TaskCreateScreen(),
    ),
    GoRoute(
      path: '/task/:taskId',
      builder: (context, state) => TaskDetailScreen(
        taskId: state.pathParameters['taskId']!,
      ),
    ),
    GoRoute(
      path: '/summary',
      builder: (context, state) => const SummaryScreen(),
    ),
    GoRoute(
      path: '/daily-review',
      builder: (context, state) => DailyDetailScreen(
        date: state.extra as DateTime,
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Haohao Journal',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: const Color(0xFFE8EBEF),
          onBackground: const Color(0xFF57626A),
          primary: const Color(0xFF57626A),
          onPrimary: Colors.white,
          secondary: const Color(0xFF57626A).withOpacity(0.7),
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: const Color(0xFF57626A),
          surfaceVariant: const Color(0xFFE8EBEF).withOpacity(0.5),
          onSurfaceVariant: const Color(0xFF57626A),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE8EBEF),
          foregroundColor: Color(0xFF57626A),
          elevation: 0,
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF57626A),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF57626A),
          foregroundColor: Colors.white,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFF57626A),
              width: 2,
            ),
          ),
        ),
      ),
      routerConfig: _router,
    );
  }
}
