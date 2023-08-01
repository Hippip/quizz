import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 243),
          Image.asset("assets/images/i0.png"),
          const SizedBox(height: 16),
          const Text(
            "CodeFactory",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xff3C3A36)),
          )
        ],
      ),
    );
  }
}
