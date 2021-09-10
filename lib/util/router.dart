import 'package:flutter/material.dart';
import 'package:scholarship_africa/pages/index.dart';
import 'package:scholarship_africa/pages/login.dart';
import 'package:scholarship_africa/util/routes.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case homeRoute:
            return const IndexPage();
          case loginRoute:
            return const LoginView();
          default:
            return Scaffold(
              body:
                  Center(child: Text('No route defined for ${settings.name}')),
            );
        }
      },
    );
  }
}
