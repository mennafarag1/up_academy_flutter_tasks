import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upacademy/core/utils/app_color.dart';
import 'package:upacademy/core/utils/app_images.dart';
import 'package:upacademy/core/utils/app_strings.dart';
import 'package:upacademy/features/auth/Sign_up.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 64,
        ),
        // image
        SizedBox(
            height: 300, width: 361.36, child: Image.asset(AppImages.imgpath4)),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.signin,
              style: GoogleFonts.poppins(color: AppColor.primaryColor),
            ),
            SizedBox(
              width: 369,
              height: 35,
            ),
            Text(
              AppStrings.signup,
              style: GoogleFonts.poppins(color: AppColor.lastColor),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  hintText: 'Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.OnBordingTilteFour,
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColor.lastColor),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SignUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: AppColor.primaryColor),
                child: const Text(
                  AppStrings.signin,
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}