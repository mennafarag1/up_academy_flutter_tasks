// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upacademy/core/utils/app_color.dart';
import 'package:upacademy/core/utils/app_images.dart';
import 'package:upacademy/core/utils/app_strings.dart';
import 'package:upacademy/features/auth/Screens/On_boading_screen_2.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Skip button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(AppStrings.skip,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.secColor,
                      ))),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          // image
          SizedBox(
              height: 300, width: 300, child: Image.asset(AppImages.imgpath1)),
          const SizedBox(
            height: 48,
          ),
          // title
          Text(AppStrings.OnBordingTilteOne,
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700)),
          // sub title
          Text(AppStrings.OnBordingSubTilteOne,
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColor.secColor)),
          const Spacer(),
          // next
          Row(
            children: [
              const Spacer(),
              SizedBox(
                height: 60,
                width: 125,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const OnBoardingScreen2()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: AppColor.primaryColor),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStrings.next,
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}