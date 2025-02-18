import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_button_round.dart';
import 'package:touristaar/CONSTANTS/custom_outline_btn.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/constants/app_constants.dart';

class MapsRoutes extends StatelessWidget {
  const MapsRoutes({super.key});

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
              const HeightSpacer(size: 10),
              ReusableText(text: "Get Insights", style: appStyle(14, Colors.black, FontWeight.normal)),
              const HeightSpacer(size: 10),
              Text("Routes Suggestions",style: appStyle(22, Colors.black, FontWeight.w500)),
              const HeightSpacer(size: 10),
              Container(
                height: height*0.3,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image:AssetImage('lib/assets/maps.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              const HeightSpacer(size: 10),
              ReusableText( text:"Navigate with ease! Our app provides smart maps and" 
              , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"real-time route suggestions, ensuring the fastest and" , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"most efficient way to your destination. Whether you're" , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"exploring new places or commuting daily, get accurate," 
              , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"traffic updates, and alternative routes—right at your fingertips!" , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"your current location and get the best way to navigate" , style: appStyle(12, kDark, FontWeight.normal),),
              const HeightSpacer(size: 20),ReusableText( text:"Brings you augmented reality experience for numerous" 
              , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"locations around the globe. Get live interactions with" , style: appStyle(12, kDark, FontWeight.normal),),
              ReusableText( text:"your current location and get the best way to navigate" , style: appStyle(12, kDark, FontWeight.normal),),
              const HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 30, ),
                    height: 60,
                    width: width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){},
                          icon: Icon(Icons.monetization_on , color: Colors.black,),style: IconButton.styleFrom(backgroundColor: Colors.white),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HeightSpacer(size: 7),
                            ReusableText(text: "Charges", style: appStyle(14, kDark,FontWeight.bold)),
                            ReusableText(text: "Free", style: appStyle(14, kDarkGrey,FontWeight.normal))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30, ),
                    height: 60,
                    width: width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){},
                          icon: Icon(Icons.phone_android, color: Colors.black,),style: IconButton.styleFrom(backgroundColor: Colors.white),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const HeightSpacer(size: 7),
                            ReusableText(text: "Gadgets", style: appStyle(14, kDark,FontWeight.bold)),
                            ReusableText(text: "Unlimited", style: appStyle(14, kDarkGrey,FontWeight.normal))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const HeightSpacer(size: 20),
              CustomOutlineBtnRound(
                text: "Try It Out",
                color: Color(kLight.value),
                color2: Color(kLightBlue.value),
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}