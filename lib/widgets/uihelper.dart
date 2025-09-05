import 'package:flutter/material.dart';

class UiHelper {
  static customButton({
    required VoidCallback callback,
    required String buttonText,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            )
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
  static customText({
    required String text,
    required double height,
    Color? color,
     FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
       color:color??const Color(0XFF5E5E5E),
        fontWeight: fontWeight,
      ),
    );
  }
  static customContainer(TextEditingController controller){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xA0D9D9D9),

      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
