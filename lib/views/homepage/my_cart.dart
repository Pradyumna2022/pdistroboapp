import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:input_quantity/input_quantity.dart';

import '../../controller/counter.dart';
import '../../models/imagesmode.dart';
import '../../widgets/app_bar_widget.dart';
import '../../widgets/counterWidget.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  void itemdeleted(int index){
    setState(() {
      itemdata.removeAt(index);
    });
  }


  var itemdata = candysnack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12,left: 10,right: 10),
                child: AppBarWidget(
                  img: 'assets/images/notification.png',
                  title: 'My Cart',),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height*0.07,
                      decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 17),
                          prefixIcon: Image.asset('assets/images/search.png',scale: 0.9,),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              fontFamily: 'Gilroy-rg',
                              fontSize: 14
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Cart",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,
                            fontFamily: 'Gilroy'
                        ),),
                        Text("Total Rs 100",style: TextStyle(
                            color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16,  fontFamily: 'Gilroy-sb'
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Expanded(
                child: ListView.builder(
                    itemCount: itemdata.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0,left: 22.0,right: 22),
                        child: Container(
                          padding:EdgeInsets.symmetric(horizontal:10),
                          height: 155,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border:Border.all(
                                color: Colors.grey,width: 0.5
                            ),
                          ),

                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(23)
                                      ),
                                      height: 135,
                                      width: 100,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(itemdata[index].image.toString()),
                                      )
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Container(
                                              width:Get.width-223,
                                              child: Text(itemdata[index].name.toString(),
                                                softWrap: true,
                                                style: TextStyle(
                                                  //overflow: TextOverflow.ellipsis,
                                                    fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Gilroy-sb'
                                                ),),
                                            ),
                                            (itemdata[index].selectedIcon ?? false) == false ?
                                            IconButton(onPressed: (){
                                              setState(() {
                                                itemdata[index].selectedIcon = !  (itemdata[index].selectedIcon ?? false) ;
                                                itemdeleted(index);
                                              });
                                            }, icon:Image.asset('assets/images/dele.png',scale: 0.8,)):
                                            IconButton(onPressed: (){
                                              setState(() {
                                                itemdata[index].selectedIcon  = !  (itemdata[index].selectedIcon ?? false);
                                              });
                                            }, icon: SizedBox())
                                          ],
                                        ),
                                        SizedBox(height: 1,),
                                        Text(itemdata[index].price.toString(),style: TextStyle(
                                            fontSize: 23,color: Colors.red,fontWeight: FontWeight.bold,fontFamily: 'Gilroy-sb'
                                        ),),
                                        SizedBox(height: 6,),
                                        CounterIncDec()
                                      ],
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              InkWell(
                onTap: (){
                  
                },
                child: Container(
                  margin: EdgeInsets.zero,
                  height: Get.height*0.08,
                  width: double.infinity,
                  color: Color(0xff53B175),
                  child: Center(
                    child: Text("Proceed \$97.26",style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Gilroy',color: Colors.white
                    ),),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}