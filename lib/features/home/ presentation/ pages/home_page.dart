

import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../data/repositories/ plant_repository_impl.dart';
import '../../../../domain/entities/about_item.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/entities/review.dart';
import '../../../../domain/entities/service.dart';
import '../widgets/about_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/hero_section.dart';
import '../widgets/products_section.dart';
import '../widgets/review_section.dart';
import '../widgets/services_section.dart';
import 'home_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PlantRepositoryImpl _repository = PlantRepositoryImpl();
  late List<Service> services;
  late List<AboutItem> aboutItems;
  late List<Product> products;
  late List<Review> reviews;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    services = _repository.getServices();
    aboutItems = _repository.getAboutItems();
    products = _repository.getProducts();
    reviews = _repository.getReviews();
  }

  void _onAddToCart(Product product) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.commonName} added to cart'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            ServicesSection(services: services),
            AboutSection(items: aboutItems),
            ProductsSection(
              products: products,
              onAddToCart: _onAddToCart,
            ),
            ReviewSection(reviews: reviews),
            const FooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Products'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contact'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}