import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohao_journal/models/task.dart';

final taskListProvider =
    StateNotifierProvider<TaskListNotifier, List<Task>>((ref) {
  return TaskListNotifier();
});

final todayTasksProvider = Provider<List<Task>>((ref) {
  final tasks = ref.watch(taskListProvider);
  final today = DateTime.now();
  return tasks.where((task) {
    return task.plannedDate.year == today.year &&
        task.plannedDate.month == today.month &&
        task.plannedDate.day == today.day;
  }).toList();
});

class TaskListNotifier extends StateNotifier<List<Task>> {
  TaskListNotifier() : super([]);

  void addTask(Task task) {
    state = [...state, task];
  }

  void updateTask(Task task) {
    state = [
      for (final t in state)
        if (t.id == task.id) task else t
    ];
  }

  void deleteTask(String taskId) {
    state = state.where((task) => task.id != taskId).toList();
  }
}
