import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TaskListScreen extends ConsumerWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tasks'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'By Epic'),
              Tab(text: 'By Date'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // By Epic Tab
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // TODO: Implement epic-based task list
                const Center(
                  child: Text('No tasks by epic'),
                ),
              ],
            ),
            // By Date Tab
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // TODO: Implement date-based task list
                const Center(
                  child: Text('No tasks by date'),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push('/task/create'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
