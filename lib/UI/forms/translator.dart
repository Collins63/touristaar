import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';
import 'package:touristaar/CONSTANTS/app_style.dart';
import 'package:touristaar/CONSTANTS/height_spacer.dart';
import 'package:translator/translator.dart';

class Translator extends StatefulWidget {
  const Translator({super.key});

  @override
  State<Translator> createState() => _TranslatorState();
}

class _TranslatorState extends State<Translator> {
  final outputController = TextEditingController(text: "Result Here.....");
  final translator = GoogleTranslator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50)
        ,child: AppBar(
          centerTitle: true,
          title: Text("Language Translator" , style: appStyle(14, Colors.white, FontWeight.normal),),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(kLightBlue.value),
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeightSpacer(size: 20),
          Center(
            child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/assets/translator.png"))
              ),
            ),
          ),
          const HeightSpacer(size: 20),
        ],
      ),
    );
  }
}