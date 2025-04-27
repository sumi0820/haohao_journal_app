import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:haohao_journal/models/task.dart';
import 'package:haohao_journal/providers/task_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todayTasks = ref.watch(todayTasksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Haohao Journal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () => context.push('/summary'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Today's Tasks Section
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Text(
                  "Today's Tasks",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                if (todayTasks.isEmpty)
                  const Center(
                    child: Text('No tasks for today'),
                  )
                else
                  ...todayTasks.map((task) => Card(
                        child: ListTile(
                          title: Text(task.title),
                          subtitle: task.memo != null ? Text(task.memo!) : null,
                          trailing: IconButton(
                            icon: Icon(
                              task.status == TaskStatus.done
                                  ? Icons.check_circle
                                  : Icons.check_circle_outline,
                            ),
                            onPressed: () {
                              if (task.status != TaskStatus.done) {
                                ref.read(taskListProvider.notifier).updateTask(
                                      task.copyWith(
                                        status: TaskStatus.done,
                                        completedDate: DateTime.now(),
                                      ),
                                    );
                              }
                            },
                          ),
                          onTap: () => context.push('/task/${task.id}'),
                        ),
                      )),
              ],
            ),
          ),
          // Daily Review Section
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Daily Review',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () =>
                      context.push('/daily-review', extra: DateTime.now()),
                  child: const Text('Write Today\'s Review'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/task/create'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
