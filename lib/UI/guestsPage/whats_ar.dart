import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_button_round.dart';
import 'package:touristaar/CONSTANTS/custom_outline_btn.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/constants/app_constants.dart';

class WhatsAr extends StatelessWidget {
  const WhatsAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:const PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: CustomAppBar(text: "Maps And Routes", child: SizedBox() ,)
      ),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: const Icon(Icons.chevron_left , color: Colors.black,) ,style: IconButton.styleFrom(backgroundColor: Colors.grey.shade200),
                  ),
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon:const  Icon(CupertinoIcons.cloud_download_fill , color: Colors.black,) ,style: IconButton.styleFrom(backgroundColor: Colors.grey.shade200),
                  )
                ],
              ),
              Container(
                width: width,
                height: height*0.59,
                color: Color(kLight.value),
                child: Column(
                  children: [
                    const HeightSpacer(size: 20),
                    Lottie.asset('lib/assets/Animation - 1736431574667.json'),
                    const HeightSpacer(size: 20)
                  ],
                ),
              ),
              const HeightSpacer(size: 10),
              ReusableText(text: "Get Insights", style: appStyle(14, Colors.black, FontWeight.normal)),
              const HeightSpacer(size: 10),
              Text("What Is Augemented Reality?",style: appStyle(22, Colors.black, FontWeight.w500)),
              Container(
                width: width,
                height: height*0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1  , color: Colors.grey.shade200),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeightSpacer(size: 10),
                    ReusableText( text:"Augmented Reality (AR) is a technology that overlays", style: appStyle(12, kDark, FontWeight.normal),),
                    ReusableText( text:"—such as images, sounds, or 3D models—onto the real ", style: appStyle(12, kDark, FontWeight.normal),),
                    ReusableText(text: "world through a device like a smartphone, tablet, or AR", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "AR glasses. Unlike Virtual Reality (VR), which creates", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "a completely immersive digital environment, AR enhances", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "your real-world surroundings by adding interactive", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "digital elements in real-time.", style: appStyle(12,kDark,FontWeight.normal)),
                  ],
                )
              ),
              const HeightSpacer(size: 20),
              Text("Application In Tourism",style: appStyle(22, Colors.black, FontWeight.w500)),
              Container(
                width: width,
                height: height*0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1  , color: Colors.grey.shade200),
                  color: Colors.grey.shade200
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeightSpacer(size: 10),
                    ReusableText( text:"Augmented Reality enhances the tourism experience", style: appStyle(12, kDark, FontWeight.normal),),
                    ReusableText( text:"by providing interactive and immersive features that", style: appStyle(12, kDark, FontWeight.normal),),
                    ReusableText(text: "make exploring destinations engaging and informative.", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "AR apps can overlay historical information, fun facts,", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "or audio guides when users point their devices at", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "landmarks, monuments, or attractions.", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "digital elements in real-time.", style: appStyle(12,kDark,FontWeight.normal)),
                    const HeightSpacer(size: 10),
                    ReusableText(text: "Tourists use AR-powered maps to get real-time directions", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "and information about nearby points of interest. AR", style: appStyle(12,kDark,FontWeight.normal)),
                    ReusableText(text: "AR can translate signs, menus, and other text in real-time,", style:appStyle(12, kDark,FontWeight.normal))
                  ],
                )
              ),
              const HeightSpacer(size: 20),
              const HeightSpacer(size: 20),
            ],
          ),
        ),
      ),
    );
  }
}