import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/imagesmode.dart';
//le last
class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  final candyandsnacks  = candysnack;
  bool starIcon = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 24,)),
                  Text("My Order",style: TextStyle(
                      fontWeight: FontWeight.bold,fontFamily: 'Gilroy-sb',
                      fontSize: 18
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Image.asset('assets/images/notification.png',scale: 0.9,),
                  )

                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context,index){
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal:10,vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.white,
                            border: Border.all(
                                width: 0.5,color: Colors.grey
                            )
                        ),
                        alignment: Alignment.topCenter,
                        height: 280,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      alignment:Alignment.topLeft,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius: BorderRadius.circular(23)
                                      ),
                                      height: 95,
                                      width: 85,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Image.asset('assets/images/seedbeez.png'),
                                      )
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("David Buffalo Style Ranch\nSunflower Seeds.",style: TextStyle(
                                            fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold,fontFamily:'Gilroy-sb'
                                        ),),
                                        SizedBox(height: 7),
                                        Text("Items 3",style: TextStyle(fontFamily:'Gilroy-rg',fontSize: 12))
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Order Id",style: TextStyle(fontFamily:'Gilroy-rg',fontSize: 12)),
                                        Text("##0DF2589",style: TextStyle(fontFamily:'Gilroy-m',fontSize: 12))
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total Product",style: TextStyle(fontFamily:'Gilroy-rg',fontSize: 12)),
                                        Text("\$74.97",style: TextStyle(fontFamily:'Gilroy-m',fontSize: 12))
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Status",style: TextStyle(fontFamily:'Gilroy-rg',fontSize: 12)),
                                        Text("Finished",style: TextStyle(fontFamily:'Gilroy-m',fontSize: 12,color: Colors.green))
                                      ],
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Rating",style: TextStyle(fontFamily:'Gilroy-rg',fontSize: 12)),
                                            RatingBarIndicator(
                                              direction:Axis.horizontal,
                                              rating: 2.75,
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              itemCount: 5,
                                              itemSize: 20.0,

                                            ),                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 90,
                                          child: ElevatedButton(onPressed: (){
                                          }, child: Center(child:
                                          Text("Re Order",style: TextStyle(
                                            fontFamily: 'Gilroy-sb', fontSize: 10,fontWeight: FontWeight.bold
                                          ),),),
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(8)
                                                )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}