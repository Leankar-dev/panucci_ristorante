import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/cardapio.dart';
import 'package:panucci_ristorante/core/widgets/drink_item.dart';

class DrinkMenuScreen extends StatelessWidget {
  final List items = drinks;
  const DrinkMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        return DrinkItem(
          imageURI: items[index]['image'] ?? '',
          itemTitle: items[index]['name'] ?? '',
          itemPrice: items[index]['price'] ?? '',
        );
      },
      itemCount: items.length,
    );
  }
}
