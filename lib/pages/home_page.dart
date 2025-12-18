import 'package:delivery_app_with_backend/components/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'HOME PAGE',
          style: GoogleFonts.abel(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
