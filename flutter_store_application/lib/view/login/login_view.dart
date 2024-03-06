import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:flutter_store_application/common_widgets/round_icon_button.dart';
import 'package:flutter_store_application/common_widgets/round_textfield.dart';
import 'package:flutter_store_application/view/login/reset_password_view.dart';
import 'package:flutter_store_application/view/login/sign_up_view.dart';

class LoginView extends StatefulWidget {
  const LoginView ({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
                "Login",
                style: TextStyle(color: TColor.primaryText,
                 fontSize: 30 ,
                 fontWeight: FontWeight.w800
                 ),
                ),
          
              /*RichText(
               text: TextSpan(
              style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              ),
                children: const [
                  TextSpan(
                  text: "More than ",
                ),
                  TextSpan(
                  text: "1,000",
                  style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                ),
                ),
              TextSpan(
               text: " recipes from around the world",
              ),
            ],
           ),
          ),*/

          
                const SizedBox(height: 25,),

                RoundTextfield(
                  hintText: "Your Email",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
          
                const SizedBox(height: 20,),

                RoundTextfield(
                  hintText: "Password",
                  controller: txtPassword,
                  obscureText: true,
                ),
                const SizedBox(height: 25,),
                RoundButton(title: "Login", onPressed: () {}),

                const SizedBox(height: 5,),

                TextButton(onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPasswordView(),
                    ),
                  );
                }, child: Text(
                "Forgot your password?",
                style: TextStyle(color: TColor.secondaryText,
                 fontSize: 14 ,
                 fontWeight: FontWeight.w500
                 ),
                ),
                ),

                const SizedBox(height: 20,),

                Text(
                "or Login with",
                style: TextStyle(color: TColor.secondaryText,
                 fontSize: 14 ,
                 fontWeight: FontWeight.w500
                 ),
                ),

              const SizedBox(height: 20,),

                RoundIconButton(
                  title: "Login with VK",
                  icon: "assets/img/vk_logo.png",
                  color: const Color(0xff367Fc0),
                  onPressed: (){ }
                ),

              const SizedBox(height: 20,),

                RoundIconButton(
                  title: "Login with Google",
                  icon: "assets/img/google_logo.png",
                  color: const Color.fromARGB(255, 192, 54, 54),
                  onPressed: (){ }
                ),
               
              const SizedBox(height: 30,),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                    ),
                );

              },
               child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "Sign Up!",
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
