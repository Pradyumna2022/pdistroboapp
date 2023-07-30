import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../homepage/home_page.dart';


class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  final validatekey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,color: Colors.green),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(50),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(50),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(

        color: Colors.white,
        borderRadius: BorderRadius.circular(50)
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              IconButton(onPressed: (){
                Get.back();
              }, icon: Icon(Icons.arrow_back_ios_new_sharp)),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please enter the four digit otp we sent to\nyour email.",
                      style: TextStyle(
                          color: Color(0xff7c7c7c),
                          fontSize: 16,
                          fontFamily: 'Gilroy-m',
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    )),
              ),
              SizedBox(height: 50,),
              // **********************  for pinput to generate opt verifications ***********************

              Center(
                child: Form(
                  key: validatekey,
                  child:
                  Pinput(
                    keyboardType: TextInputType.phone,
                    validator: (pin){
                      if(pin!.isEmpty){
                        return 'Enter OTP';
                      }
                      else if(pin.length<6){
                        return "Please Fill All Input";
                      }
                      else{
                        return null;
                      }

                    },
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                ),
              ),


              SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  height: Get.height*0.078,
                  width: Get.width*0.65,
                  child:
                  ElevatedButton(onPressed: (){
                   if( validatekey.currentState!.validate()){
                     Get.to(HomePage());
                     Get.snackbar('Login Successfully', 'Now Welcome HomePage',
                         backgroundColor: Color(0xff53B175),
                         colorText: Colors.white,
                         snackPosition: SnackPosition.BOTTOM,
                         margin: EdgeInsets.only(bottom: 30),
                         duration: Duration(seconds: 1));
                   }

                  },
                    child: Text("Verify", style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff53B175),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: "I don't received OTP!",style: TextStyle(color: Color(0xff030303),fontWeight: FontWeight.w400,fontSize: 14)),
                      TextSpan(text: " Resend again",style:TextStyle(color:Color(0xff53B175),fontSize: 14))
                    ]
                )),
              )
            ],),
          ),
        ),
      ),
    );
  }
}
