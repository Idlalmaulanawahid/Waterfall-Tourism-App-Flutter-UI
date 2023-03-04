import 'package:waterfall_tourism_ui/config/router.dart';
import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: kPrimaryTheme),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: GetStartedPage.routName,
    );
  }
}
