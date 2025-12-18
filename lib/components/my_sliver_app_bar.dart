import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor:
          Theme.of(context).colorScheme.surface,
      foregroundColor:
          Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        "SUNSET DELIVERY",
        style: GoogleFonts.abel(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          icon: Icon(
            CupertinoIcons.cart,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          onPressed: () {},
        ),
      ],
      expandedHeight: 340,
      collapsedHeight: 120,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(
          left: 0,
          right: 0,
          top: 0,
        ),
      ),
    );
  }
}
