import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [Intro(), Intro2(), Intro3()],
      ),
    );
  }
}

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
                  "Learn anytime and anywhere",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C3A36)),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                  textAlign: TextAlign.center,
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
                        Navigator.of(context).pushNamed("/onBoarding2");
                        // setState(() {
                        //   widget.press.call();
                        // });
                      }),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
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
          const SizedBox(height: 126),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/images/i2.png"),
                const SizedBox(height: 16),
                const Text(
                  "Find a course\n"
                  "       for you",
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
                Image.asset("assets/images/p2.png"),
                const SizedBox(height: 72),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE3562A),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      onPressed: (() {
                        Navigator.of(context).pushNamed("/onBoarding3");
                      }),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 122, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/images/i3.png"),
            const SizedBox(height: 16),
            const Text(
              "\n"
              "Improve your skills",
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
            Image.asset("assets/images/p2.png"),
            const SizedBox(height: 77),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE3562A),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  onPressed: (() {
                    Navigator.of(context).pushNamed("/home");
                  }),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Let's Start",
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
    );
  }
}
