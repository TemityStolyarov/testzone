import 'package:flutter/material.dart';
import 'package:testzone/core/utils/routes/name_routes.dart';
import 'package:testzone/features/auth/screens/login_screen.dart';
import 'package:testzone/features/home/home_page.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case NameRoutes.home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case NameRoutes.signIn:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

      default:
        debugPrint('AppRouter: Page ${routeSettings.name} not found');
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
    }
  }
}
