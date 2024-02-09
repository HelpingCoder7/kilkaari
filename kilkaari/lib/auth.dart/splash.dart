import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:kilkaari/auth.dart/login.dart';
// import 'package:kilkaari/pregnantsection/dashboard.dart';
import 'package:kilkaari/select/stage.dart';

class Splashscr extends StatefulWidget {
  const Splashscr({super.key});

  @override
  State<Splashscr> createState() => _SplashscrState();
}

class _SplashscrState extends State<Splashscr> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Stagescr()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/splash.png',
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Kilkaari',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Care for Mother and Child',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
