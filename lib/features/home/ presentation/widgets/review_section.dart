

import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../domain/entities/review.dart';
import 'review_card.dart';

class ReviewSection extends StatelessWidget {
  final List<Review> reviews;

  const ReviewSection({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            AppStrings.reviewTitle,
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
          const SizedBox(height: 24),
          ...reviews
              .map((review) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ReviewCard(review: review),
          ))
              .toList(),
        ],
      ),
    );
  }
}
