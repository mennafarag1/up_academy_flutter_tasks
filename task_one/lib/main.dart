import 'package:flutter/material.dart';

void main() {
  runApp(const RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Up Academy',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('menna'),
            centerTitle: true,
          ),
          body: Center(
              child: Text(
            'Up Academy',
            style: TextStyle(fontSize: 35, color: Colors.black),
          )),
        ),
      ),
    );
  }
}