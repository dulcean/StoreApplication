import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:flutter_store_application/common_widgets/round_textfield.dart';
import 'package:flutter_store_application/view/login/new_password_view.dart';


class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView ({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
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
                  text: "your Email ",
                  style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                 ),
                ),
                TextSpan(
                  text: "to recieve a ",
                ),
                TextSpan(
                  text: "link ",
                  style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                 ),
                ),

                TextSpan(
                  text: "to create\n                      new password via Email",
                ),
            ],
           ),
          ),

          
                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText: "Enter Email",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),


                const SizedBox(height: 25,),
                RoundButton(title: "Send Link", onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPasswordView(),
                    ),
                  );
                }),

                

                const SizedBox(height: 20,),

                
            /*TextButton(
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
              ),*/
            ],
           ),
        ),
      ),
    );
  }
}
