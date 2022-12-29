import 'package:business_card_web/business_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF5C4D3E),
        primarySwatch: Colors.blue,
      ),
      home: const BusinessCard(),
    );
  }
}
