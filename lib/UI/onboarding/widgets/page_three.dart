import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_btn.dart';
import 'package:touristaar/CONSTANTS/custom_outline_btn.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/UI/auth/login_page.dart';
import 'package:touristaar/UI/auth/registration_page.dart';
import 'package:touristaar/UI/home/guests_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('lib/assets/sea.jpg') , fit: BoxFit.cover)
            ),
        ),

        Container(
          width: width,
          height: height,
          color: Colors.transparent,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              //Lottie.asset('lib/assets/Animation - 1736431085384.json'),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20), // Match the container's radius
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                    child: Container(
                                      height: height*0.4,
                                      width: width*0.4,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.2), // Slight opacity for frosted effect
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: FaIcon(FontAwesomeIcons.earthAsia , size: 250,color: Colors.white,),
                                      ),
                                    ),
                                  ),
                                ),
              ),
              const HeightSpacer(size: 40),
              Column(
                children: [
                  ReusableText(text: "Global Coverage", style:appStyle(30, Color(kLight.value), FontWeight.w500)),
                  const HeightSpacer(size: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                    child: Text(
                      "We Cover A Number Of Tourism Destation In The Various Regions Of The Earth",
                      textAlign: TextAlign.center,
                      style: appStyle(14, Color(kLight.value),FontWeight.normal),
                    ),
                  ),
                  const HeightSpacer(size: 30),
                  GestureDetector(
                  onTap: (){
                    Get.to(()=> LoginPage());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.08,
                        width: width*0.8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(width: 1, color: Colors.white)
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: appStyle(16,Colors.white, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                  const HeightSpacer(size: 20),
                  GestureDetector(
                  onTap: (){
                    Get.to(()=> RegistrationPage());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.08,
                        width: width*0.8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                          //border: Border.all(width: 1, color: Colors.white)
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: appStyle(16,Colors.white, FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                  //Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //children: [
                      //CustomOutlineBtn(
                        //onTap: () async {
                          //final SharedPreferences prefs = await SharedPreferences.getInstance();
                          //await prefs.setBool('entrypoint', true);
                          //Get.to(()=> const LoginPage() );
                        //},
                        //text: "Login",
                        //width: width*0.4,
                        //height: height*0.06,
                        //color: Color(kLight.value),
                        //color2: Color(kLightBlue.value),
                      //),
        
                      //CustomOutlineBtn(
                        //onTap: (){
                          //Get.to(()=> const RegistrationPage());
                        //},
                        //text: "Sign Up",
                        //width: width*0.4,
                        //height: height*0.06,
                        //color: Color(kLight.value),
                        //color2: Color(kLightBlue.value),
                      //),
                    //],
                  //),
                  const HeightSpacer(size: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Match the container's radius
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                        child: Container(
                          height: height*0.08,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                            borderRadius: BorderRadius.circular(20),
                            //border: Border.all(width: 1, color: Colors.white)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 40,),
                                Center(
                                  child: Text(
                                    'Continue As Guest',
                                    style: appStyle(16,Colors.white, FontWeight.bold),
                                  ),
                                ),
                                IconButton(onPressed: (){
                                  Get.to(()=>const GuestsPage());
                                }, icon: const Icon(Icons.chevron_right ,) , style: IconButton.styleFrom(backgroundColor: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text('Continue As Guest', style:appStyle(18, Color(kLight.value), FontWeight.w500) ,),
                  //     IconButton(onPressed: (){
                  //       Get.to(()=>const GuestsPage());
                  //     },
                  //     icon: Icon(CupertinoIcons.arrow_right , color: Color(kLight.value),))
                  //   ],
                  // ),
                  
                ],
              )
            ],
          ),
        ),
        ]
      ),
    );
  }
}