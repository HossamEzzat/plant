import 'package:flower/features/home/%20presentation/widgets/service_card.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../domain/entities/service.dart';

class ServicesSection extends StatelessWidget {
  final List<Service> services;

  const ServicesSection({
    Key? key,
    required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppTheme.greyBackground,
      child: Column(
        children: services
            .map((service) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: ServiceCard(service: service),
        ))
            .toList(),
      ),
    );
  }
}