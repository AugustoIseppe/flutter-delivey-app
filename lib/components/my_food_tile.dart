import 'package:delivery_app_with_backend/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({
    super.key,
    required this.food,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: GoogleFonts.abel(
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        '\$${food.price.toString()}',
                        style: GoogleFonts.abel(
                          letterSpacing: 2,
                          color:
                              Theme.of(
                                context,
                              ).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        food.description,
                        style: GoogleFonts.abel(
                          letterSpacing: 2,
                          color:
                              Theme.of(
                                context,
                              ).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          thickness: 1,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
    // return ListTile(
    //   leading: Image.asset(food.imagePath),
    //   title: Text(
    //     food.name,
    //     style: GoogleFonts.abel(
    //       fontSize: 18,
    //       letterSpacing: 2,
    //     ),
    //   ),
    //   subtitle: Text(
    //     food.description,
    //     style: GoogleFonts.abel(
    //       fontSize: 14,
    //       letterSpacing: 1,
    //     ),
    //   ),
    //   trailing: Text(
    //     '\$${food.price}',
    //     style: GoogleFonts.abel(
    //       fontSize: 16,
    //       letterSpacing: 2,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );
  }
}
