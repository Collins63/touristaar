import 'package:flutter/material.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';

class CustomOutlineBtnRound extends StatelessWidget {
  const CustomOutlineBtnRound({super.key, this.width, this.height, required this.text, this.onTap, required this.color, this.color2});

  final double? width;
  final double? height;
  final String text;
  final void Function()? onTap;
  final Color color;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          //boxShadow: BoxShadow(color: Color(kLightGrey.value) , blurRadius: 0.1 , offset: Offset.zero , spreadRadius: 0.3),
          color: color2,
          border: Border.all(
            width: 1,
            color: color,
          )
        ),
        child: Center(
          child: ReusableText(text: text,
           style: appStyle(16, color, FontWeight.w600)),
        ),
      ),
    );
  }
}