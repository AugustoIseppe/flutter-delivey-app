import 'package:delivery_app_with_backend/components/my_quantity_selector.dart';
import 'package:delivery_app_with_backend/models/cart_item.dart';
import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8.0),
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // food image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        8.0,
                      ),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    // name and price
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItem.food.name,
                          style: GoogleFonts.abel(
                            fontSize: 16,
                            letterSpacing: 2,
                          ),
                        ),
                        Text(
                          'R\$ ${(cartItem.food.price * cartItem.quantity).toStringAsFixed(2)}',
                          style: GoogleFonts.abel(
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),

                    // increment and decrement buttons
                    const Spacer(),
                    MyQuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onIncrement: () {
                        restaurant.addToCart(
                          cartItem.food,
                          cartItem.selectedAddons,
                        );
                      },
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                    ),
                  ],
                ),
              ),

              //addons list
              SizedBox(
                height:
                    cartItem.selectedAddons.isEmpty
                        ? 0
                        : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:
                      cartItem.selectedAddons
                          .map(
                            (addon) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                  ),
                              child: FilterChip(
                                backgroundColor:
                                    Colors.white,
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color:
                                        Theme.of(context)
                                            .colorScheme
                                            .surface,
                                  ),
                                ),
                                label: Row(
                                  children: [
                                    Text(
                                      addon.name,
                                      style: GoogleFonts.abel(
                                        letterSpacing: 1,
                                        fontSize: 12,
                                        color:
                                            Theme.of(
                                                  context,
                                                )
                                                .colorScheme
                                                .shadow,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '| +R\$ ${addon.price.toStringAsFixed(2)}',
                                      style: GoogleFonts.abel(
                                        fontSize: 12,
                                        color:
                                            Theme.of(
                                                  context,
                                                )
                                                .colorScheme
                                                .shadow,
                                      ),
                                    ),
                                  ],
                                ),
                                onSelected: (value) {},
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
