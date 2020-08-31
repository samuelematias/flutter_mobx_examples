import 'package:flutter/material.dart';
import 'src/ui/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const String _title = 'Mobx Examples';
    return MaterialApp(
      title: _title,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
