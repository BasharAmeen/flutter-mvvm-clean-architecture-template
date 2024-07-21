import 'package:flutter/material.dart';

import '../../presentation/pages/splash/splash_view.dart';

class RoutesManager {
  static const String splashView = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashView:
        return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return onUnknownRoute(settings);
    }
  }

  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
