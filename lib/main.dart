import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:haohao_journal/screens/home/home_screen.dart';
import 'package:haohao_journal/screens/summary/daily_detail_screen.dart';
import 'package:haohao_journal/screens/summary/summary_screen.dart';
import 'package:haohao_journal/screens/task/task_create_screen.dart';
import 'package:haohao_journal/screens/task/task_detail_screen.dart';
import 'package:haohao_journal/screens/task/task_list_screen.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
