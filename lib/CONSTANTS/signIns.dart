import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:touristaar/CONSTANTS/app_constants.dart';

class Signins extends StatelessWidget{
  const Signins({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 50,),
        Expanded(
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color(kLightBlue.value),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.apple , size: 50,color: Colors.white,)  ),
          ),
        ),
        const SizedBox(width: 20,),
        Expanded(
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Color(kLightBlue.value),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.google  , size: 40,color: Colors.white,)),
          ),
        ),
        const SizedBox(width: 50,),
      ],
    );
  }
}