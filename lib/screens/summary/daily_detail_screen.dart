import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class DailyDetailScreen extends ConsumerStatefulWidget {
  const DailyDetailScreen({super.key, required this.date});

  final DateTime date;

  @override
  ConsumerState<DailyDetailScreen> createState() => _DailyDetailScreenState();
}

class _DailyDetailScreenState extends ConsumerState<DailyDetailScreen> {
  final _doneSummaryController = TextEditingController();
  final _feelingSummaryController = TextEditingController();

  @override
  void dispose() {
    _doneSummaryController.dispose();
    _feelingSummaryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyy-MM-dd').format(widget.date);

    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Review - $formattedDate'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // TODO: Implement review saving
              context.pop();
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Tasks Section
          const Text(
            'Tasks',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          // TODO: Implement task list
          const Center(
            child: Text('No tasks for this day'),
          ),
          const SizedBox(height: 32),
          // Review Section
          const Text(
            'Daily Review',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _doneSummaryController,
            decoration: const InputDecoration(
              labelText: 'What did you do today?',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _feelingSummaryController,
            decoration: const InputDecoration(
              labelText: 'How do you feel? What did you learn?',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
