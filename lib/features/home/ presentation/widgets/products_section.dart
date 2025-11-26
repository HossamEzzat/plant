

import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../domain/entities/product.dart';
import 'product_card.dart';

class ProductsSection extends StatelessWidget {
  final List<Product> products;
  final Function(Product) onAddToCart;

  const ProductsSection({
    Key? key,
    required this.products,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: AppTheme.greyBackground,
      child: Column(
        children: [
          const Text(
            AppStrings.productsTitle,
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
          ...products
              .map((product) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ProductCard(
              product: product,
              onAddToCart: () => onAddToCart(product),
            ),
          ))
              .toList(),
        ],
      ),
    );
  }
}