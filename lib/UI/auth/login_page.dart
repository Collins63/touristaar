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
  final TextEditingController name = TextEditingController();
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
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
              toolbarHeight: 50,
              backgroundColor: Color(kLightBlue.value),
              bottom: TabBar(
                dividerColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  color: Color(kLight.value),
                  borderRadius: BorderRadius.circular(50),
                ),
                //indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    text: "Login",
                  ),
                  Tab(
                    text: "Sign Up",
                  )
                ]
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.white,
                  child:Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: ListView(
                      physics:const NeverScrollableScrollPhysics(),
                      children: [
                        const HeightSpacer(size: 60),
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
                        const HeightSpacer(size: 10),
                        ReusableText(text: "Welcome Back",
                        style: appStyle(30, Color(kDark.value),FontWeight.w600)),
                        ReusableText(text: "Fill in the details",
                        style: appStyle(16, Color(kDark.value), FontWeight.w500)),
                        const HeightSpacer(size: 30),
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
                        const HeightSpacer(size: 20),
                        CustomButton(
                          onTap: (){
                            Get.to(()=> const HomePage());
                          },
                          text: "Register",
                        ),
                        const HeightSpacer(size: 20),
                        Text("Log In:" , textAlign: TextAlign.center, style: appStyle(16, Colors.black, FontWeight.w500),),
                        const HeightSpacer(size: 10),
                        const Signins(),
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Colors.blue,
                  child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const HeightSpacer(size: 20),
              Align(
                alignment: Alignment.center,
                child: Container(
                height: height*0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('lib/assets/logo.PNG'),
                    fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              const HeightSpacer(size: 20),
              ReusableText(text: "Welcome!!",
               style: appStyle(30, Color(kDark.value),FontWeight.w600)),
              ReusableText(text: "Fill in the details to get registered",
               style: appStyle(16, Color(kDarkGrey.value), FontWeight.w500)),
      
              const HeightSpacer(size: 30),

              CustomTextfield(
                controller: name,
                hintText: "FullName",
                keyboardType: TextInputType.emailAddress,
                validator: (name){
                  if(name!.isEmpty){
                    return "Please enter a valid name";
                  }else{
                    return null;
                  }
                },
                
              ),

              const HeightSpacer(size: 20),
      
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
                  return null;
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
              const HeightSpacer(size: 30),
              CustomButton(
                onTap: (){},
                text: "Register",
              ),
              const HeightSpacer(size: 20),
              Align(
                alignment: Alignment.center,
                child: Text("Continue With:" , style: appStyle(15, Color(kDarkGrey.value), FontWeight.w500),),
              ),
              const HeightSpacer(size: 10),
              const Signins()
            ],
          ),
        ),
                )
              ],
            ),
          )
        );
      }
    );
  }
}