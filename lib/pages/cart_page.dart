import 'package:delivery_app_with_backend/components/my_button.dart';
import 'package:delivery_app_with_backend/components/my_cart_tile.dart';
import 'package:delivery_app_with_backend/models/restaurant.dart';
import 'package:delivery_app_with_backend/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            foregroundColor:
                Theme.of(context).colorScheme.primary,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              'MEU CARRINHO',
              style: GoogleFonts.abel(
                color:
                    Theme.of(context).colorScheme.primary,
                letterSpacing: 2,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  // restaurant.clearCart();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Limpar carrinho?',
                          style: GoogleFonts.abel(),
                        ),
                        content: Text(
                          'Tem certeza que deseja limpar o carrinho?',
                          style: GoogleFonts.abel(),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancelar',
                              style: GoogleFonts.abel(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.primary,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              restaurant.clearCart();
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Limpar',
                              style: GoogleFonts.abel(
                                color:
                                    Theme.of(
                                      context,
                                    ).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.delete_forever,
                  color:
                      Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons
                                      .remove_shopping_cart,
                                  size: 30,
                                  color:
                                      Theme.of(
                                        context,
                                      ).colorScheme.shadow,
                                ),
                                Text(
                                  'Carrinho vazio...',
                                  style: GoogleFonts.abel(
                                    fontSize: 15,
                                    color:
                                        Theme.of(context)
                                            .colorScheme
                                            .shadow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem =
                                  userCart[index];
                              return MyCartTile(
                                cartItem: cartItem,
                              );
                            },
                          ),
                        ),
                  ],
                ),
              ),

              //button to pay
              userCart.isEmpty
                  ? SizedBox.shrink()
                  : MyButton(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => PaymentPage(),
                          ),
                        ),
                    text: 'FINALIZAR PEDIDO',
                  ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
