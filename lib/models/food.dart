// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:delivery_app_with_backend/models/addon.dart';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final String price;
  final FoodCategory category;
  List<Addon> availableAddons;
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory { burguer, salad, drink, sides, desserts }
