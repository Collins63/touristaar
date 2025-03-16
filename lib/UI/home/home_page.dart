import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_textfield.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'package:touristaar/UI/forms/translator.dart';
import 'package:touristaar/UI/home/favourite1.dart';
import 'package:touristaar/UI/home/subscriptions.dart';
import 'package:touristaar/UI/maps/map_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children:[
        SingleChildScrollView(
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpacer(size: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.25,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value), // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              HeightSpacer(size: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Color(kLightGrey.value),
                                        borderRadius: BorderRadius.circular(50),
                                        image: const DecorationImage(
                                          image: AssetImage('lib/assets/profile.jpeg'),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(text: "Collins", style: appStyle(16, Colors.white, FontWeight.w500)),
                                      ReusableText(text: "Discovery & Adventure Awaits", style: appStyle(12, Colors.white, FontWeight.w500))
                                    ],
                                  )
                                ],
                              ),
                              const HeightSpacer(size: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 1 , color: Colors.white)
                                      ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                        child: TextFormField(
                                          
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Find your destination',
                                            suffixIcon:Icon(CupertinoIcons.search_circle, color: Color(kDark.value)),
                                            hintStyle: appStyle(14, Color(kDark.value), FontWeight.w500),
                                            focusedBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.zero,
                                              borderSide: BorderSide(color: Colors.transparent , width: 0.5)
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderRadius: BorderRadius.zero,
                                              borderSide: BorderSide(color: Colors.transparent , width: 0.5)
                                            ),
                                            border: InputBorder.none
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.list ,color: Colors.black,), style: IconButton.styleFrom(backgroundColor: Colors.white), )     
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const HeightSpacer(size: 20),
                  Text('Quick Actions' , style: appStyle(16 , Colors.black, FontWeight.w500),),
                  const HeightSpacer(size: 10),
                  Container(
                    height: height*0.12,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300
                    ),
                    child: 
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Match the container's radius
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Adjust blur intensity
                            child: Container(
                              height: height*0.12,
                              //width: width*0.4,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1 , color: Colors.white),
                                color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                borderRadius: BorderRadius.circular(20),
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: height*0.09,
                                        width: width*0.2,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1 , color: Color(kLight.value)),
                                          color: Color(kLight.value)
                                        ),
                                        child: IconButton(onPressed: (){
                                          Get.to(()=> const MapPage());
                                        },
                                        icon:FaIcon(FontAwesomeIcons.map, color:Color(kLightBlue.value),), 
                                        ),
                                      ),
                                      Container(
                                        height: height*0.09,
                                        width: width*0.2,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1 ,color: Color(kLight.value)),
                                          color: Color(kLight.value)
                                        ),
                                        child: IconButton(onPressed: (){
                                          Get.to(()=> Translator());
                                        },
                                                icon:FaIcon(FontAwesomeIcons.language, color:Color(kLightBlue.value)), 
                                              ),
                                      ),
                                      Container(
                                        height: height*0.09,
                                        width: width*0.2,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1 , color: Color(kLight.value)),
                                          color: Color(kLight.value)
                                        ),
                                        child: IconButton(onPressed: (){},
                                                icon: FaIcon(FontAwesomeIcons.bookmark, color: Color(kLightBlue.value) ,), 
                                              ),
                                      ),
                                      Container(
                                        height: height*0.09,
                                        width: width*0.2,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(width: 1 , color: Color(kLight.value)),
                                          color: Color(kLight.value)
                                        ),
                                        child: IconButton(onPressed: (){
                                          Get.to(()=> const Subscriptions());
                                        },
                                          icon:FaIcon(FontAwesomeIcons.creditCard, color: Color(kLightBlue.value)  ,), 
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              
                            ),
                          ),
                      ),
                  ),
                  const HeightSpacer(size: 10),
                  Text('Top Destinations' , style: appStyle(16 , Colors.black, FontWeight.w500),),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.38,
                        width: width,
                        decoration: BoxDecoration(
                          color: Color(kLightGrey.value), // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListView(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                  height: height*0.01,
                                  width: width*0.9,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(image: AssetImage('lib/assets/chinesseBuilding.jpg') ,fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      HeightSpacer(size: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.05,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        const Icon(Icons.location_on , color: Colors.white, size: 20,),
                                                        Center(child: Text("Forbidden City" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                      ],
                                                    ),                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 20),
                                      //Text("hEllo ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.12,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    child: Center(
                                                      child: Text("A beautiful ancient city in the heart of china" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),),
                                                    ),
                                                  )                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 19),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.07,
                                                width: width*0.88,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(width: 35,),
                                                        Align(alignment: Alignment.center, child: Text("See More" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                        IconButton.filled(onPressed: (){},color: Colors.black, icon: const Icon(Icons.chevron_right ), style: IconButton.styleFrom(backgroundColor: Colors.white),)
                                                      ],
                                                    ),
                                                  ),
                                  
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 10,),
                              Container(
                                  height: height*0.01,
                                  width: width*0.9,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(image: AssetImage('lib/assets/greatWall.jpg') ,fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      HeightSpacer(size: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.05,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        const Icon(Icons.location_on , color: Colors.white, size: 20,),
                                                        Center(child: Text("Forbidden City" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                      ],
                                                    ),                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 20),
                                      //Text("hEllo ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.12,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    child: Center(
                                                      child: Text("A beautiful ancient city in the heart of china" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),),
                                                    ),
                                                  )                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 19),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.07,
                                                width: width*0.88,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(width: 35,),
                                                        Align(alignment: Alignment.center, child: Text("See More" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                        IconButton.filled(onPressed: (){},color: Colors.black, icon: const Icon(Icons.chevron_right ), style: IconButton.styleFrom(backgroundColor: Colors.white),)
                                                      ],
                                                    ),
                                                  ),
                                  
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              const SizedBox(width: 10,),
                              Container(
                                  height: height*0.01,
                                  width: width*0.9,
                                  decoration: BoxDecoration(
                                    image:const DecorationImage(image: AssetImage('lib/assets/china.jpg') ,fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      HeightSpacer(size: 10),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.05,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        const Icon(Icons.location_on , color: Colors.white, size: 20,),
                                                        Center(child: Text("Forbidden City" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                      ],
                                                    ),                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 20),
                                      //Text("hEllo ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.12,
                                                width: width*0.5,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    child: Center(
                                                      child: Text("A beautiful ancient city in the heart of china" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),),
                                                    ),
                                                  )                                      
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      HeightSpacer(size: 19),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only( bottom: 4 , left: 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20), // Match the container's radius
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                              child: Container(
                                                height: height*0.07,
                                                width: width*0.88,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        SizedBox(width: 35,),
                                                        Align(alignment: Alignment.center, child: Text("See More" , textAlign: TextAlign.left, style: appStyle(14, Colors.white, FontWeight.w500),)),
                                                        IconButton.filled(onPressed: (){},color: Colors.black, icon: const Icon(Icons.chevron_right ), style: IconButton.styleFrom(backgroundColor: Colors.white),)
                                                      ],
                                                    ),
                                                  ),
                                  
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const HeightSpacer(size: 20),
                  Text('Favorites' , style: appStyle(16 , Colors.black, FontWeight.w500),),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.1,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400, // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50), // Match the container's radius
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                child: Container(
                                  height: height*0.07,
                                  width: width*0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(image: AssetImage('lib/assets/china.jpg') , fit: BoxFit.cover)
                                  ),
                            ))),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeightSpacer(size: 10),
                                Text('Temple Of Heaven' , style: appStyle(18, Colors.white, FontWeight.bold), ),
                                Text('Tiyugaun,China', style: appStyle(14, Color(kLight.value), FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 49,),
                            IconButton(
                              onPressed: (){
                                Get.to(()=> const Favourite1());
                              },
                              icon: const FaIcon(FontAwesomeIcons.arrowRight , color: Colors.white,)
                            ) ,
                            
                          ],
                        ),
                      ),
                  )
                    )
                  ),
                const HeightSpacer(size: 10),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.1,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400, // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50), // Match the container's radius
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                child: Container(
                                  height: height*0.07,
                                  width: width*0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(image: AssetImage('lib/assets/greatWall.jpg') , fit: BoxFit.cover)
                                  ),
                            ))),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeightSpacer(size: 10),
                                Text('Great Wall of China' , style: appStyle(18, Colors.white, FontWeight.bold), ),
                                Text('China, Asia', style: appStyle(14, Color(kLight.value), FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 39,),
                            IconButton(
                              onPressed: (){},
                              icon: const FaIcon(FontAwesomeIcons.arrowRight , color: Colors.white,)
                            ) ,
                            
                          ],
                        ),
                      ),
                  )
                    )
                  ),
                const HeightSpacer(size: 10),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Match the container's radius
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                      child: Container(
                        height: height*0.1,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400, // Slight opacity for frosted effect
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50), // Match the container's radius
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                child: Container(
                                  height: height*0.07,
                                  width: width*0.14,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2), // Slight opacity for frosted effect
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(image: AssetImage('lib/assets/cbd.jpg') , fit: BoxFit.cover)
                                  ),
                            ))),
                            const SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeightSpacer(size: 10),
                                Text('Dubai' , style: appStyle(18, Colors.white, FontWeight.bold), ),
                                Text('UAE, Africa', style: appStyle(14, Color(kLight.value), FontWeight.w500),)
                              ],
                            ),
                            SizedBox(width: 90,),
                            IconButton(
                              onPressed: (){},
                              icon: const FaIcon(FontAwesomeIcons.arrowRight , color: Colors.white,)
                            ) ,
                            
                          ],
                        ),
                      ),
                  )
                    )
                  )
                ],
              ),
            )  
          ),
        ),
        ]
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: ClipRRect(
          
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), // Optional rounded corners
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), 
            child: BottomAppBar(
                color: Color(kLightBlue.value),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: (){
                          //Get.to(()=> const HomePage());
                        },
                        icon: const Column(
                          children: [
                            FaIcon(FontAwesomeIcons.home, color: Colors.white,),
                            Text(
                                "Home",
                                style: TextStyle(fontSize: 10 , color: Colors.white),
                            )
                          ],
                        ),
                    ),
                    IconButton(
                      onPressed: (){
                        //Navigator.pushReplacement(
                          //context,
                          //MaterialPageRoute(builder: (context) => MyAccount()),
                        //);
                      },
                      icon: const Column(
                        children: [
                          FaIcon(FontAwesomeIcons.book, color: Colors.white),
                          Text(
                            "Bookings",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    FloatingActionButton(
                        onPressed: (){
                           
                        },
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        child: const FaIcon(
                          FontAwesomeIcons.vrCardboard,
                          color: Colors.black,
                        ),
                    ),
                    IconButton(
                      onPressed: (){
                       // Navigator.pushReplacement(
                         // context,
                         // MaterialPageRoute(builder: (context) => MyLoans()),
                        //);
                      },
                      icon: const Column(
                        children: [
                          FaIcon(FontAwesomeIcons.locationArrow, color: Colors.white),
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 1 , color: Colors.white),
                        image:const DecorationImage(image: AssetImage('lib/assets/profile.jpeg') , fit: BoxFit.cover)
        
                      ),
                    )
                    //IconButton(
                      //onPressed: (){
                       // Navigator.pushReplacement(
                         // context,
                         // MaterialPageRoute(builder: (context) => Profile()),
                       // );
                       //Get.to(()=> const Settings());
                      //},
                      //icon: const Column(
                        //children: [
                          //FaIcon(FontAwesomeIcons.calendar, color: Colors.white),
                          //Text(
                            //"Calender",
                            //style: TextStyle(fontSize: 10, color: Colors.white),
                          //)
                        //],
                      //),
                   // ),
                  ],
                ),
              ),
          ),
        ),
      ),
      
    );
  }
}