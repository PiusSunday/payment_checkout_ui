import 'package:flutter/material.dart';

import 'screens/checkout_screen_ui.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkout Screen UI',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFFF5F7F6),
        ),
        primaryColorDark: const Color(0xFFF4F6F5),
        scaffoldBackgroundColor: const Color(0xFFF4F6F5),
      ),
      home: const CheckOutScreen(),
    );
  }
}
