import 'package:e_commerce/core/config/page_route_names.dart';
import 'package:e_commerce/features/login/pages/login_view.dart';
import 'package:e_commerce/features/splash/pages/splash_view.dart';
import 'package:flutter/material.dart';

import '../../features/register/pages/register_view.dart';

class Routes {
  static Route<dynamic> OnGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteNames.initial:
        return MaterialPageRoute(
            builder: (context) =>  SplashView(), settings: settings);

      case PageRouteNames.login:
        return MaterialPageRoute(
            builder: (context) =>  LoginView(), settings: settings);

        case PageRouteNames.register:
          return MaterialPageRoute
            (builder: (context) => RegisterView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) =>  SplashView(), settings: settings);
    }
  }
}
