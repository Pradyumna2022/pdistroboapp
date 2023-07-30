import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/homepage/notification.dart';

class AppBarWidget extends StatefulWidget {
  final String img;
  final String title;

  const AppBarWidget({super.key,required this.img, required this.title});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: (){
              Get.back();
            }, icon:  Icon(Icons.arrow_back_ios_new_sharp,size: 22,)),
        Text(widget.title,style: TextStyle(
            fontSize: 20,fontFamily: 'Gilroy-sb',fontWeight: FontWeight.bold
        ),),
        Padding(
          padding: const EdgeInsets.only(right: 11.0),
          child: InkWell(
              onTap: (){
                Get.to(NotificationPage());
              },
              child: Image.asset(widget.img,width: 37,)),
        )
      ],
    );
  }
}
