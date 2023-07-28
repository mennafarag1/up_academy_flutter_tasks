// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upacademy/core/utils/app_color.dart';
import 'package:upacademy/core/utils/app_images.dart';
import 'package:upacademy/core/utils/app_strings.dart';
import 'package:upacademy/features/auth/Sign_in.dart';


class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 64,
          ),
          // image
          SizedBox(
              height: 200, width: 200, child: Image.asset(AppImages.imgpath3)),
          const SizedBox(
            height: 48,
          ),
          // title
          Text(AppStrings.OnBordingTilteThree,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700)),
          // sub title
          Text(AppStrings.OnBordingSubTilteThree,
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColor.secColor)),
          const Spacer(),
          // start
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignInScreen()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: AppColor.primaryColor),
              child: const Text(
                AppStrings.start,
              ),
            ),
          )
        ],
      ),
    ));
  }
}