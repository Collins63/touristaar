//import 'dart:math';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_btn.dart';
import 'package:touristaar/CONSTANTS/custom_textfield.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/CONSTANTS/signIns.dart';
import 'package:touristaar/UI/auth/registration_page.dart';
import 'package:touristaar/UI/home/home_page.dart';
import 'package:touristaar/controllers/login_provider.dart';


class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose(){
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Consumer<LoginNotifier>(
      builder: (context , loginNotifier , child){
      return Scaffold(
        backgroundColor: Colors.white, 
        body: Stack(
          children:[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const HeightSpacer(size: 30),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                  height: height*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/logo.PNG' ),
                      fit: BoxFit.cover,
                      //opacity: 0.9,
                      )
                    ),
                  ),
                ),
                const HeightSpacer(size: 20),
                ReusableText(text: "Welcome Back",
                 style: appStyle(30, Color(kDark.value),FontWeight.w600)),
                ReusableText(text: "Fill in the details",
                 style: appStyle(16, Color(kDark.value), FontWeight.w500)),
                
                const HeightSpacer(size: 50),
                CustomTextfield(
                  controller: email,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (email){
                    if(email!.isEmpty || !email.contains("@")){
                      return "Please enter a valid email";
                    }else{
                      return null;
                    }
                  },
                  
                ),
                const HeightSpacer(size: 20),
                CustomTextfield(
                  controller: password,
                  hintText: "Password",
                  obscureText: loginNotifier.obscureText,
                  keyboardType: TextInputType.emailAddress,
                  validator: (password){
                    if(password!.isEmpty || password.length < 7 ){
                      return "Please enter a valid password";
                    }else{
                      return null;
                    }
                  },
                  suffixIcon: GestureDetector(
                    onTap: (){
                      loginNotifier.obscureText = 
                      !loginNotifier.obscureText;
                    } ,
                    child: Icon(
                      loginNotifier.obscureText
                      ?Icons.visibility: Icons.visibility_off ,
                      color: Color(kDark.value),),
                  ),
                ),
                const HeightSpacer(size: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap:(){
                      Get.to(() => const RegistrationPage());
                    },
                    child: ReusableText(text: "Register",
                    style: appStyle(14, Color(kDark.value), FontWeight.w500)),
                  ),
                ),
                const HeightSpacer(size: 50),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> HomePage());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.08,
                        width: width*0.4,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value), // Slight opacity for frosted effect
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
                //CustomButton(
                  //onTap: (){
                   // Get.to(()=>const HomePage());
                 // },
                  //text: "Login",
                //),
                const HeightSpacer(size: 50),
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: height*0.04,
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300, // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          
                                          Text("SignIn With:" , textAlign: TextAlign.center, style: appStyle(16, Colors.white, FontWeight.w500),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                ),
                HeightSpacer(size: 10),
                const Signins()
              ],
            ),
          
          ),
          ] 
        ),
      );
      }
    );
  }
}