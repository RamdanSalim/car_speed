import 'package:car_speed/features/home%20screen/home_screen.dart';
import 'package:car_speed/resources/screen_configuration.dart';
import 'package:car_speed/resources/string_constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Car speed',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: SizeConfig().getTextSize(24)),
            ))
          ],
        ),
      ),
    );
  }

  void navigator() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Navigator.pushReplacementNamed(context, StrConst.homeScreen);
    });
  }
}
