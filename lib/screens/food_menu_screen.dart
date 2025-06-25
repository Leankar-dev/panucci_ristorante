import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/cardapio.dart';
import 'package:panucci_ristorante/core/widgets/food_item.dart';

class FoodMenuScreen extends StatelessWidget {
  final List items = comidas;
  const FoodMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Menu',
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return FoodItem(
                itemTitle: items[index]['name'] as String,
                itemPrice: '${items[index]['price']}',
                imageURI: items[index]['image'] as String,
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}
