import 'package:flutter/material.dart';
import 'package:quizz/feature/onboarding/onboarding_screen.dart';
import 'package:quizz/feature/splash/splash.dart';
import 'package:quizz/intro/home.dart';

class Routers {
  static Route<dynamic>? customRouteGenerator(RouteSettings settings) {
    switch (settings.name) {
      case Splash.routeName:
        {
          return MaterialPageRoute(builder: (_) => const Splash());
        }
      case Onboarding.routeName:
        {
          return MaterialPageRoute(builder: (_) => const Onboarding());
        }
      case Home.routeName:
        {
          return MaterialPageRoute(builder: (_) => const Home());
        }
      // case ToDo.routeName:
      //   {
      //     return MaterialPageRoute(builder: (_) => const ToDo());
      //   }
      // case AddScreen.routeName:
      //   {
      //     return MaterialPageRoute(
      //         settings: RouteSettings(
      //             name: AddScreen.routeName, arguments: settings.arguments),
      //         builder: (_) => const AddScreen());
      //   }
    }
    return null;
  }
}
