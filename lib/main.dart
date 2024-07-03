import 'package:e_commerce/core/config/application_theme.dart';
import 'package:e_commerce/core/config/page_route_names.dart';
import 'package:flutter/material.dart';
import 'core/config/routes.dart';

GlobalKey<NavigatorState>navigatorKey=GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce",
      theme: ApplicationThemeManager.appTheme,
      themeMode: ThemeMode.light,
      navigatorKey: navigatorKey,
      initialRoute: PageRouteNames.initial,
      onGenerateRoute: Routes.OnGenerateRoutes,
    );
  }
}

