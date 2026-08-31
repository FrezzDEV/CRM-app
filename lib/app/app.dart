import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../features/navigation/presentation/main_shell.dart';

class CrmApp extends StatelessWidget {
  const CrmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRM',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const MainShell(),
    );
  }
}
