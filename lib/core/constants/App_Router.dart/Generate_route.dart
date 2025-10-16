import 'package:flutter/material.dart';
import 'package:it_legend_task/core/constants/App_Router.dart/routes.dart';
import 'package:it_legend_task/features/view/fliteration_page.dart';

class GenerateRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.FliterationPageroutName:
        return MaterialPageRoute(
          builder: (_) => const FliterationPage(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
