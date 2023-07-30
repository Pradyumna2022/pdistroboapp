import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdistroboapp/views/homepage/notification.dart';
import 'package:pdistroboapp/views/homepage/profile.dart';
import 'package:pdistroboapp/views/homepage/scan_page.dart';
import 'package:pdistroboapp/views/homepage/wish_list.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
// import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

import 'candy_snacks.dart';
import 'drawer_class.dart';
import 'my_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex =0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    List _widgetOptions = [
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/location.png',scale: 0.7,),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,fontFamily: 'Gilroy-m'
                            ),
                          ),
                          Text(
                            "6391 Elgin St. Celina, Delaware 10299",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Gilroy-rg',
                                fontSize: 10,
                                color: Colors.grey[600]),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                          onTap: (){
                            Get.to(NotificationPage());
                          },
                          child: Image.asset('assets/images/notification.png',scale: 0.9,)),
                      SizedBox(
                        width: 7,
                      ),
                      InkWell(
                          onTap: (){
                            Get.to(MyCart());
                          },
                          child: Image.asset('assets/images/cart2.png',scale: 1,)),
                      SizedBox(
                        width: 7,
                      ),
                      Builder(
                          builder: (context) {
                            return InkWell(
                                onTap: ()=> Scaffold.of(context).openEndDrawer(),
                                child: Image.asset('assets/images/menu.png',scale: 1,));
                          }
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: Get.width*0.744,
                        decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(12)),
                        child:
                        TextField(
                          decoration: InputDecoration(

                            //zzz************************* for scanning working sotp **************************
                            suffixIcon: Container(
                              height: 20,
                              width: 20,
                              child : GestureDetector(
                                  onTap: (){
                                    Get.to(ScanPage());
                                  },
                                  child: Image.asset('assets/images/scano.png'))
                            ),
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
                      SizedBox(
                        width: Get.width*0.024,
                      ),
                     Container(
                       height: Get.height*0.07,
                       width: Get.width*0.12,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('assets/images/filterlogo.png')

                         )
                       ),

                     )
                      // Image.asset("assets/images/filterlogo.png",scale: 1.05,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 150,
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset('assets/images/banner-1.png',width: 300,fit: BoxFit.contain,),
                );
              }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shop By Category",style: TextStyle(
                          fontFamily: 'Gilroy',
                          color: Color(0xff181725),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),),
                      Text("See All",style: TextStyle(color: Colors.red,
                        fontSize: 14,fontWeight: FontWeight.bold, fontFamily: 'Gilroy-rg',
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(CandyandSancks());
                            },
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 10,),
                                Container(
                                  width: Get.width*0.22,
                                  height: Get.height*0.16,
                                  child: Column(
                                    children: [
                                      Stack(
                                          children:[
                                            Image.asset('assets/images/bgcandy.png'),
                                            Positioned(
                                                top: 13,left: 15,
                                                child: Image.asset('assets/images/upbgcandy.png'))
                                          ]
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text("Candy &\nSnacks",textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Gilroy-m',fontSize: 10
                                          ),),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width*0.22,
                                  height: Get.height*0.16,
                                  child: Column(
                                    children: [
                                      Stack(
                                          children:[
                                            Image.asset('assets/images/bgbita.png'),
                                            Positioned(
                                                top: 13,left: 15,
                                                child: Image.asset('assets/images/upbgbita.png'))
                                          ]

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0,top: 4,),
                                        child: Text("Vitamins &\nEnergy\nBoosters",textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'Gilroy-m',fontSize: 10
                                          ),),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width*0.22,
                                  height: Get.height*0.16,
                                  child: Column(
                                    children: [
                                      Stack(
                                          children:[
                                            Image.asset('assets/images/bghealth.png'),
                                            Positioned(
                                                top: 13,left: 15,
                                                child: Image.asset('assets/images/upbghealth.png'))
                                          ]

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:7 ),
                                        child: Text("Personal &\nHealth Care",
                                          style: TextStyle(
                                              fontFamily: 'Gilroy-m',fontSize: 10
                                          ),textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: Get.width*0.20,
                                  height: Get.height*0.16,
                                  child: Column(
                                    children: [
                                      Stack(
                                          children:[
                                            Image.asset('assets/images/supplies.png'),
                                            Positioned(
                                                top: 13,left: 15,
                                                child: Image.asset('assets/images/homegoods.png'))
                                          ]
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 7),
                                        child: Text("Home Goods\n&Supplies",
                                          style: TextStyle(
                                              fontFamily: 'Gilroy-m',fontSize: 10,
                                          ),textAlign: TextAlign.center,),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height:90,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/xcc.png',fit: BoxFit.contain,
                          // Set the desired width for the image
                        ),
                      ),
                      Container(
                        height:180,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/ctg2.png',fit: BoxFit.contain,
                          // Set the desired width for the image
                        ),
                      ),
                      Container(
                        height:170,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/ctg3.png',fit: BoxFit.contain,
                          // Set the desired width for the image
                        ),
                      ),
                      Container(
                        height:170,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/ctg4.png',fit: BoxFit.contain,
                          // Set the desired width for the image
                        ),
                      ),
                      Container(
                        height:170,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/ctg5.png',fit: BoxFit.contain,
                          // Set the desired width for the image
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      CandyandSancks(),
      Wishlist(),
      MyCart(),
      ProfilePage()
    ];
    return SafeArea(
      child: Scaffold(
        endDrawer: DrawerClass(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(


                icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Image.asset('assets/images/homeicon.png',
                color: _selectedIndex == 0 ? Colors.green : Colors.grey,),
            ),label: 'Home'),
            BottomNavigationBarItem(icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Image.asset('assets/images/ctgicon.png',
                color: _selectedIndex == 1 ? Colors.green : Colors.grey,),
            ),label: 'category'),
            BottomNavigationBarItem(icon: Padding(
              padding: EdgeInsets.only(bottom: 3.0),
              child: Icon(Icons.favorite_outlined,size: 27,
                color: _selectedIndex == 2 ? Colors.green : Colors.grey,),
            ),label: 'Wishlist'),
            BottomNavigationBarItem(icon: Padding(
              padding: EdgeInsets.only(bottom: 3.0),
              child: Image.asset('assets/images/cart3.png',
                color: _selectedIndex == 3 ? Colors.green : Colors.grey,),
            ),label: 'cart'),
            BottomNavigationBarItem(icon: Padding(
              padding: EdgeInsets.only(bottom: 3.0),
              child: Image.asset('assets/images/profu.png',
                color: _selectedIndex == 4 ? Colors.green : Colors.grey,),
            ),label: 'Profile')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,

          selectedFontSize: 12,
          onTap: _onItemTapped,
        ),
        body:  _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
