import 'package:flutter/material.dart';
import 'package:mini_project/bottombar/bottombar.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2A4BA0),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 33, left: 25),
              width: 294,
              height: 269,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                        text: 'Your holiday shopping delivered to Screen one ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                        )),
                    WidgetSpan(
                      child: Image.asset(
                        'assets/images/Vector.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    const TextSpan(
                      text:
                          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
                      style: TextStyle(fontSize: 18, color: Color(0xFFB2BBCE)),
                    ),
                  ],
                ),
              ),
            ),
            const Column(
              children: [
                Center(
                  child: Icon(
                    Icons.shopping_cart_checkout_sharp,
                    size: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bottombar(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                "Get started -> ",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
