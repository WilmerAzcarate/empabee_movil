import 'package:empabee_movil/config/theme/app_theme.dart';
import 'package:empabee_movil/presentation/screens/dashboard/dashboard_screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      home: const Scaffold(
        body:Center(
          child: DashboardScreen(),
        )
      ),
    );
  }
}
