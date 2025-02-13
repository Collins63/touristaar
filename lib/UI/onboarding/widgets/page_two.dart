import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/constants/app_constants.dart';


class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Color(kLight.value),
        child: Column(
          children: [
            const HeightSpacer(size: 20),
            Lottie.asset('lib/assets/Animation - 1736431574667.json'),
            const HeightSpacer(size: 20),
            Column(
              children: [
                ReusableText(text: "Modern Tourism", style:appStyle(30, Color(kDark.value), FontWeight.bold)),
                const HeightSpacer(size: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Text(
                    "Laveraging Computing And AI Tool To Bring You The Best Travelling Experience",
                    textAlign: TextAlign.center,
                    style: appStyle(14, Color(kDark.value),FontWeight.normal),
                  ),
                  )
              ],
            )
          ],
        ),
      ),
    ); 
  }
}