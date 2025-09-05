import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  String Phonenummber;
  TextEditingController otp1controller=TextEditingController();
  TextEditingController otp2controller=TextEditingController();
  TextEditingController otp3controller=TextEditingController();
  TextEditingController otp4controller=TextEditingController();
  TextEditingController otp5controller=TextEditingController();
  TextEditingController otp6controller=TextEditingController();

  OtpScreen({required this.Phonenummber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: "Verifying your number",
              height: 16,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.customText(
              text: "You’ve tried to register +92${Phonenummber}",
              height: 15,
              color: Color(0XFF5E5E5E),
            ),

            UiHelper.customText(
              text: "recently. Wait before requesting an sms or a call",
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.customText(
                text: " with your code.",
                height: 15,
              ),
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                    text: "  Wrong number?",
                    height: 15,
                    color: Color(0XFF00A884)
                  ),
                )

            ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(otp1controller),
            SizedBox(width:10),
                UiHelper.customContainer(otp2controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp3controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp4controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp5controller),
                SizedBox(width:10),
                UiHelper.customContainer(otp6controller),
                SizedBox(width:10),

              ],
            ),
            SizedBox(height: 30,),
            UiHelper.customText(text: "Didn’t receive code?", height: 15,color: Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(callback: (){

      }, buttonText: "Next",),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
