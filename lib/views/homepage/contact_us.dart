import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/widgets/app_bar_widget.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: AppBarWidget(
                    img: 'assets/images/notification.png',
                    title: 'Contact Us',),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          "Name",
                          style: TextStyle(fontFamily:'Gilroy-sb',color:Color(0xff181725),
                              fontSize: 21,fontWeight: FontWeight.w500)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter your name",hintStyle: TextStyle(
                        fontFamily: 'Gilroy-rg'
                    )),
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
                          style: TextStyle(fontFamily:'Gilroy-sb',color:Color(0xff181725),
                              fontSize: 21,fontWeight: FontWeight.w500)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter your Email",hintStyle: TextStyle(
                        fontFamily: 'Gilroy-rg'
                    )),
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
                          style: TextStyle(fontFamily:'Gilroy-sb',color:Color(0xff181725),
                              fontSize: 21,fontWeight: FontWeight.w500)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter your Phone Number",hintStyle: TextStyle(
                        fontFamily: 'Gilroy-rg'
                    )),
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
                        "Message",
                          style: TextStyle(fontFamily:'Gilroy-sb',color:Color(0xff181725),
                              fontSize: 21,fontWeight: FontWeight.w500)
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter your Message",hintStyle: TextStyle(
                        fontFamily: 'Gilroy-rg'
                    )),

                  ),
                ),
                SizedBox(height: 60,),
                SizedBox(
                  height: Get.height*0.078,
                  width: Get.width*0.65,
                  child: ElevatedButton(onPressed: (){
                    //Get.to((OtpVerification()));
                  }, child: Text("Send",
                    style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff53B175),shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)
                    )
                    ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
