import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        bottom: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DELIVER NOW..',
            style: GoogleFonts.abel(
              fontSize: 12,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  '6901 COLLINS AVE MIAMI BEACH',
                  style: GoogleFonts.abel(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                Icon(CupertinoIcons.chevron_down),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              'SUA LOCALIZAÇÃO ',
              style: GoogleFonts.abel(
                color:
                    Theme.of(context).colorScheme.primary,
                letterSpacing: 2,
              ),
            ),
            content: Text(
              'Localização atual do usuário.',
              style: GoogleFonts.abel(
                letterSpacing: 2,
                color:
                    Theme.of(context).colorScheme.onSurface,
              ),
            ),
            actions: [
              //cancel button
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'FECHAR',
                  style: GoogleFonts.abel(
                    letterSpacing: 2,
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.primary,
                  ),
                ),
              ),

              //confirm button
              TextButton(
                onPressed: () {
                  //confirm action
                  Navigator.of(context).pop();
                },
                child: Text(
                  'CONFIRMAR',
                  style: GoogleFonts.abel(
                    letterSpacing: 2,
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
