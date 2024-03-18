import 'package:bhagavad_geeta/view/screens/bhagvadgitascreen.dart';
import 'package:bhagavad_geeta/view/screens/gita_aarati_screen.dart';
import 'package:bhagavad_geeta/view/screens/gita_mahatmay_screen.dart';
import 'package:bhagavad_geeta/view/screens/gitasaar_screen.dart';
import 'package:bhagavad_geeta/view/screens/secondscreen.dart';
import 'package:bhagavad_geeta/view/screens/shlokscreen.dart';
import 'package:bhagavad_geeta/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GeetaApp());
}

class GeetaApp extends StatelessWidget {
  const GeetaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
         '/splash' : (context) =>  const SplashScreen(),
         '/second' : (context) => const SecondScreen(),
         '/third' : (context) => const BhagavadGeeta(),
         '/shlok' : (context) => const ShlokScreen(),
         '/saar' : (context) => const GitasaarScreen(),
         '/mahatmay' : (context) => const GitaMahatmayScreen(),
         '/aarati' : (context) => const AaratiScreen(),
      },
    );
  }
}
