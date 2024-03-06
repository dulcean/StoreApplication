import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:flutter_store_application/common_widgets/round_textfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView ({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              const SizedBox(height: 64,),
          
              Text(
                "Reset Password",
                style: TextStyle(color: TColor.primaryText,
                 fontSize: 30 ,
                 fontWeight: FontWeight.w800
                 ),
                ),
          
              const SizedBox(height: 10,),
              RichText(
               text: TextSpan(
              style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              ),
                children: const [
                  TextSpan(
                  text: "Please enter ",
                ),
                  TextSpan(
                  text: "new Password ",
                  style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                 ),
                ),
                
            ],
           ),
          ),

          
                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText: "Enter new password",
                  controller: txtPassword,
                  obscureText: true,
                ),

                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText: "Confirm new password",
                  controller: txtConfirmPassword,
                  obscureText: true,
                ),

                const SizedBox(height: 25,),
                RoundButton(title: "Confirm new Password", onPressed: () {}),

                

                const SizedBox(height: 25,),

              ],
           ),
        ),
      ),
    );
  }
}
