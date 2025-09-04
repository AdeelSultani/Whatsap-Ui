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
}
