import 'package:delivery_app_with_backend/themes/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SETTINGS',
          style: GoogleFonts.abel(letterSpacing: 2),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DARK MODE',
                  style: GoogleFonts.abel(
                    letterSpacing: 2,
                    fontSize: 18,
                  ),
                ),
                CupertinoSwitch(
                  value:
                      Provider.of<ThemeProvider>(
                        context,
                        listen: true,
                      ).isDarkMode,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(
                      context,
                      listen: false,
                    ).toogleTheme();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
