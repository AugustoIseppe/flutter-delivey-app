import 'package:delivery_app_with_backend/components/my_current_location.dart';
import 'package:delivery_app_with_backend/components/my_description_box.dart';
import 'package:delivery_app_with_backend/components/my_drawer.dart';
import 'package:delivery_app_with_backend/components/my_food_tile.dart';
import 'package:delivery_app_with_backend/components/my_sliver_app_bar.dart';
import 'package:delivery_app_with_backend/components/my_tab_bar.dart';
import 'package:delivery_app_with_backend/models/food.dart';
import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:delivery_app_with_backend/pages/food_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  List<Food> _filterMenuByCategory(
    FoodCategory category,
    List<Food> fullMenu,
  ) {
    return fullMenu
        .where((food) => food.category == category)
        .toList();
  }

  List<Widget> _getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(
        category,
        fullMenu,
      );
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          Food food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => FoodPage(food: food),
                ),
              );
            },
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: MyTabBar(
                  tabController: _tabController,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.secondary,
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    MyCurrentLocation(),
                    Divider(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.secondary,
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    MyDescriptionBox(),
                    Divider(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.secondary,
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                  ],
                ),
              ),
            ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            return TabBarView(
              controller: _tabController,
              children: _getFoodInThisCategory(
                restaurant.menu,
              ),
            );
          },
        ),
      ),
    );
  }
}
