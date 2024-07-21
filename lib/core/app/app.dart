import 'package:flutter/material.dart';
import 'package:flutter_template_mvvm/core/resources/routes_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RoutesManager.splashView,
      onGenerateRoute: RoutesManager.onGenerateRoute,
    );
  }
}
