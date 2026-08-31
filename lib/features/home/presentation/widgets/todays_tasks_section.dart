import 'package:flutter/material.dart';

class TodaysTasksSection extends StatelessWidget {
  const TodaysTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Today\'s Tasks'),
            Spacer(),
            Text('View all'),
          ],
        ),
        SizedBox(height: 12),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _TaskPlaceholder(label: 'Follow up with Alex'),
                Divider(height: 24),
                _TaskPlaceholder(label: 'Send proposal to TechGear'),
                Divider(height: 24),
                _TaskPlaceholder(label: 'Create content plan for May'),
                Divider(height: 24),
                _TaskPlaceholder(label: 'Schedule Instagram posts'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TaskPlaceholder extends StatelessWidget {
  const _TaskPlaceholder({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox.square(
          dimension: 20,
          child: Checkbox(value: false, onChanged: null),
        ),
        const SizedBox(width: 12),
        Expanded(child: Text(label)),
        const Text('--:--'),
      ],
    );
  }
}
