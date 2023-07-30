import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/auth/reset_password.dart';
import 'package:pdistroboapp/views/auth/signin_screen.dart';

import '../../constant/constant.dart';
import '../homepage/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();

  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset("assets/images/sign3.png"),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login",
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
                        "Enter your emails and password",
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
                    key: _formkey,
                    child: Column(
                      children: [
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
                          child:
                          TextFormField(
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
                        SizedBox(
                          height: 40,
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
                              hintText: "Enter your Password",
                              hintStyle: TextStyle(
                                  fontFamily: 'Gilroy-rg', fontSize: 16),
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
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                  onTap: () => Get.to(ResetPassword()),
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Color(0xff53B175),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ))),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: Get.height * 0.078,
                  width: Get.width * 0.65,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Get.to(HomePage());
                      }
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Don't have an acoount?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  WidgetSpan(
                      child: SizedBox(
                    width: 5,
                  )),
                  TextSpan(
                    text: "SignUp",
                    style: TextStyle(color: Color(0xff53B175), fontSize: 16),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => (Get.to(SigninScreen())),
                  )
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
