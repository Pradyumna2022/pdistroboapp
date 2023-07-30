import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;
  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        if(!result.isNull){
        final Uri _url = Uri.parse(result!.code.toString());
        launchUrl(_url);}
        else{
          print("null");
        }
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Scan Qr Code",style: TextStyle(
                fontFamily: 'Gilroy',fontWeight: FontWeight.bold,fontSize: 26,
              ),),
              SizedBox(height: 30,),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(43),bottomRight:Radius.circular(43),
                  topLeft:Radius.circular(43),topRight:Radius.circular(43),
                ),
                child: Container(
                  height: Get.height*0.42,
                  width: Get.width*0.75,
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("scanning will start automatically",style: TextStyle(
                fontFamily: 'Gilroy-m',fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey
              ),),
              SizedBox(height: 40,),
              SizedBox(
                height: Get.height*0.078,
                width: Get.width*0.65,
                child: ElevatedButton(
                  onPressed: (){
                    Get.back();
                  },
                  child: Text("Cancel", style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),),
              ),
              SizedBox(height: 10,),


            ],
          ),
        ),
      ),
    );
  }
}
