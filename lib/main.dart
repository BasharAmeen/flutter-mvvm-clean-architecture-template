import 'package:flutter/material.dart';

import 'core/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize services
  // e.g. await EasyLocalization.ensureInitialized();

  //
  runApp(MyApp());
}
