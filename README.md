# 🌱 Plant Shop - Flutter App

A beautiful and modern plant e-commerce application built with Flutter following Clean Architecture principles.

## 📱 Screenshots

[Add your app screenshots here]

## ✨ Features

- 🏠 **Beautiful Home Screen** with hero section
- 🚚 **Service Highlights** - Delivery, Customer Service, Quality, Pricing
- 📖 **About Section** - Information about organic gardening
- 🛍️ **Product Catalog** - Browse various plants with prices
- ⭐ **Customer Reviews** - View testimonials from satisfied customers
- 🎨 **Clean UI/UX** - Modern, responsive design with smooth animations
- 🛒 **Shopping Cart** functionality (ready for integration)
- 📱 **Responsive Design** - Works on all screen sizes

## 🏗️ Architecture

This project follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── main.dart                          # Application entry point
├── core/                              # Core utilities and configurations
│   ├── theme/
│   │   └── app_theme.dart            # Theme configuration
│   └── constants/
│       └── app_strings.dart          # Centralized strings
├── domain/                            # Business logic layer
│   └── entities/
│       ├── service.dart              # Service entity
│       ├── product.dart              # Product entity
│       ├── about_item.dart           # About item entity
│       └── review.dart               # Review entity
├── data/                              # Data layer
│   └── repositories/
│       └── plant_repository_impl.dart # Repository implementation
└── features/                          # Feature modules
    └── home/
        └── presentation/
            ├── pages/
            │   └── home_page.dart    # Home page
            └── widgets/              # Reusable widgets
                ├── hero_section.dart
                ├── service_card.dart
                ├── services_section.dart
                ├── about_card.dart
                ├── about_section.dart
                ├── product_card.dart
                ├── products_section.dart
                ├── review_card.dart
                ├── review_section.dart
                └── footer_section.dart
```

## 🎯 Clean Architecture Benefits

- ✅ **Maintainability** - Easy to understand and modify
- ✅ **Testability** - Each layer can be tested independently
- ✅ **Scalability** - Easy to add new features
- ✅ **Reusability** - Components can be reused across the app
- ✅ **Separation of Concerns** - Clear boundaries between layers
- ✅ **Independence** - UI is independent of business logic

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code
- Xcode (for iOS development)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/plant-shop-flutter.git
   cd plant-shop-flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

**Android:**
```bash
flutter build apk --release
# or for app bundle
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web --release
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
```

## 🎨 Design System

### Colors
- **Primary Color**: `#2D5F3F` (Forest Green)
- **Background**: White
- **Card Background**: White with shadow
- **Grey Background**: `Colors.grey[50]`

### Typography
- **Font Family**: Roboto
- **Heading Large**: 28-38px, Bold
- **Heading Medium**: 18-24px, Bold
- **Body**: 14px, Regular
- **Caption**: 12px, Regular

## 📱 Screens

### Home Screen
The main screen contains:
1. **Hero Section** - Eye-catching tagline with free shipping banner
2. **Services Section** - 4 service cards highlighting key benefits
3. **About Section** - Information about organic gardening
4. **Products Section** - List of available plants with prices
5. **Reviews Section** - Customer testimonials
6. **Footer Section** - Company info and social links

## 🔄 State Management

Currently using **StatefulWidget** for simple state management. Ready to integrate:
- Provider
- Riverpod
- Bloc/Cubit
- GetX

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run integration tests
flutter test integration_test
```

## 🛠️ Future Enhancements

- [ ] Add state management (Provider/Bloc)
- [ ] Implement real API integration
- [ ] Add authentication (Sign up/Login)
- [ ] Shopping cart functionality
- [ ] Payment integration
- [ ] Order history
- [ ] Product search and filters
- [ ] Wishlist feature
- [ ] Push notifications
- [ ] Dark mode support
- [ ] Multi-language support
- [ ] Unit and widget tests
- [ ] Integration tests

## 📝 Code Style

This project follows the official [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style) and uses `flutter_lints` for code analysis.

```bash
# Analyze code
flutter analyze

# Format code
flutter format .
```




---

Made with ❤️ and Flutter
