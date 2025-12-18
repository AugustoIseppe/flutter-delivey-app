import 'package:delivery_app_with_backend/components/my_current_location.dart';
import 'package:delivery_app_with_backend/components/my_description_box.dart';
import 'package:delivery_app_with_backend/components/my_drawer.dart';
import 'package:delivery_app_with_backend/components/my_sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String mystring = 'Welcome to the Home Page!';
    String textCaptialized = mystring.toUpperCase();
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: Text('Home Page'),
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
        body: Container(
          color: Colors.blue[200],
          child: Center(
            child: Text(
              textCaptialized,
              style: GoogleFonts.abel(letterSpacing: 2),
            ),
          ),
        ),
      ),
    );
  }
}
