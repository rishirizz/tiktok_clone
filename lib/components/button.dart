import 'package:flutter/material.dart';
import 'package:tiktok_clone/components/text_scale_factor.dart';

import '../constants/color_cnstants.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final FontWeight fontWeight;
  final double fontSize;
  final VoidCallback? onPressed;
  const Button({
    required this.buttonText,
    required this.fontWeight,
    required this.fontSize,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: Colors.white,
            ),
            textScaler: gettextScaler(context),
          ),
        ),
      ),
    );
  }
}
