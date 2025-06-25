import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/cardapio.dart';
import 'package:panucci_ristorante/core/widgets/highlight_item.dart';

class HighlitghtsScreen extends StatelessWidget {
  final List items = destaques;
  const HighlitghtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Destaques',
                style: TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return HighlightItem(
                imageURI: items[index]['image'] ?? '',
                itemTitle: items[index]['name'] ?? '',
                itemPrice: items[index]['price'] ?? '',
                itemDescription: items[index]['description'] ?? '',
              );
            }, childCount: items.length),
          ),
        ],
      ),
    );
  }
}
