import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/ presentation/ pages/home_page.dart';

void main() {
  runApp(const PlantShopApp());
}

class PlantShopApp extends StatelessWidget {
  const PlantShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shop',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}