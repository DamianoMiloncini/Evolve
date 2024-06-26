import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'logIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Set SplashScreen as the initial screen
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 4000, // Duration in milliseconds
      splash: Column(
        children: [
          Center(
            child: Column(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                   Colors.white, // Change to the desired color
                   BlendMode.srcIn,
                  ),
                  child:
                  Lottie.network(
                    "https://lottie.host/9bf9d12f-3772-4e39-9ef0-5fc89161a2e3/GqDZuR94Nu.json",
                    width: 300,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_gymnastics,
                      color: Colors.white,
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Evolve',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          fontSize: 36,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      nextScreen: const HomePageWidget(),
      splashIconSize: 450,
      backgroundColor: Colors.white10,
      splashTransition: SplashTransition.fadeTransition, // Use fade transition
    );
  }
}