import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void navigateToBusinessCardScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BusinessCardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UpAcademy'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String email = emailController.text;
              String password = passwordController.text;

              if (email == 'flutter@gmail.com' && password == 'upacademy') {
                navigateToBusinessCardScreen(context);
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Invalid Credentials'),
                      content: Text('Please enter valid email and password.'),
                      actions: [
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xffccae6b),
      appBar: AppBar(
        backgroundColor: Color(0xffccae6b),
        
        title: Text('Business Card'),
        
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('image/menna.jpeg'),
          ),
          Text(
            'Menna Ahmed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Software Engineer',
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          Container(
           margin: EdgeInsets.all(20),
           padding: EdgeInsets.all(10),
            color: Colors.white,
            
            child: Row(
              children: [
                 SizedBox(width: 20),
                Icon(
                  Icons.phone,
                  size: 40,
                  color: Color(0xFF2B475E),
                ),
                SizedBox(width: 20),
                
                Text(
                  '01100812422',
                  style: TextStyle(fontSize: 24),
                ),
                
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
           margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                 SizedBox(width: 20),
                Icon( 
                  Icons.email,
                  size: 40,
                  color: Color(0xFF2B475E),
                ),
                SizedBox(width: 20),
                Text(
                  'menna.a.afarag@gmail.com',
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
