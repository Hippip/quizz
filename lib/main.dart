import 'package:flutter/material.dart';
import 'package:quizz/intro/Router.dart';
import 'package:quizz/toDoList/add_screen.dart';
import 'package:quizz/toDoList/toDoList_content.dart';
import 'package:quizz/toDoList/toDoLsit_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Rubik"),
    home: const AddScreen(),
    // onGenerateRoute: Routers.customRouteGenerator,
    // initialRoute: AddScreen.routeName
  ));
}
