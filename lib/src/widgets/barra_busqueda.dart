import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  
  const CustomTextBox({ Key? key, this.hint = "", this.prefix, this.suffix, this.controller}) : super(key: key);
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 3),
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFFe9e9e9),
          border: Border.all(color: const Color(0xFFe9e9e9)),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFF3E4249), fontSize: 15)),
        ),
      );
  }
}