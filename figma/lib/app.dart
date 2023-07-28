import 'package:flutter/material.dart';
import 'package:upacademy/features/auth/Screens/On_boading_screen_1.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
         home: OnBoardingScreen1());
  }
}