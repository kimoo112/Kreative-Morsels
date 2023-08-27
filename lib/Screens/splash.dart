import 'package:flutter/material.dart';
import 'dart:async';

import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  final double duration;
  final Widget nextScreen;

  const SplashScreen({
    Key? key,
    required this.duration,
    required this.nextScreen,
    required double seconds,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.duration.toInt()), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => widget.nextScreen),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset("assets/animation_lkeog1tq.json"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Kreative Morsels',
              style: TextStyle(
                  color: Color(0xFFF3651F),
                  fontFamily: "Poppins",
                  letterSpacing: 1,
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
