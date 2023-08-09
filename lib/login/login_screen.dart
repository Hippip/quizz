import 'package:flutter/material.dart';
import 'package:quizz/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 52),
            Image.asset(Assets.assets_images_Cool_Kids_Sitting_png),
            const SizedBox(height: 16),
            const Text(
              "Log in",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3C3A36)),
            ),
            const SizedBox(height: 8),
            const Text(
              "Login with social networks",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff78746D)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff65AAEA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(Assets.assets_images_fb_png)),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff65AAEA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(Assets.assets_images_ig_png)),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xff65AAEA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(Assets.assets_images_gg_png)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              hintText: "Email",
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff78746D)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xff78746D))),
            )),
            const SizedBox(height: 16),
            TextFormField(
                decoration: InputDecoration(
              hintText: "Password",
              hintStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff78746D)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xff78746D))),
            )),
          ],
        ),
      ),
    );
  }
}
