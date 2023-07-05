import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffccae6b),
          title: Text('busniess card'),
          centerTitle: true,

        ),
        backgroundColor: Color(0xffccae6b),
        body: Column(
          children: [
            CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/menna.jpeg'),
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
              height: 40,
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                    SizedBox(
                    width: 20,
                  ),
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
              height: 20,
            ),
             Container(
                
              color: Colors.white,
              child: Row(
                children: [
                   SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.mail,
                    size: 40,
                    color: Color(0xFF2B475E),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                   
                    'menna.a.farag@ gmail.com',
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