

import 'package:flower/features/home/%20presentation/widgets/about_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../domain/entities/about_item.dart';

class AboutSection extends StatelessWidget {
  final List<AboutItem> items;

  const AboutSection({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            AppStrings.aboutTitle,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppTheme.primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppStrings.followText,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 30),
          ...items
              .map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: AboutCard(item: item),
          ))
              .toList(),
        ],
      ),
    );
  }
}