import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:main_manu_area/componamt/Elevated_Button_Grad.dart';
import '../componamt/Elevated_Button.dart';
import '../componamt/NavigationBar.dart';

class MainScrean extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7F9),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return   LinearGradient(colors: [Color(0xFF5B5EE6),
              Color(0xFF916CFF)],begin:Alignment.topLeft, end:Alignment.topRight ).createShader(bounds);
          },
          child: RichText(
            text: TextSpan(
              text: 'Vestimat',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'e',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(

        children: [
          SizedBox(
height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(

              alignment: Alignment.centerLeft,
            child:Text('Choose your area ',
            style: TextStyle(

              fontSize: 30
            ),
            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Column(
                children: [
                  ElevatedGrad(
                    text: "Buying",

                    icon: Icon(Icons.shopping_cart_outlined),
                    colorTextAndIcon: Color(0xFFFFFFFF),
                  ),
                 SizedBox(
                   height: 10,
                 ),
                  Elevated(
                    text: "Trades",

                    icon: Icon(Ionicons.briefcase_outline),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Elevated(
                    text: "Deals",

                    icon: Icon(Icons.percent_outlined),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),

              Column(
                children: [
                  Elevated(
                    text: "Selling",

                    icon: Icon(Icons.store_outlined),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Elevated(
                    text: "Videos",

                    icon: Icon(Icons.play_circle_outlined),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Elevated(
                    text: "Case Study",

                    icon: Icon(Ionicons.book_outline),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
Spacer(flex: 1,),
          Navigation(),
        ],
      ),
    );
  }
}
