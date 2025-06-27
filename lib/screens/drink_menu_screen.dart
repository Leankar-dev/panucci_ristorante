import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/cardapio.dart';
import 'package:panucci_ristorante/core/widgets/drink_item.dart';

class DrinkMenuScreen extends StatelessWidget {
  final List items = drinks;
  const DrinkMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Bebidas',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return DrinkItem(
                imageURI: items[index]['image'] ?? '',
                itemTitle: items[index]['name'] ?? '',
                itemPrice: items[index]['price'] ?? '',
              );
            }, childCount: items.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.landscape
                  ? 3
                  : 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio:
                  MediaQuery.of(context).orientation == Orientation.landscape
                  ? 1.3
                  : 0.81,
            ),
          ),
        ],
      ),
    );
  }
}
