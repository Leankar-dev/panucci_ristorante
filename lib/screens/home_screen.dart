import 'package:flutter/material.dart';
import 'package:panucci_ristorante/core/themes/app_colors.dart';
import 'package:panucci_ristorante/core/widgets/main_drawer.dart';
import 'package:panucci_ristorante/screens/drink_menu_screen.dart';
import 'package:panucci_ristorante/screens/food_menu_screen.dart';
import 'package:panucci_ristorante/screens/highlitghts_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      const HighlitghtsScreen(),
      const FoodMenuScreen(),
      const DrinkMenuScreen(),
    ];
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.point_of_sale),
      ),
      drawer: const MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star_rounded),
            label: 'Destaques',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar),
            label: 'Bebidas',
          ),
        ],
        selectedItemColor: AppColors.bottomNavigationBarIconColor,
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      body: IndexedStack(index: _currentPage, children: pages),
      // body: pages.elementAt(_currentPage),
    );
  }
}
