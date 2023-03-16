import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawer/features/presentation/screens/auth.dart';
import 'package:lawer/features/presentation/screens/login.dart';

import '../../../core/animation/spalsh_animation.dart';
import 'home.dart';

class Splash extends StatefulWidget {
static const  String screenRoute = 'WelcomScreen';


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Duration duration = Duration(seconds: 2);
    Timer(
        duration,
        () => Navigator.of(context).pushAndRemoveUntil(
              SplashAnimation(page: Auth()),
              (route) => false,
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 70,
                backgroundColor: Color(0xffF0CC41),
                child: Image.asset(
                  'assets/ask.png',
                  height: 80,
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lawyer D App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
