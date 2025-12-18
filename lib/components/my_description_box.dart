import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$29.99',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.inversePrimary,
                ),
              ),
              Text(
                'ENTREGA GRÁTIS',
                style: TextStyle(
                  fontSize: 10,
                  letterSpacing: 2,
                  color:
                      Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          Column(
            children: [
              Text(
                '15-30 MIN',
                style: GoogleFonts.abel(
                  fontSize: 10,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.inversePrimary,
                ),
              ),
              Text(
                'TEMPO DE ENTREGA',
                style: GoogleFonts.abel(
                  fontSize: 10,
                  letterSpacing: 2,
                  color:
                      Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
