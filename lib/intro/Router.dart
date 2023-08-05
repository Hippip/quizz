import 'package:flutter/material.dart';
import 'package:quizz/feature/onboarding/onboarding_screen.dart';
import 'package:quizz/feature/splash/splash.dart';
import 'package:quizz/intro/home.dart';

class router {
  static Route<dynamic>? customRouteGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        {
          return MaterialPageRoute(builder: (_) => const Splash());
        }
      case "/onBoarding":
        {
          return MaterialPageRoute(builder: (_) => const Onboarding());
        }
      case "/home":
        {
          return MaterialPageRoute(builder: (_) => const Home());
        }
    }
    return null;
  }
}
