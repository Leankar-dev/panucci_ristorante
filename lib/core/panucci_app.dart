import 'package:flutter/material.dart';
import 'package:panucci_ristorante/screens/home_screen.dart';

class PanucciApp extends StatelessWidget {
  const PanucciApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panucci Ristorante',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}
