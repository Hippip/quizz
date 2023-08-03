import 'package:flutter/material.dart';
import 'package:quizz/intro/Router.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Rubik"),
    onGenerateRoute: router.customRouteGenerator,
    initialRoute: "/",
  ));
}
