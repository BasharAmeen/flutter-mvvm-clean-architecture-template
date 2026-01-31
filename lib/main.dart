import 'core/app/module_manager.dart';
import 'modules/splash/splash_module.dart';
import 'package:flutter/material.dart';

import 'core/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize services
  // e.g. await EasyLocalization.ensureInitialized();

  //
  // Initialize Modules
  final moduleManager = ModuleManager();
  moduleManager.registerModules([
    SplashModule(),
  ]);
  await moduleManager.initModules();

  runApp(MyApp());
}
