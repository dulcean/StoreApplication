import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:flutter_store_application/view/login/login_view.dart';
import 'package:flutter_store_application/view/login/sign_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;


    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
          Image.asset(
            "assets/img/welcome_splash_bg.png",
            width: media.width,
          ),

          Image.asset(
            "assets/img/app_logo.png",
            width: media.width * 0.55,
            height: media.width * 0.55,
            fit: BoxFit.contain,
              ),
            ],
          ), 
      

          SizedBox(
            height: media.width * 0.05,
          ),

          Text(
                "Discover the best foods from over 100\ncuisines around the world!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
          ),

          SizedBox(
            height: media.width * 0.05,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(title: "Login", onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),),);

            },),
          ),

          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: RoundButton(
              title: "Register",
              type: RoundButtonType.textPrimary,
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const SignUpView(),),
                );
            },),
          ),

        ],
      ),
    );
  }
}