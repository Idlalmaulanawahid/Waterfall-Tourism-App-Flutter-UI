import 'package:waterfall_tourism_ui/models/models.dart';
import 'package:waterfall_tourism_ui/screens/explore_destination_page.dart';
import 'package:waterfall_tourism_ui/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return GetStartedPage.route();
      case MainPage.routName:
        return MainPage.route();
      case HomePage.routName:
        return HomePage.route();
      case DestinationDetailPage.routName:
        return DestinationDetailPage.route(
          data: settings.arguments as DataDestination,
        );
      case ExploreDestinationPage.routName:
        return ExploreDestinationPage.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
      ),
    );
  }
}
