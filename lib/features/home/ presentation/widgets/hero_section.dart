

import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryColor.withOpacity(0.1),
            Colors.white,
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            AppStrings.heroTitle1,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: AppTheme.primaryColor,
            ),
          ),
          const Text(
            AppStrings.heroTitle2,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
          const Text(
            AppStrings.heroTitle3,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: AppTheme.primaryColor,
            ),
          ),
          const Text(
            AppStrings.heroTitle4,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              AppStrings.heroDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Text(
              AppStrings.freeShipping,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Icon(
            Icons.local_florist,
            size: 120,
            color: AppTheme.primaryColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}