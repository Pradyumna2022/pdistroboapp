import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/auth/loginscreen.dart';
import 'package:pdistroboapp/views/auth/reset_password.dart';
import 'package:pdistroboapp/views/homepage/about_us.dart';
import 'package:pdistroboapp/views/homepage/contact_us.dart';
import 'package:pdistroboapp/views/homepage/home_page.dart';
import 'package:pdistroboapp/views/homepage/my_order.dart';
import 'package:pdistroboapp/views/homepage/wish_list.dart';

import 'new_arrivals.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({super.key});

  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SingleChildScrollView(
        child: Container(
          height: Get.height * 1.23,
          width: Get.width * 0.62,
          color: Colors.white,
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Center(
                child: Container(
                  height: Get.height * 0.29,
                  width: double.infinity,
                  color: Colors.green,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => Get.back(),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 9.0, right: 10),
                              child: Image.asset(
                                'assets/images/closebutton.png',
                                scale: 2.5,
                              ),
                            )),
                      ),
                      Image.asset(
                        'assets/images/profilelogo.png',
                        scale: 0.9,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "John Due",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Gilory'),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "6391 Elgin St. Celina,\n Delaware 10299",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[200],
                            fontFamily: "Gilroy-rg"),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to(HomePage());
                  },
                  icon: Image.asset(
                    'assets/images/homeu.png',
                    scale: 1.8,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(HomePage()),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to(AboutPage());
                  },
                  icon: Image.asset(
                    'assets/images/abot.png',
                    scale: 1.8,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(AboutPage()),
                    child: Text(
                      "About Us",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to(NewArrivals());
                  },
                  icon: Image.asset(
                    'assets/images/arrivals.png',
                    scale: 1.8,
                  ),
                ),
                title: InkWell(
                  onTap: () {
                    Get.to(NewArrivals());
                  },
                  child: Text(
                    "New Arrival",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Gilroy-mg"),
                  ),
                ),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                    onPressed: () {
                      Get.to((ResetPassword()));
                    },
                    icon: Icon(
                      Icons.lock,
                      color: Colors.red,
                    )),
                title: InkWell(
                    onTap: () => Get.to(ResetPassword()),
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to((MyOrder()));
                  },
                  icon: Image.asset(
                    'assets/images/myorder.png',
                    scale: 1.8,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(MyOrder()),
                    child: Text(
                      "My Order",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to((Wishlist()));
                  },
                  icon: Icon(
                    Icons.favorite_outlined,
                    color: Colors.red,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(Wishlist()),
                    child: Text(
                      "My Wishlist",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to((ContactUs()));
                  },
                  icon: Image.asset(
                    'assets/images/contactu.png',
                    scale: 0.7,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(ContactUs()),
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to((()));
                  },
                  icon: Image.asset(
                    'assets/images/luko.png',
                    scale: 0.6,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(()),
                    child: Text(
                      "Our Location",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              ListTile(
                horizontalTitleGap:0,
                dense: true,
                leading: IconButton(
                  onPressed: () {
                    Get.to((()));
                  },
                  icon: Image.asset(
                    'assets/images/services.png',
                    scale: 0.53,
                  ),
                ),
                title: InkWell(
                    onTap: () => Get.to(()),
                    child: Text(
                      "Our Services",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gilroy-mg"),
                    )),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: SizedBox(
                  width: Get.width * 0.5,
                  height: Get.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                  ),
                ),
              )
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
