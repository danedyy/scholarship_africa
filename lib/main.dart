import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scholarship_africa/util/router.dart';
import 'package:scholarship_africa/util/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scholarship Africa',
      theme: ThemeData(
          primarySwatch: MaterialColor(Colors.blue.shade900.value, {
            50: Colors.blue.shade900,
            100: Colors.blue.shade900,
            200: Colors.blue.shade900,
            300: Colors.blue.shade900,
            400: Colors.blue.shade900,
            500: Colors.blue.shade900,
            600: Colors.blue.shade900,
            700: Colors.blue.shade900,
            800: Colors.blue.shade900,
            900: Colors.blue.shade900,
          }),
          primaryColor: Colors.blue.shade900,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blue.shade900)),
      onGenerateRoute: PageRouter.generateRoute,
      initialRoute: loginRoute,
    );
  }
}
