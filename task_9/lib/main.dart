import 'package:flutter/material.dart';

import 'whatsapp_project/dart_whatsapp_screen.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

@override
Widget build(BuildContext context) {
	return MaterialApp(
		title: "ListView.builder",
		theme: ThemeData(primarySwatch: Colors.green),
		debugShowCheckedModeBanner: false,
		
		home: WhatsappScreen());
}
}

