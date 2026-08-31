import 'package:flutter/material.dart';

class GoalProgressCard extends StatelessWidget {
  const GoalProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Monthly Goal'),
                  SizedBox(height: 8),
                  Text('Goal Progress'),
                  SizedBox(height: 8),
                  Text('72%'),
                  SizedBox(height: 4),
                  Text('\$7,200 / \$10,000'),
                ],
              ),
            ),
            SizedBox(
              width: 96,
              height: 96,
              child: CircularProgressIndicator(value: 0.72),
            ),
          ],
        ),
      ),
    );
  }
}
