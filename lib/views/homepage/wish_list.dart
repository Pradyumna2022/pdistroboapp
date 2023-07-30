import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/widgets/counterWidget.dart';

import '../../models/imagesmode.dart';
import '../../widgets/app_bar_widget.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {


  List<WishList> wishlist = [
    WishList(
        image: 'assets/images/seedbeez.png',
        name: "David Buffalo Style RanchSunflower Seeds",
        price: 24.99,
        selectedIcon: false,
        counter: CounterIncDec()
    ),
    WishList(
        image: 'assets/images/candyim2.png',
        name: "Trolli, Squiggles , Gummy Candy (5 Ounce, 12 Count)",
        price: 24.49,
        selectedIcon: false,
        counter: CounterIncDec()
    ),
    WishList(
        image: 'assets/images/candyim3.png',
        name: "Chex Mix Spicy Dill 4.25 Oz, 8 ct",
        price: 28.49,
        selectedIcon: false,
        counter: CounterIncDec()
    ),
    WishList(
        image: 'assets/images/candyim4.png',
        name: "Chex Mix Spicy Dill 4.25 Oz, 8 ct",
        price: 32.49,
        selectedIcon: false,
        counter: CounterIncDec()
    ),
    WishList(
        image: 'assets/images/candyim5.png',
        name: "Trident Sugar Free Gum Spearmint, 12/PK",
        price: 20.49,
        selectedIcon: false,
        counter: CounterIncDec()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: AppBarWidget(
                    img: 'assets/images/notification.png',
                    title: 'WishList',),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView.builder(
                      itemCount: wishlist.length,
                      itemBuilder: (context,index){
                        return
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 5),
                            child: Container(
                              padding:EdgeInsets.only(left:10),
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
                                          height: 130,
                                          width: 100,
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(wishlist[index].image.toString()),
                                          )
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Container(
                                                width:Get.width-221,
                                                child: Text(wishlist[index].name.toString(),
                                                  softWrap: true,
                                                  style: TextStyle(
                                                    //overflow: TextOverflow.ellipsis,
                                                    fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Gilroy-sb'
                                                ),),
                                              ),
                                              (wishlist[index].selectedIcon ?? false) == false ?
                                              IconButton(onPressed: (){
                                                setState(() {
                                                  wishlist[index].selectedIcon = ! (wishlist[index].selectedIcon ?? false) ;
                                                });
                                              }, icon: Image.asset('assets/images/favor.png')):
                                              IconButton(onPressed: (){
                                                setState(() {
                                                  wishlist[index].selectedIcon  = !  (wishlist[index].selectedIcon ?? false) ;
                                                });
                                              }, icon: Image.asset('assets/images/favorred.png'))
                                            ],
                                          ),
                                          SizedBox(height: 1,),
                                          Text(wishlist[index].price.toString(),style: TextStyle(
                                              fontSize: 23,color: Colors.red,fontWeight: FontWeight.bold,fontFamily: 'Gilroy-sb'
                                          ),),
                                          SizedBox(height: 6,),
                                          CounterIncDec()
                                        ],
                                      ),

                                    ],
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
        ));
  }
}