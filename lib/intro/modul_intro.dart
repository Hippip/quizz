import 'package:flutter/material.dart';
import 'package:quizz/intro/modul_intro2.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: (() {}),
              child: const Text("Skip",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff78746D))))
        ],
      ),
      //bottomNavigationBar: Image.asset("assets/images/homebar.png"),
      body: Column(
        children: [
          const SizedBox(height: 115),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/images/i1.png"),
                const SizedBox(height: 16),
                const Text(
                  "Learn anytime\n"
                  "and anywhere",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C3A36)),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Quarantine is the perfect time to spend your\n"
                  "day learning something new, from anywhere!",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff78746D)),
                ),
                const SizedBox(height: 16),
                Image.asset("assets/images/pa1.png"),
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        backgroundColor: const Color(0xffE3562A),
                      ),
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => const Intro2())));
                      }),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
