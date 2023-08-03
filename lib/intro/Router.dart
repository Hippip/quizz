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
      case "/onBoarding1":
        {
          return MaterialPageRoute(builder: (_) => const Intro());
        }
      case "/onBoarding2":
        {
          return MaterialPageRoute(builder: (_) => const Intro2());
        }
      case "/onBoarding3":
        {
          return MaterialPageRoute(builder: (_) => const Intro3());
        }
      case "/home":
        {
          return MaterialPageRoute(builder: (_) => const Home());
        }
    }
    return null;
  }
}
