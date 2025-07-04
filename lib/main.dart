import 'package:flutter/material.dart';
import 'package:my_app/models/cart.dart';
import 'package:my_app/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) =>
          MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage()),
    );
  }
}
