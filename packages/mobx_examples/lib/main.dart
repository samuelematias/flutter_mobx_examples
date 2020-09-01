import 'package:common_package/common_package.dart';
import 'package:flutter/material.dart';
import 'package:form_package/form_package.dart';
import 'src/ui/home/pages/home_page.dart';

void main() {
  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<FormController>(FormController());
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
