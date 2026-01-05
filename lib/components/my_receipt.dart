import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        bottom: 25.0,
        right: 25,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OBRIGADO POR SUA COMPRA!',
              style: GoogleFonts.abel(
                fontSize: 14,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 10),
            Consumer<Restaurant>(
              builder: (context, restaurant, child) {
                final receipt =
                    restaurant.generateReceipt();
                return Text(
                  receipt,
                  style: GoogleFonts.abel(
                    fontSize: 14,
                    letterSpacing: 2,
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Tempo estimado de entrega: 30-45 minutos',
              style: GoogleFonts.abel(
                fontSize: 14,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
