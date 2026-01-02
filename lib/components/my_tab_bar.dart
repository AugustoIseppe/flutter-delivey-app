import 'package:delivery_app_with_backend/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCateogoriesTabs() {
    return FoodCategory.values.map((category) {
      return Tab(text: category.toString().split('.').last);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: TabBar(
        controller: tabController,
        tabs: _buildCateogoriesTabs(),
        labelColor: Theme.of(context).colorScheme.primary,
        unselectedLabelColor: Colors.grey,
        labelStyle: const TextStyle(letterSpacing: 2),
        indicatorColor:
            Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
