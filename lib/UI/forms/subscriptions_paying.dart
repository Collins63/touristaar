import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:touristaar/CONSTANTS/app_bar.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_outline_btn.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/UI/forms/confirm_subpayment.dart';
import 'package:touristaar/constants/app_constants.dart';

class SubscriptionsPaying extends StatefulWidget {
  const SubscriptionsPaying({super.key});

  @override
  State<SubscriptionsPaying> createState() => _SubscriptionsPayingState();
}

class _SubscriptionsPayingState extends State<SubscriptionsPaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
           child: CustomAppBar(
            text: "Monthly Subscriptions",
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(CupertinoIcons.arrow_left),
        ))
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeightSpacer(size: 30),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/logo.PNG"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const HeightSpacer(size: 30),
              Center(
                child: Text(
                  "Susbcribe monthly to TouristaAR",
                  style: appStyle(20,Colors.black, FontWeight.w500),textAlign: TextAlign.center,
                ),
              ),
              HeightSpacer(size: 5),
              Center(
                child: Text(
                  "Subscribe and get unlimited AR tours for one month. Besides all access to current tours, you also get the latest feature updates",
                  style: appStyle(12,Colors.grey.shade700, FontWeight.normal),textAlign: TextAlign.center,
                ),
              ),
              const HeightSpacer(size: 30),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(kLight.value),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2 , color: Color(kDarkBlue.value))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2 , vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                //border: Border.all(width: 2 ,color: Color(kDarkBlue.value)),
                                color: Color(kDarkBlue.value)
                              ),
                              child: Center(
                                child: ReusableText(text: "Monthly", style: appStyle(14, Colors.white,FontWeight.normal)),
                              ),
                            ),
                            const HeightSpacer(size: 20),
                            Center(child: ReusableText(text: "\$10.00", style: appStyle(18, Colors.black,FontWeight.normal))),
                            Center(child: ReusableText(text: "per month", style: appStyle(14, Colors.black,FontWeight.normal))),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(kDarkBlue.value),
                        borderRadius: BorderRadius.circular(10),
                        //border: Border.all(width: 2 , color: Color(kDarkBlue.value))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2 , vertical: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                border: Border.all(width: 2 ,color: Color(kLight.value)),
                                color: Color(kDarkBlue.value)
                              ),
                              child: Center(
                                child: ReusableText(text: "Quarterly", style: appStyle(14, Colors.white,FontWeight.normal)),
                              ),
                            ),
                            const HeightSpacer(size: 20),
                            Center(child: ReusableText(text: "\$10.00", style: appStyle(18, Colors.white,FontWeight.normal))),
                            Center(child: ReusableText(text: "per Quarter", style: appStyle(14, Colors.white,FontWeight.normal))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpacer(size: 50),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text("Subscription Terms",style: appStyle(18,Colors.black,FontWeight.w500 ), textAlign: TextAlign.center,)),
                    Center(
                      child: Container(
                        width: width*0.6,
                        height: 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(kOrange.value),
                        ),
                      ),
                    ),
                    const HeightSpacer(size: 20) ,
                    Center(
                      child: Text(
                        "Your linked account will be charged when the purchase is confirmed. If you subscribe before your trial ends, the rest of the free trial period will be forfeited as soon as your purchase is confirmed",
                        style: appStyle(12,Colors.grey.shade700, FontWeight.normal),textAlign: TextAlign.center,
                      ),
                    ),
                  ],
              ),
              const HeightSpacer(size: 40),
              CustomOutlineBtn(
                text: "Continue",
                color: Colors.white,
                color2: Color(kDarkBlue.value),
                height: 50,
                onTap: (){
                  Get.to(()=> const ConfirmSubpayment());
                },
              )
            ],
          ),
        )
      ),
    );
  }
}