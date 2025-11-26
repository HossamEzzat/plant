
import 'package:flower/domain/entities/about_item.dart';

import '../../domain/entities/product.dart';
import '../../domain/entities/review.dart';
import '../../domain/entities/service.dart';

class PlantRepositoryImpl {
  List<Service> getServices() {
    return [
      Service(
        title: 'Fast\nDelivery',
        description:
        'We deliver your plants quickly and safely to your doorstep, ensuring freshness and quality.',
        iconType: 'shipping',
      ),
      Service(
        title: 'Great Customer\nService',
        description:
        'Our team is ready to assist you with plant selection, care tips, and any questions you have.',
        iconType: 'support',
      ),
      Service(
        title: 'Original\nPlants',
        description:
        'We provide high-quality, disease-free plants that thrive in your home and garden.',
        iconType: 'eco',
      ),
      Service(
        title: 'Affordable\nPrice',
        description:
        'Enjoy premium plants at prices that fit your budget, with great deals and promotions.',
        iconType: 'money',
      ),
    ];
  }

  List<AboutItem> getAboutItems() {
    return [
      AboutItem(
        title: 'Make your organic\ngarden',
        description:
        'Learn how to grow your own organic garden with our guidance, planting tips, and expert advice.',
        iconType: 'yard',
      ),
      AboutItem(
        title: 'Come with us\ngrow up\nyour plant',
        description:
        'Join our community and explore a wide variety of plants that suit your lifestyle and home.',
        iconType: 'nature',
      ),
    ];
  }

  List<Product> getProducts() {
    return [
      Product(
        id: '1',
        scientificName: 'Nephrolepis exaltata',
        commonName: 'Boston Fern',
        price: 5.0,
        imageUrl: '',
      ),
      Product(
        id: '2',
        scientificName: 'Ficus elastica',
        commonName: 'Rubber Plant',
        price: 15.0,
        imageUrl: '',
      ),
      Product(
        id: '3',
        scientificName: 'Spathiphyllum wallisii',
        commonName: 'Peace Lily',
        price: 15.0,
        imageUrl: '',
      ),
      Product(
        id: '4',
        scientificName: 'Adenium obesum',
        commonName: 'Desert Rose',
        price: 9.0,
        imageUrl: '',
      ),
    ];
  }

  List<Review> getReviews() {
    return [
      Review(
        id: '1',
        customerName: 'Happy Customer',
        comment: 'Great plants and excellent service! My home has never looked better.',
        rating: 5.0,
        avatarUrl: '',
      ),
    ];
  }
}