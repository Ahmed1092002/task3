import 'package:flutter/material.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';



class ElevatedGrad extends StatelessWidget {
  Icon icon;
  String text;

  Color colorTextAndIcon;
  ElevatedGrad({ required this.icon,required this.text,required this.colorTextAndIcon});
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        gradient:
        LinearGradient(colors: [Color(0xFF5B5EE6),
          Color(0xFF916CFF)],begin:Alignment.topLeft, end:Alignment.topRight ),
      ),
      child: ElevatedButton(
              child: Center(
                child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Icon(icon.icon
                     ,color:colorTextAndIcon ,
                       size: 50,
                     ),
                     SizedBox(
                       height:10 ,
                     ),
                     Text(text,style: TextStyle(color: colorTextAndIcon),),

                   ],
                ),
              ),
              onPressed: () {},

        style: ElevatedButton.styleFrom(
          fixedSize: Size(170, 170),

          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
        ),




            ),
    );

  }


}