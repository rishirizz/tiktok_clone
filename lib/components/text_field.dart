import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/color_cnstants.dart';

class TextinputField extends StatelessWidget {
  final IconData prefixWidget;
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixWidget;
  final bool isObscured;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  const TextinputField({
    required this.prefixWidget,
    required this.hintText,
    required this.textInputType,
    required this.suffixWidget,
    required this.isObscured,
    required this.textEditingController,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: TextField(
        controller: textEditingController,
        obscureText: isObscured,
        keyboardType: textInputType,
        decoration: InputDecoration(
          suffixIcon: suffixWidget,
          prefixIcon: Icon(prefixWidget),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: borderColor,
            ),
          ),
        ),
        // validator: validator,
      ),
    );
  }
}
