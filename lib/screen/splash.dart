import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mini_project/screen/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 8)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(
        builder: (ctx) => WelcomeScreen(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/images/cart.jpg"),
              width: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Grocery App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            SpinKitThreeBounce(
              size: 50,
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
