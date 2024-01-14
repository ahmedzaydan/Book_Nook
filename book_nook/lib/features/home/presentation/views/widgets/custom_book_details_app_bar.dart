import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewAppBar extends StatelessWidget {
  const BookDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // close
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),

        // cart
        IconButton(
          onPressed: () {
            // TODO: implement cart
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}
