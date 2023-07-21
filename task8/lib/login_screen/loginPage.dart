
import 'package:flutter/material.dart';

import 'BusinessCardScreen.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool obscureText = true;

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    // Add more complex email validation logic if needed
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    // Add more complex password validation logic if needed
    return null;
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    // Add more complex name validation logic if needed
    return null;
  }

  String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    // Add more complex phone number validation logic if needed
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        
        leading: const Icon(Icons.menu),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.00),
        child: Column(
          children: [
            // email field
            textField(
              controller: emailController,
              prefixIcon: Icons.mail,
              labelText: 'Email',
              hintText: 'Enter Your email',
              validator: emailValidator,
            ),
            SizedBox(height: 15),
            // password field
            textField(
              controller: passwordController,
              prefixIcon: Icons.lock,
              labelText: 'Password',
              hintText: 'Enter your password',
              obscureText: obscureText,
              togglePassword: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              validator: passwordValidator,
            ),
             SizedBox(height: 15),
            // name field
            textField(
              controller: nameController,
              prefixIcon: Icons.person,
              labelText: 'Name',
              hintText: 'Enter Your name',
              validator: nameValidator,
            ),
            SizedBox(height: 15),
            // phone number field
            textField(
              controller: phoneController,
              prefixIcon: Icons.phone,
              labelText: 'Phone Number',
              hintText: 'Enter Your phone',
              validator: phoneValidator,
            ),
            SizedBox(height: 20),
          MaterialButton(
  onPressed: () {
    // Validate each field separately
    bool isEmailValid = emailValidator(emailController.text) == null;
    bool isPasswordValid = passwordValidator(passwordController.text) == null;
    bool isNameValid = nameValidator(nameController.text) == null;
    bool isPhoneValid = phoneValidator(phoneController.text) == null;

    if (isEmailValid && isPasswordValid && isNameValid && isPhoneValid) {
      // All fields are valid, navigate to the next screen.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => BusinessCardScreen(
            email: emailController.text,
            password: passwordController.text,
            name: nameController.text,
            phone: phoneController.text,
          ),
        ),
      );
    } else {
      // Perform actions in case any of the fields is not valid.
      // For example, you can show an error message or perform other tasks.
      // Here, I'm just printing a message to the console.
      print("Please fill in all required fields correctly.");
    }
  },
  minWidth: 100,
  height: 40,
  child: Text(
    'Login',
  ),
),// Button
           
          ],
        ),
      ),
    );
  }
}

Widget textField({
  required TextEditingController controller,
  required IconData prefixIcon,
  required String labelText,
  required String hintText,
  bool obscureText = false,
  VoidCallback? togglePassword,
  String? Function(String?)? validator,
}) {
  return Padding(
    padding:  EdgeInsets.all(8.00),
    child: TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 15,
          borderRadius: BorderRadius.all(Radius.circular(30)),
         
        ),
        suffixIcon: obscureText
            ? IconButton(
                onPressed: togglePassword,
                icon: Icon(
                  Icons.visibility_off,
                  
                ),
              )
            : IconButton(
                onPressed: togglePassword,
                icon: Icon(
                  Icons.visibility,
                 
                ),
              ),
       
      ),
      
    ),
  );
}
