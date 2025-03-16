import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_textfield.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  final TextEditingController cardNumber = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(50)
        ,child: AppBar(
          centerTitle: true,
          title: Text("Payment" , style: appStyle(14, Colors.white, FontWeight.normal),),
          iconTheme:const IconThemeData(color: Colors.white),
          backgroundColor: Color(kLightBlue.value),
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              width: width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/creditcard.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ReusableText(text: "PAY FOR SERVICE", style: appStyle(18, kDark, FontWeight.w500)),
            HeightSpacer(size: 20),
            CustomTextfield(
                controller: cardNumber,
                hintText: "Card Number",
                keyboardType: TextInputType.emailAddress,
                validator: (cardNumber){
                  if(cardNumber!.isEmpty){
                    Get.snackbar(
                      "Cannot Process",
                      "Missing Card Number!!!",
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.amber,
                      icon: FaIcon(FontAwesomeIcons.message)                      
                    );
                  }else{
                    return null;
                  }
                },
              ),
          ],
        ),
      ),
    );
  }
}