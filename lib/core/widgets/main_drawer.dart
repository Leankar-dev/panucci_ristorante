import 'package:flutter/material.dart';
import 'package:panucci_ristorante/screens/home_screen.dart';

import '../themes/app_colors.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Mesa 99",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.drawerFontColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ListTile(
            textColor: AppColors.drawerFontColor,
            title: const Text(
              "Conta",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          ListTile(
            iconColor: AppColors.drawerIconColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return const HomeScreen();
                  }),
                ),
              );
            },
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.receipt_long),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Pedido Atual",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Text("100+", style: TextStyle(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          ListTile(
            iconColor: AppColors.drawerIconColor,
            textColor: AppColors.drawerFontColor,
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Icon(Icons.fact_check_outlined),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Todos os pedidos",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
