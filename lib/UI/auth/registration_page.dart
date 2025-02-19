import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
import 'package:touristaar/UI/auth/login_page.dart';
import 'package:touristaar/controllers/signup_provider.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage ({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
  
}

class _RegistrationPageState extends State<RegistrationPage>{

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController name = TextEditingController();

  @override
  void dispose(){
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Consumer<SignUpNotifier>(
      builder: (context , signupNotifier , child){
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
           child: CustomAppBar(
            text: "Sign Up",
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(CupertinoIcons.arrow_left),
            ))
          ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const HeightSpacer(size: 50),
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
                obscureText: signupNotifier.obscureText,
                keyboardType: TextInputType.emailAddress,
                validator: (password){
                  if(signupNotifier.passValidator(password ?? '')){
                    return "Please enter a valid password with at least 8 chars";
                  }
                  return null;
                },
                suffixIcon: GestureDetector(
                  onTap: (){
                    signupNotifier.obscureText = 
                    !signupNotifier.obscureText;
                  } ,
                  child: Icon(
                    signupNotifier.obscureText
                    ?Icons.visibility: Icons.visibility_off ,
                    color: Color(kDark.value),),
                ),
              ),

              const HeightSpacer(size: 10),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap:(){
                    Get.to(() => const LoginPage());
                  },
                  child: ReusableText(text: "Already have an account? Login!",
                  style: appStyle(14, Color(kLightBlue.value), FontWeight.w500)),
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
      );
      }
    );
  }
}