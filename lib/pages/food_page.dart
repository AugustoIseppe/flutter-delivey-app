import 'dart:developer';

import 'package:delivery_app_with_backend/components/my_button.dart';
import 'package:delivery_app_with_backend/helpers/to_uppercase.dart';
import 'package:delivery_app_with_backend/models/addon.dart';
import 'package:delivery_app_with_backend/models/food.dart';
import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final ToUppercase toUppercase = ToUppercase();

  void addToCart(
    Food food,
    Map<Addon, bool> selectedAddons,
  ) {
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(
      food,
      currentlySelectedAddons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //ui scaffold
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.food.imagePath),
                Text(
                  widget.food.name,
                  style: GoogleFonts.abel(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.shadow,
                  ),
                ),
                Text(
                  '\$${widget.food.price.toString()}',
                  style: GoogleFonts.abel(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color:
                        Theme.of(
                          context,
                        ).colorScheme.shadow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.food.description,
                    style: GoogleFonts.abel(
                      fontSize: 16,
                      letterSpacing: 1.5,
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.shadow,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Divider(
                  thickness: 1,
                  endIndent: 12,
                  indent: 12,
                  color:
                      Theme.of(
                        context,
                      ).colorScheme.secondary,
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Adicionais Disponíveis',
                      style: GoogleFonts.abel(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        color:
                            Theme.of(
                              context,
                            ).colorScheme.shadow,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            Theme.of(
                              context,
                            ).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(),
                      itemCount:
                          widget
                              .food
                              .availableAddons
                              .length,
                      itemBuilder: (context, index) {
                        Addon addon =
                            widget
                                .food
                                .availableAddons[index];
                        return CheckboxListTile(
                          title: Text(
                            addon.name,
                            style: GoogleFonts.abel(
                              fontSize: 16,
                              letterSpacing: 1.2,
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.shadow,
                            ),
                          ),
                          subtitle: Text(
                            '\$${addon.price.toString()}',
                            style: GoogleFonts.abel(
                              fontSize: 14,
                              letterSpacing: 1.0,
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.shadow,
                            ),
                          ),
                          value:
                              widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] =
                                  value ?? false;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
                MyButton(
                  onTap: () {
                    addToCart(
                      widget.food,
                      widget.selectedAddons,
                    );
                    log('Item adicionado ao carrinho');
                  },
                  text: toUppercase.myToUppercase(
                    'Adicionar ao Carrinho',
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        //back button
        SafeArea(
          child: Opacity(
            opacity: .6,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    Theme.of(context).colorScheme.secondary,
              ),
              margin: const EdgeInsets.only(left: 25),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
