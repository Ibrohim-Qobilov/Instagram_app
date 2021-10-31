import 'dart:async';


import 'package:flutter/material.dart';
import 'package:instagram/components/colors.dart';
import 'package:instagram/widgets/bottom_nav_bar.dart';


class InstagramSplashScreen extends StatefulWidget {
  @override
  _InstagramSplashScreenState createState() => _InstagramSplashScreenState();
}

class _InstagramSplashScreenState extends State<InstagramSplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 700), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return const InstagramBottomNavBar();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  const [
            SizedBox(height: 100,width: 100,child: Image(image: AssetImage("assets/images/instagramlogo.png")),),
            Text(
              "Instagram",
              style: TextStyle(
                color: textColor,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Labster"
              ),
            ),
          ],
        ),
      )
    );
  }
}