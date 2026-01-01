import 'package:delivery_app_with_backend/components/my_current_location.dart';
import 'package:delivery_app_with_backend/components/my_description_box.dart';
import 'package:delivery_app_with_backend/components/my_drawer.dart';
import 'package:delivery_app_with_backend/components/my_sliver_app_bar.dart';
import 'package:delivery_app_with_backend/components/my_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'First Tab Bar Items - Item ${index + 1}',
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Second Tab Bar Items - Item ${index + 1}',
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Third Tab Bar Items - Item ${index + 1}',
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
