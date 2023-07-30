import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'otp_verification.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Reset Password",
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
                        "Please enter your email address to request \na password reset",
                        style: TextStyle(
                            color: Color(0xff7c7c7c),
                            fontSize: 16,
                            fontFamily: 'Gilroy-m',
                            fontWeight: FontWeight.w600),
                      )
                  ),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: 'Gilroy-sb',
                            color: Color(0xff181725),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Form(
                    key: _formkey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please Enter Email";
                        }
                        else if(!value.endsWith("@gmail.com")){
                          return "Please Enter Valid Gmail";
                        }
                        else if(!value.contains(RegExp(r'[0-9]'))){
                          return "Please Enter a Number in Mail";
                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                              fontFamily: 'Gilroy-rg', fontSize: 16)),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(
                  child: SizedBox(
                    height: Get.height*0.078,
                    width: Get.width*0.65,
                    child: ElevatedButton(onPressed: (){
                      if (_formkey.currentState!.validate()) {
                        Get.to(OtpVerification());
                      }
                    }, child: Text("Send",
                      style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff53B175),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)
                      )
                      ),),
                  ),
                ),
              ],),
          ),
        ),
      ),
    );
  }
}
