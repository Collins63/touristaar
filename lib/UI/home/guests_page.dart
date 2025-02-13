import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/custom_btn.dart';
import 'package:touristaar/CONSTANTS/custom_outline_btn.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:touristaar/CONSTANTS/reusable_text.dart';
import 'dart:ui';

import 'package:touristaar/UI/auth/registration_page.dart';
import 'package:touristaar/UI/guestsPage/info_ar_experience.dart';


class GuestsPage extends StatefulWidget {
  const GuestsPage({super.key});

  @override
  State<GuestsPage> createState() => _GuestsPageState();
}

class _GuestsPageState extends State<GuestsPage> {
  bool liked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const HeightSpacer(size: 20),
                Text("Discover!", style: appStyle(46, Colors.black, FontWeight.bold),),
                const HeightSpacer(size: 5),
                Text("The world's wonders" , style: appStyle(23, Color(kDarkGrey.value), FontWeight.w500),),
                const HeightSpacer(size: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.travel_explore , color: Colors.white,) ,
                        ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 80,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.location_on , color: Colors.white,) ,
                        ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 80,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.train , color: Colors.white,) ,
                        ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 80,
                        width:75,
                        decoration: BoxDecoration(
                          color: Color(kLightBlue.value),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.restaurant , color: Colors.white,) ,
                        ),
                        ),
                      )
                    ],
                  ),
                ),

                const HeightSpacer(size: 20),

                Text("What we do:" , style: appStyle(20, Colors.black, FontWeight.bold),),
                const HeightSpacer(size: 10),
                Container(
                  height: height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/greatWall.jpg'),
                      fit: BoxFit.cover
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.topRight ,
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(50), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.question_mark) , color: Colors.white,),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                          const HeightSpacer(size: 20),
                          Text("Supporting Local Business Growth And Tourism", textAlign: TextAlign.center,style: appStyle(24, Colors.white, FontWeight.bold),),
                          const HeightSpacer(size: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft ,
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.circular(50), // Match the container's radius
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.location_on_outlined , color: Colors.white,),
                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                              ),
                              //SizedBox(width: 10,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 30,
                                    width: width*0.5,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child:Center(child: Text("Great Wall Of China, China" ,style: appStyle(12, Colors.white, FontWeight.w500),)),
                                  ),
                                ),
                              ),
                              //const SizedBox(width: 40,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: IconButton(onPressed: (){
                                        setState(() {
                                          if(liked2=false){
                                          liked2 = true;
                                        }else if(liked2=true)
                                        {
                                          liked2 = false;
                                        }
                                        });
                                      },
                                       icon:liked2? const FaIcon(FontAwesomeIcons.heart, color: Colors.red ,) : const FaIcon(FontAwesomeIcons.heart, color: Colors.white ,)
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                  ),
                ),
                const HeightSpacer(size: 10),
                Container(
                  height: height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/chinesseBuilding.jpg'),
                      fit: BoxFit.cover
                      )
                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.topRight ,
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(50), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.question_mark) , color: Colors.white,),
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ),
                          const HeightSpacer(size: 20),
                          Text("Bridging Communication And Cultural Gaps", textAlign: TextAlign.center,style: appStyle(24, Colors.white, FontWeight.bold),),
                          const HeightSpacer(size: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft ,
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.circular(50), // Match the container's radius
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.location_on_outlined , color: Colors.white,),
                                          ),
                                        ),
                                      ),
                                    )
                                  ),
                              ),
                              //SizedBox(width: 10,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 30,
                                    width: width*0.5,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child:Center(child: Text("Great Wall Of China, China" ,style: appStyle(12, Colors.white, FontWeight.w500),)),
                                  ),
                                ),
                              ),
                              //const SizedBox(width: 40,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: IconButton(onPressed: (){
                                        setState(() {
                                          if(liked2=false){
                                          liked2 = true;
                                        }else if(liked2=true)
                                        {
                                          liked2 = false;
                                        }
                                        });
                                      },
                                       icon:liked2? const FaIcon(FontAwesomeIcons.heart, color: Colors.red ,) : const FaIcon(FontAwesomeIcons.heart, color: Colors.white ,)
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                  ),
                ),
                const HeightSpacer(size: 20 ),
                Text("Benefits:" , style: appStyle(20, Colors.black, FontWeight.bold),),
                const HeightSpacer(size: 10),
                Container(
                  height: height*0.48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/page3.jpg'),
                      fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: height*0.2,
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      color: Colors.white, // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const HeightSpacer(size: 25),
                                          Container(
                                            decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(width: 1 , color: Colors.black)
                                            ),
                                            child: IconButton(onPressed: (){
                                              Get.to(()=> const InfoArExperience());
                                            },
                                             icon:const FaIcon(FontAwesomeIcons.personWalking, color: Colors.black ,), 
                                            ),
                                          ),
                                          const HeightSpacer(size: 10),
                                          Text("AR Travel Experience" , textAlign: TextAlign.center, style: appStyle(16, Colors.black, FontWeight.w500),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: height*0.2,
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1 , color: Colors.white),
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const HeightSpacer(size: 25),
                                          Container(
                                            decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(width: 1 , color: Colors.white)
                                            ),
                                            child: IconButton(onPressed: (){
                                              
                                            },
                                             icon:const FaIcon(FontAwesomeIcons.map, color: Colors.white ,), 
                                            ),
                                          ),
                                          const HeightSpacer(size: 10),
                                          Text("Maps & Route Suggestions" , textAlign: TextAlign.center, style: appStyle(16, Colors.white, FontWeight.w500),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                        const HeightSpacer(size: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: height*0.2,
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white , width: 1),
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const HeightSpacer(size: 25),
                                          Container(
                                            decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(width: 1 , color: Colors.white)
                                            ),
                                            child: IconButton(onPressed: (){
                                              
                                            },
                                             icon:const FaIcon(FontAwesomeIcons.hotel, color: Colors.white ,), 
                                            ),
                                          ),
                                          const HeightSpacer(size: 10),
                                          Text("Bookings & Culture Links" , textAlign: TextAlign.center, style: appStyle(16, Colors.white, FontWeight.w500),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20), // Match the container's radius
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Adjust blur intensity
                                  child: Container(
                                    height: height*0.2,
                                    width: width*0.4,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1 , color:  Colors.white),
                                      color: Colors.white.withOpacity(0.1), // Slight opacity for frosted effect
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const HeightSpacer(size: 25),
                                          Container(
                                            decoration:BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(width: 1 , color: Colors.white)
                                            ),
                                            child: IconButton(onPressed: (){
                                              
                                            },
                                             icon:const FaIcon(FontAwesomeIcons.handshakeAngle, color: Colors.white ,), 
                                            ),
                                          ),
                                          const HeightSpacer(size: 10),
                                          Text("Local Business Support" , textAlign: TextAlign.center, style: appStyle(16, Colors.white, FontWeight.w500),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )  
      ),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        color: Colors.white,
        child: Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(kLightBlue.value)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/logo.PNG'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(width: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Register" , style: appStyle(16, Colors.white, FontWeight.bold),),
                  IconButton(onPressed: (){
                    Get.to(()=> const RegistrationPage());
                  }, icon:const Icon(Icons.chevron_right  , color: Colors.black) ,style: IconButton.styleFrom(backgroundColor: Colors.white),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}