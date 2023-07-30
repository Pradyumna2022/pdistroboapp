import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/app_bar_widget.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                AppBarWidget(
                  img: 'assets/images/notification.png',
                  title: 'About Us',
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children:[
                        Image.asset('assets/images/aboutlogo.png',scale: 0.7,),
                        Positioned(
                          top: 64,left: 20,
                          child: Text("About",style: TextStyle(
                              fontFamily: 'Gilroy-m',fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold
                          ),),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Image.asset('assets/images/about.png',scale: 0.8,)),
                      ] ,),
                      SizedBox(height: 20,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",style: TextStyle(
                          fontSize: 12,fontFamily: 'Gilroy-rg',color: Colors.grey
                      ),textAlign: TextAlign.justify,),
                      SizedBox(height: 20,),
                      Text("What is Lorem Ipsum?",style: TextStyle(
                          fontSize: 16,fontFamily: 'Gilroy',
                      ),textAlign: TextAlign.justify,),
                      SizedBox(height: 20,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",style: TextStyle(
                          fontSize: 12,fontFamily: 'Gilroy-rg',color: Colors.grey
                      ),textAlign: TextAlign.justify,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",style: TextStyle(
                          fontSize: 12,fontFamily: 'Gilroy-rg',color: Colors.grey
                      ),textAlign: TextAlign.justify,),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.green[100],
                              ),
                              child: Icon(Icons.phone,color: Colors.green)),
                          SizedBox(width: 10,),
                          Text("+91 7655564575",style: TextStyle(
                              fontSize: 14,fontFamily: 'Gilroy-rg'
                          ),textAlign: TextAlign.justify,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.green[100],
                              ),
                              child: Icon(Icons.email,color: Colors.green,)),
                          SizedBox(width: 10,),
                          Text("pysdfn@421@gmail.com",style: TextStyle(
                              fontSize: 14,fontFamily: 'Gilroy-rg'
                          ),textAlign: TextAlign.justify,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.green[100],
                              ),
                              child: Icon(Icons.location_on_outlined,color: Colors.green,)),
                          SizedBox(width: 5,),
                          Text("Sandford RoadSandford, Wareham,Dorset",style: TextStyle(
                              fontSize: 14,fontFamily: 'Gilroy-rg'
                          ),textAlign: TextAlign.justify,softWrap: true,),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",style: TextStyle(
                          fontSize: 12,fontFamily: 'Gilroy-rg',color: Colors.grey
                      )),
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
}
