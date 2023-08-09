import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = "/home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ToDoList",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          backgroundColor: const Color(0xffE3562A),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [],
          ),
        ));
  }
}
