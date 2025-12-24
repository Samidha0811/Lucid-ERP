import 'package:flutter/material.dart';
import 'package:finpeek/src/core/theme/app_theme.dart';
import 'package:finpeek/src/features/home/presentation/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LedgerOne',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const WelcomePage(),
    );
  }
}
