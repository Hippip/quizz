import 'package:flutter/material.dart';
import 'package:quizz/intro/modul_intro.dart';
import 'package:quizz/intro/modul_intro2.dart';
import 'package:quizz/intro/modul_intro3.dart';
import 'package:quizz/intro/modul_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Rubik"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const [
          Splash(),
          Intro(),
          Intro2(),
          Intro3(),
        ],
      ),
    );
  }
}


// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       fontFamily: "Rubik",
//     ),
//     home: 
//     // initialRoute: "/",
//     // onGenerateRoute: (settings) {
//     //   switch (settings.name) {
//     //     case "/":
//     //       return MaterialPageRoute(
//     //           settings: settings, builder: ((context) => const Intro()));
//     //     case "/Intro2":
//     //       return MaterialPageRoute(
//     //           settings:
//     //               RouteSettings(name: "/Intro2", arguments: settings.arguments),
//     //           builder: ((context) => const Intro2()));
//     //     case "/Intro3":
//     //       return MaterialPageRoute(
//     //           settings:
//     //               RouteSettings(name: "/Intro3", arguments: settings.arguments),
//     //           builder: ((context) => const Intro3()));
//     //   }
//     //   return null;
//     // },
//   ));
// }

