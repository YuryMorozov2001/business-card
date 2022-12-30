import 'package:business_card_web/business_card_desktop.dart';
import 'package:business_card_web/business_card_phone.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF5C4D3E),
        primarySwatch: Colors.blue,
      ),
      home: const BusinessCardPhone(),
    );
  }
}

class LayoutAwareWidget extends StatelessWidget {
  const LayoutAwareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) => p1.maxWidth < 500
          ? const BusinessCardPhone()
          : const BusinessCardDesktop(),
    );
  }
}
