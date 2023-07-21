import 'package:flutter/material.dart';
import 'package:task8/login_screen/loginPage.dart';

void main() => runApp( BusinessCardScreen());

class BusinessCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
		home: LoginPage()
    );
    
}
}