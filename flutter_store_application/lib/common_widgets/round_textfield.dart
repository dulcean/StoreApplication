
import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  

  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  
  const RoundTextfield({
    super.key,
    required this.hintText, 
    this.controller, 
    this.keyboardType,
    this.obscureText = false
    });

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(color: TColor.textbox, borderRadius: BorderRadius.circular(25)),
                  child: TextField (
                    autocorrect: false, 
                    obscureText: obscureText,
                    controller: controller, 
                    keyboardType: keyboardType,
                     decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20,),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ),
                );
  }
}