import 'package:delivery_app_with_backend/components/my_receipt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveyProgressPage extends StatelessWidget {
  const DeliveyProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Entrega em andamento...',
          style: GoogleFonts.abel(
            color: Theme.of(context).colorScheme.primary,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [MyReceipt()],
      ),
      bottomNavigationBar: _buildBottomNavbar(context),
    );
  }

  _buildBottomNavbar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.tertiary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Augusto Iseppe',
                    style: GoogleFonts.abel(
                      fontSize: 14,
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
                    'Entregador',
                    style: GoogleFonts.abel(
                      fontSize: 12,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //driver details

          //message button
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.tertiary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    color: Colors.grey,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.tertiary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.green,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          //call button
        ],
      ),
    );
  }
}
