import 'package:flutter/material.dart';

class IncomeByPlatformSection extends StatelessWidget {
  const IncomeByPlatformSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Income by Platform'),
        SizedBox(height: 12),
        SizedBox(
          height: 150,
          child: Row(
            children: [
              Expanded(child: _PlatformPlaceholder(label: 'YouTube')),
              SizedBox(width: 8),
              Expanded(child: _PlatformPlaceholder(label: 'Instagram')),
              SizedBox(width: 8),
              Expanded(child: _PlatformPlaceholder(label: 'TikTok')),
              SizedBox(width: 8),
              Expanded(child: _PlatformPlaceholder(label: 'Telegram')),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlatformPlaceholder extends StatelessWidget {
  const _PlatformPlaceholder({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            const Spacer(),
            const Text('Data layer pending'),
          ],
        ),
      ),
    );
  }
}
