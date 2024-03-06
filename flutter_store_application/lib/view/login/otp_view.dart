import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/round_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPView extends StatefulWidget {
  const OTPView ({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  

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
                "We have sent an OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(color: TColor.primaryText,
                 fontSize: 30 ,
                 fontWeight: FontWeight.w800
                 ),
                ),
          
              const SizedBox(height: 15,),
              RichText(
                textAlign: TextAlign.center,
               text: TextSpan(
              style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              ),
                children: const [
                  TextSpan(
                  text: "Please check your mobile number ",
                ),
                  TextSpan(
                  text: "+375********xx ",
                  style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                 ),
                ),
                TextSpan(
                  text: "continue to reset password",
                ),
                
                

                
            ],
           ),
          ),

        
                const SizedBox(
                height: 60,
              ),

              SizedBox(height: 60, child: OtpPinField(
                    key: _otpPinFieldController,
                    autoFillEnable: true,
                    textInputAction: TextInputAction.done,
                    onSubmit: (text) {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    onChange: (text) {
                    },
                    onCodeChanged: (code) {
                      
                    },

                    fieldWidth: 40,
                    otpPinFieldStyle: OtpPinFieldStyle(
                        defaultFieldBorderColor: Colors.transparent,
                        activeFieldBorderColor: Colors.transparent,
                        defaultFieldBackgroundColor: TColor.textbox,
                        activeFieldBackgroundColor: TColor.textbox,
                        ),
                    maxLength: 4,
                   showCursor: true,
                   cursorColor: TColor.placeholder,
                    upperChild: const Column(
                      children: [
                        SizedBox(height: 30),
                        Icon(Icons.flutter_dash_outlined, size: 150),
                        SizedBox(height: 20),
                      ],
                    ),
                    showCustomKeyboard: false,
                    cursorWidth: 3,
                   mainAxisAlignment: MainAxisAlignment.center,
                    otpPinFieldDecoration:
                        OtpPinFieldDecoration.defaultPinBoxDecoration),),

              
              const SizedBox(
                height: 60,
              ),

                RoundButton(title: "Next", onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPasswordView(),
                    ),
                  );*/
                }),
                

                TextButton(
                  onPressed: (){


                  },
                  child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Didn't recieved? ",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    "Click Here!",
                    style: TextStyle(
                      color: TColor.primary,
                      fontSize: 15,
                      fontWeight: FontWeight.w700, 
                    ),
                  )
                ],
              ),
            ),

                

              const SizedBox(height: 20,),

                
            
            ],
           ),
        ),
      ),
    );
  }
}
