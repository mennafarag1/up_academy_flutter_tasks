import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffccae6b),
        body: Column(
          children: [
            CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/menna-.jpeg'),
              ),
            ),
            Text(
              'Menna Ahmed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              'Software Engineer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 40,
                    color: Color(0xFF2B475E),
                  ),
                  Spacer(),
                  Text(
                    '01100812422',
                    style: TextStyle(fontSize: 24),
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 40,
                    color: Color(0xFF2B475E),
                  ),
                  Spacer(),
                  Text(
                    'menna.a.afarag@gmail.com',
                    style: TextStyle(fontSize: 24),
                  ),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
