import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/cardapio.dart';
import 'package:panucci_ristorante/core/widgets/main_drawer.dart';
import 'package:panucci_ristorante/core/widgets/order_item.dart';
import 'package:panucci_ristorante/core/widgets/payment_method.dart';
import 'package:panucci_ristorante/core/widgets/payment_total.dart';

class OrderScreen extends StatelessWidget {
  final List items = pedido;

  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ristorante Panucci"),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.account_circle, size: 32),
          ),
        ],
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Pedido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return OrderItem(
                  imageURI: items[index]['image'] ?? '',
                  itemTitle: items[index]['name'] ?? '',
                  itemPrice: items[index]['price'] ?? '',
                );
              }, childCount: items.length),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Pagamento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: PaymentMethod()),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Confirmar Pedido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: PaymentTotal()),
          ],
        ),
      ),
    );
  }
}
