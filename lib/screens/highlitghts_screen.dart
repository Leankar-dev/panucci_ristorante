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
                style: TextStyle(fontFamily: 'Caveat', fontSize: 32.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          MediaQuery.of(context).orientation == Orientation.portrait
              ? const PortraitList()
              : const LandScapeList(),
        ],
      ),
    );
  }
}

class PortraitList extends StatelessWidget {
  final List items = destaques;
  const PortraitList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return HighlightItem(
          imageURI: items[index]['image'] ?? '',
          itemTitle: items[index]['name'] ?? '',
          itemPrice: items[index]['price'] ?? '',
          itemDescription: items[index]['description'] ?? '',
        );
      }, childCount: items.length),
    );
  }
}

class LandScapeList extends StatelessWidget {
  final List items = destaques;
  const LandScapeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return HighlightItem(
          imageURI: items[index]['image'],
          itemTitle: items[index]['name'] ?? '',
          itemPrice: items[index]['price'] ?? '',
          itemDescription: items[index]['description'] ?? '',
        );
      }),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
