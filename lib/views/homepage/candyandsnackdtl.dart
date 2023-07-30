import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/models/imagesmode.dart';
import 'package:pdistroboapp/widgets/counterWidget.dart';

class CandyandSnackDtl extends StatefulWidget {

  final WishList item;
  const CandyandSnackDtl({required this.item  , super.key});

  @override
  State<CandyandSnackDtl> createState() => _CandyandSnackDtlState();
}

class _CandyandSnackDtlState extends State<CandyandSnackDtl> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(23),
                          bottomRight: Radius.circular(23))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){
                              Get.back();
                            }, icon: Icon(Icons.arrow_back_ios_new_sharp,size: 25,)),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Image.asset('assets/images/notification.png',scale: 0.9,),
                            )
                          ],
                        ),
                        Container(
                          height:300,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                            ),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: Image.asset(widget.item.image.toString(),scale: 0.5,),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.item.name.toString(),style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 22,fontFamily: 'Gilroy'
                      ),softWrap: true,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Categories:",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: 15,fontFamily: 'Gilroy-sb',color: Colors.grey
                          ),),
                          SizedBox(width: 20,),
                          Text("Candy and Snacks",style: TextStyle(
                              fontWeight: FontWeight.w500,fontSize: 15,color: Colors.red,fontFamily: 'Gilroy-sb'
                          ),),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text(widget.item.price.toString(),style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red,fontFamily: 'Gilroy-sb'
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CounterIncDec(),
                          SizedBox(width: 30,),
                          SizedBox(
                            height: 50,
                            width: 170,
                            child: ElevatedButton(onPressed: (){
                            }, child: Text("Add To Cart"),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13)
                                  )
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

        )
    );
  }
}