
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../models/imagesmode.dart';
import '../../widgets/counterWidget.dart';
import 'candyandsnackdtl.dart';

class NewArrivals extends StatefulWidget {

  const NewArrivals({super.key});

  @override
  State<NewArrivals> createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {

  final candyandsnacks  = candysnack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon:  Icon(Icons.arrow_back_ios_new_sharp)),
                    Text("New Arrivals",style: TextStyle(
                        fontSize: 23,fontFamily: 'Gilroy-m',fontWeight: FontWeight.bold
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Image.asset('assets/images/notification.png',scale: 0.8,),
                    )
                  ],
                ),
                SizedBox(height: 17,),
                GridView.builder(
                    itemCount: 4,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 385
                    ),
                    itemBuilder: (context,index){
                      return
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left:11,right: 11),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey,width: 0.5
                                    ),
                                    borderRadius: BorderRadius.circular(23)
                                ),

                                child: Column(
                                  children: [
                                    Stack(
                                        children:[
                                          Container(
                                              margin: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius: BorderRadius.circular(23)
                                              ),
                                              height: 180,
                                              width: double.infinity,
                                              child: Padding(
                                                  padding: const EdgeInsets.all(35.0),
                                                  child: Image.asset(candyandsnacks[index].image.toString())
                                              )
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child:
                                            (candyandsnacks[index].selectedIcon ?? false) ==false  ? IconButton(onPressed: (){
                                              setState(() {
                                                candyandsnacks[index].selectedIcon  = !(candyandsnacks[index].selectedIcon ?? false);
                                              });
                                            }, icon: Image.asset('assets/images/favor.png')):
                                            IconButton(onPressed: (){
                                              setState(() {
                                                candyandsnacks[index].selectedIcon = !(candyandsnacks[index].selectedIcon ?? false);
                                              });
                                            }, icon: Image.asset('assets/images/favorred.png'),
                                            ),)
                                        ]
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height:18,
                                            child: Center(
                                              child: Text(candyandsnacks[index].name.toString(),style: TextStyle(
                                                  fontFamily: "Gilroy-sb",fontSize: 14,fontWeight: FontWeight.bold
                                              ),softWrap: true,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,),
                                            ),
                                          ),
                                          SizedBox(height: 15,),
                                          CounterIncDec(),
                                          SizedBox(height: 15,),
                                          SizedBox(
                                            height: 55,
                                            width: 120,
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 12.0),
                                              child: ElevatedButton(onPressed: (){
                                                Get.to(CandyandSnackDtl(item:candyandsnacks[index]));
                                              }, child: Text("Add To Cart"),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.green[600],
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(13)
                                                    )
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        );
                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}