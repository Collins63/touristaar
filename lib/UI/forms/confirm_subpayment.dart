import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';

class ConfirmSubpayment extends StatefulWidget {
  const ConfirmSubpayment({super.key});

  @override
  State<ConfirmSubpayment> createState() => _ConfirmSubpaymentState();
}

class _ConfirmSubpaymentState extends State<ConfirmSubpayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kLight.value),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
           child: CustomAppBar(
            text: "Payment",
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(CupertinoIcons.arrow_left),
        ))
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  //width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(kDarkBlue.value)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(text: "Amount Payable", style: appStyle(14, Colors.white, FontWeight.w500)),
                        ReusableText(text: "\$600", style: appStyle(14, Colors.white, FontWeight.w500))
                      ],
                    ),
                  ),
                ),
                const HeightSpacer(size: 25),
                //ReusableText(text: "Payment Provider", style: appStyle(16, Colors.black, FontWeight.w500)),
                const HeightSpacer(size: 10),
                Container(
                  height: 100,
                  //width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    color: Color(kDarkBlue.value)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(text:"Card Provider", style:appStyle(14,Colors.white, FontWeight.w500)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width*0.2,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1 , color: Colors.white),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: IconButton(
                                onPressed: (){},
                                icon: FaIcon(FontAwesomeIcons.ccMastercard, color: Colors.white,)
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const HeightSpacer(size: 5),
                Container(
                  height: 350,
                  //width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    ),
                    color: Color(kDarkBlue.value)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}