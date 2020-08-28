import 'package:flutter/material.dart';
import 'package:increment_counter_package/increment_counter_package.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const IncrementCounterPage(title: _title),
    );
  }
}
