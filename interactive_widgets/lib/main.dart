import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: const Text('UpAcademy'),
        backgroundColor: const Color.fromARGB(255, 91, 115, 156),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            TextField(
              
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            
            TextField(
              controller: passwordController,
              
              decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: 'Password',
                prefixIcon: const Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  
                  
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;
                
      
                if (email == 'flutter@gmail.com' && password == 'upacademy') {
                  navigateToBusinessCardScreen(context);
                } else {
                  (
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Invalid Credentials'),
                        content: const Text('Please enter valid email and password.'),
                        actions: [
                          TextButton(
                            child: const Text('OK'),
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
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 91, 115, 156)),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xffccae6b),
      appBar: AppBar(
        backgroundColor: const Color(0xffccae6b),
        
        title: const Text('Business Card'),
        
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage('image/menna.jpeg'),
          ),
          const Text(
            'Menna Ahmed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Software Engineer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Container(
           margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
           padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            
            child: const Row(
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
          const SizedBox(height: 20),
          Container(
           margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            color: Colors.white,
            child: const Row(
              children: [
                 SizedBox(width: 20),
                Icon( 
                  Icons.email,
                  size: 40,
                  color: Color(0xFF2B475E),
                ),
                SizedBox(width: 20),
                Text(
                  'menna.farag@gmail.com',
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
