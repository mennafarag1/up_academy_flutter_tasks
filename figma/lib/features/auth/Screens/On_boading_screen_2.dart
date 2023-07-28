// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upacademy/core/utils/app_color.dart';
import 'package:upacademy/core/utils/app_images.dart';
import 'package:upacademy/core/utils/app_strings.dart';
import 'package:upacademy/features/auth/Screens/On_boading_screem_3.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

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
              height: 300, width: 300, child: Image.asset(AppImages.imgpath2)),
          const SizedBox(
            height: 48,
          ),
          // title
          Text(AppStrings.OnBordingTilteTwo,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700)),
          // sub title
          Text(AppStrings.OnBordingSubTilteTwo,
              style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColor.secColor)),
          const Spacer(),
          // next
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: AppColor.primaryColor),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                width: 125,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const OnBoardingScreen3()));
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