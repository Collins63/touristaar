import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';

class Arpage1 extends StatefulWidget {
  const Arpage1({super.key});

  @override
  State<Arpage1> createState() => _Arpage1State();
}

class _Arpage1State extends State<Arpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50)
        ,child: AppBar(
          centerTitle: true,
          title: Text("Maps" , style: appStyle(14, Colors.white, FontWeight.normal),),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Color(kLightBlue.value),
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
        )
      ),
    );
  }
}