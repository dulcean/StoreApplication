import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:flutter_store_application/common_widgets/round_textfield.dart';
import 'package:flutter_store_application/view/login/login_view.dart';
import 'package:flutter_store_application/view/login/otp_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView ({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  

  @override
  Widget build (BuildContext context) {
    //var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              const SizedBox(height: 64,),
          
              Text(
                "Sign Up",
                style: TextStyle(color: TColor.primaryText,
                 fontSize: 30 ,
                 fontWeight: FontWeight.w800
                 ),
                ),
          
              RichText(
               text: TextSpan(
              style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              ),
                children: const [
                  TextSpan(
                  text: "Create new account ",
                ),
                  TextSpan(
                  text: "to continue",
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
                  hintText: "Enter Name",
                  controller: txtName,
                ),
          
                const SizedBox(height: 20,),

                RoundTextfield(
                  hintText: "Enter Email",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 20,),

                RoundTextfield(
                  hintText: "Enter Mobile",
                  controller: txtMobile,
                  keyboardType: TextInputType.phone,
                ),
          
                const SizedBox(height: 20,),

                RoundTextfield(
                  hintText: "Enter Password",
                  controller: txtPassword,
                  obscureText: true,
                ),
          
                const SizedBox(height: 20,),

                RoundTextfield(
                  hintText: "Confirm Password",
                  controller: txtConfirmPassword,
                  obscureText: true,
                ),
          
                const SizedBox(height: 20,),


                const SizedBox(height: 25,),
                RoundButton(title: "Sign Up", onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OTPView()), 
                    );
                }),

                const SizedBox(height: 5,),

                

                const SizedBox(height: 20,),

                
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                    ),
                );
              },
               child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "Login!",
                    style: TextStyle(
                      color: TColor.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700, 
                    ),
                  )
                ],
               )
              ),
            ],
           ),
        ),
      ),
    );
  }
}
