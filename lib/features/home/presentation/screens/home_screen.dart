import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/goal_progress_card.dart';
import '../widgets/income_by_platform_section.dart';
import '../widgets/todays_tasks_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AppHeader()),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const GoalProgressCard(),
                const SizedBox(height: 24),
                const IncomeByPlatformSection(),
                const SizedBox(height: 24),
                const TodaysTasksSection(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
