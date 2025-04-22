import 'package:flutter/material.dart';
import 'package:toktok/config/theme/app_theme.dart';
import 'package:toktok/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokTok',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: DiscoverScreen(),
    );
  }
}
