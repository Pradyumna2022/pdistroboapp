import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/auth/loginscreen.dart';
import 'package:pdistroboapp/views/auth/otp_verification.dart';

import '../../constant/constant.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final formkey = GlobalKey<FormState>();
  bool passwordVisible = true;
  bool passwordVisiblen = true;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cpasswordController = TextEditingController();


  bool _isValidPhoneNumber(String value) {
    return RegExp(r'^\d{10}$').hasMatch(value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                    child:Image.asset("assets/images/sign3.png"),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color(0xff181725),
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
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
                        "Enter your credencials to continue",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            fontFamily: 'Gilroy-m'),
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontFamily: 'Gilroy-sb',
                                    color: Color(0xff181725),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Name';
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "Enter your name",
                                  hintStyle: TextStyle(
                                      fontFamily: 'Gilroy-rg', fontSize: 16)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Email';
                              }
                              else if(!value.endsWith('@gmail.com')){
                                return 'Please Enter Valid Email';
                              }
                            },
                            decoration: InputDecoration(
                                hintText: "Enter your Email",
                                hintStyle: TextStyle(fontFamily: 'Gilroy-rg')),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Phone Number",
                                style: TextStyle(
                                    fontFamily: 'Gilroy-sb',
                                    color: Color(0xff181725),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            inputFormatters:[ LengthLimitingTextInputFormatter(10)],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Phone Number";
                              } else if (!_isValidPhoneNumber(value)) {
                                return "Invalid phone number. Please use a valid phone number format.";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "Enter your Phone Number",
                                hintStyle: TextStyle(fontFamily: 'Gilroy-rg')),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontFamily: 'Gilroy-sb',
                                    color: Color(0xff181725),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value){
                              if (value == null || value.isEmpty) {
                                return "Please Enter Password";
                              } else if (value.length < 8) {
                                return "Password must be at least 8 characters long";
                              } else if (value.length > 32) {
                                return "Password cannot exceed 32 characters";
                              } else if (!value.contains(RegExp(r'[A-Z]'))) {
                                return "Password must contain at least one uppercase letter";
                              } else if (!value.contains(RegExp(r'[a-z]'))) {
                                return "Password must contain at least one lowercase letter";
                              } else if (!value.contains(RegExp(r'[0-9]'))) {
                                return "Password must contain at least one number";
                              } else if (!value.contains(RegExp(r'[!@#\$%^&*()_+=]'))) {
                                return "Password must contain at least one special character like !@#\$%^&*()_+=";
                              } else if (value.contains(RegExp(r'\s'))) {
                                return "Password cannot contain spaces";
                              } else if (value.contains("password")) {
                                return "Avoid using common words like 'password' in your password";
                              } else {
                                return null;
                              }
                            },
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisible = !passwordVisible;
                                      },
                                    );
                                  },
                                ),
                                hintText: "Enter your Password",
                                hintStyle: TextStyle(fontFamily: 'Gilroy-rg')),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Confirm Password",
                                style: TextStyle(
                                    fontFamily: 'Gilroy-sb',
                                    color: Color(0xff181725),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: _cpasswordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Confirm Password';
                              }
                              else if(value != _passwordController.text){
                                return 'Not Match Password';
                              }
                            },
                            obscureText: passwordVisiblen,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(passwordVisiblen ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(
                                      () {
                                        passwordVisiblen = !passwordVisiblen;
                                      },
                                    );
                                  },
                                ),
                                hintText: "Enter your Confirm Password",
                                hintStyle: TextStyle(fontFamily: 'Gilroy-rg')),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: Get.height * 0.078,
                  width: Get.width * 0.65,
                  child: ElevatedButton(
                    onPressed: () {
                      //Get.to((OtpVerification()));
                      if (formkey.currentState!.validate()) {
                        Get.snackbar('SignIn Successfully', 'Enter Your OTP',
                            backgroundColor: Color(0xff181725),
                            colorText: Colors.white,
                            snackPosition: SnackPosition.BOTTOM,
                            margin: EdgeInsets.only(bottom: 30),
                            duration: Duration(seconds: 1));
                        Get.to(OtpVerification());
                      }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Already have an acoount?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: "Login",
                    style: TextStyle(color: Color(0xff53B175), fontSize: 14),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(LoginScreen()),
                  )
                ])),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
