import 'package:flutter/material.dart';

class CounterIncDec extends StatefulWidget {
  const CounterIncDec({super.key});

  @override
  State<CounterIncDec> createState() => _CounterIncDecState();
}

class _CounterIncDecState extends State<CounterIncDec> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){

            if(counter>1){
              setState(() {
                counter--;
              });
            }
          },
          child: Text("-",style: TextStyle(
            fontSize: 46,fontWeight: FontWeight.bold,color: Colors.green
          ),),
        ),
        SizedBox(width: 15,),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,width: 0.2,style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: Text("${counter}",style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'Gilroy'
            ),),
          ),
        ),
        SizedBox(width: 15,),
        GestureDetector(
          onTap: (){

            if(counter<100000){
              setState(() {
                counter++;
              });
            }
          },
          child: Text("+",style: TextStyle(
            fontSize: 29,fontWeight: FontWeight.bold,color: Colors.green
          ),
          ),
        ),
      ],
    );
  }
}
