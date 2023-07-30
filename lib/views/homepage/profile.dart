import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/auth/loginscreen.dart';
import '../../widgets/app_bar_widget.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String currentName = "John Due";
  String currentNumber = "+91 7788448855";
  String currentEmail = "userdemo@gmail.com";
  String currentPassword = "Edens@#123";
  String currentAddress = "6391 Elgin St. Celina, Delaware 10299";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.only(top: 12),
                child: AppBarWidget(
                  img: 'assets/images/notification.png',
                  title: 'Profile',),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/profilelogo.png"),
                            radius: 35,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("John Due",style: TextStyle(
                                  fontSize: 18,color: Colors.black,fontFamily: "Gilroy",fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 7,),
                              Row(
                                children: [
                                  Image.asset('assets/images/location.png',scale: 1.5,),
                                  SizedBox(width: 5,),
                                  Text("6391 Elgin St. Celina, Delaware 10299",style: TextStyle(
                                    fontSize: 12,color: Colors.grey[600],fontFamily: "Gilroy-rg",
                                  ),),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:
                        Column(
                          children: [
                            InkWell(
                              onTap:(){
                                _showEditDialog(context, currentName);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 18.0),
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.green[100],
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Image.asset('assets/images/person.png',scale: 0.8,)
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Edit Profile",style: TextStyle(
                                                fontSize: 12,color: Colors.black,fontFamily: 'Gilroy-sb'
                                            ),),
                                            SizedBox(height: 4,),
                                            Text(currentName,style: TextStyle(
                                                fontSize: 12,color: Colors.grey[600],fontFamily: 'Gilroy-rg'
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                _showEditDialog(context,currentNumber);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.green[100],
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Image.asset('assets/images/phone.png',scale: 0.8,)),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Phone Number",style: TextStyle(
                                                fontSize: 12,color: Colors.black,fontFamily: 'Gilroy-sb'
                                            ),),
                                            SizedBox(height: 4,),
                                            Text(currentNumber,style: TextStyle(
                                                fontSize: 12,color: Colors.grey[600],fontFamily: 'Gilroy-rg'
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                _showEditDialog(context,currentEmail);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.green[100],
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Image.asset('assets/images/mail.png',scale: 0.8,)),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Email Id",style: TextStyle(
                                                fontSize: 12,color: Colors.black,fontFamily: 'Gilroy-sb'
                                            ),),
                                            SizedBox(height: 4,),
                                            Text("John23Due@gmail.com",style: TextStyle(
                                                fontSize: 12,color: Colors.grey[600],fontFamily: 'Gilroy-rg'
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                _showEditDialog(context,currentPassword);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.green[100],
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Image.asset('assets/images/lock.png',scale: 0.8,)),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Password",style: TextStyle(
                                                fontSize: 12,color: Colors.black,fontFamily: 'Gilroy-sb'
                                            ),),
                                            SizedBox(height: 4,),
                                            Text("Change Password",style: TextStyle(
                                                fontSize: 12,color: Colors.grey[600],fontFamily: 'Gilroy-rg'
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                _showEditDialog(context,currentAddress);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.green[100],
                                                borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Image.asset('assets/images/livelocate.png',scale: 0.8,)),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Address",style: TextStyle(
                                                fontSize: 12,color: Colors.black,fontFamily: 'Gilroy-sb'
                                            ),),
                                            SizedBox(height: 4,),
                                            Text("6391 Elgin St. Celina, Delaware 10299",style: TextStyle(
                                                fontSize: 12,color: Colors.grey[600],fontFamily: 'Gilroy-rg'
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.grey[600],)
                                ],
                              ),
                            ),
                            SizedBox(height: 50,),
                            SizedBox(
                              width: 200,
                              height: 53,
                              child: ElevatedButton(onPressed: (){
                                Get.to(LoginScreen());
                              }, child: Text("Logout"),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13)
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showEditDialog(BuildContext context, String AllControl) {
    String newName = currentName;
    String newNumber = currentNumber;
    String newEmail = currentEmail;
    String newPassword = currentPassword;
    String newAddress = currentAddress;
    String hintText;
    if (AllControl == currentName) {
      hintText = "Enter new name";
    } else if (AllControl == currentNumber) {
      hintText = "Enter new phone number";
    } else if (AllControl == currentEmail) {
      hintText = "Enter new email";
    } else if (AllControl == currentPassword) {
      hintText = "Enter new password";
    } else if (AllControl == currentAddress) {
      hintText = "Enter new address";
    } else {
      hintText = "Enter new data";
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Details"),
          content: TextField(
            onChanged: (value){
              if(AllControl == currentName){
               setState(() {
                  newNumber= value;
               });
              }else if(AllControl == currentNumber){
                setState(() {
                  newNumber = value;
                });
              }else if(AllControl == currentEmail){
                setState(() {
                  newEmail = value;
                });
              }else if(AllControl == currentPassword){
                setState(() {
                  newPassword = value;
                });
              }else if(AllControl == currentAddress){
                setState(() {
                  newAddress = value;
                });
              }
            },
            decoration: InputDecoration(
              hintText: hintText
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (AllControl == currentName) {
                    currentName = newName;
                  } else if (AllControl == currentNumber) {
                    currentNumber = newNumber;
                  } else if (AllControl == currentEmail) {
                    currentEmail = newEmail;
                  } else if (AllControl == currentPassword) {
                    currentPassword = newPassword;
                  } else if (AllControl == currentAddress) {
                    currentAddress = newAddress;
                  } else {
                    // You can add more conditions for other data identifiers
                  }
                });
                setState(() {

                });
                Get.back();
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }
}
