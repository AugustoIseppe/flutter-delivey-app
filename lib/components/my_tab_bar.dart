import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: TabBar(
        controller: tabController,
        tabs: const [
          Tab(text: 'Home'),
          Tab(text: 'Profile'),
          Tab(text: 'Settings'),
        ],
        labelColor: Theme.of(context).colorScheme.primary,
        unselectedLabelColor: Colors.grey,
        indicatorColor:
            Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
