import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

import '../Login/login.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 10),
            UiHelper.customText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.customText(text: "Read out", height: 14),
                UiHelper.customText(text: "Privacy Policy.", height: 14,color: Color(0XFF0C42CC)),
                UiHelper.customText(text: " Tap “Agree and continue”  ", height: 14),

            ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.customText(text: "to accept the ", height: 14),
              UiHelper.customText(text: "Teams of Service. ", height: 14,color: Color(0XFF0C42CC)),

            ],)

          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
      }, buttonText: "Agree and continue"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
