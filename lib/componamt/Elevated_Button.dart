import 'package:flutter/material.dart';

class Elevated extends StatelessWidget {
  Icon icon;
  String text;



  Elevated({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return  LinearGradient(colors: [Color(0xFF5B5EE6),
                  Color(0xFF916CFF)],begin:Alignment.topLeft, end:Alignment.topRight ).createShader(bounds); // Apply the gradient to the icon
              },
              child: Icon(
                icon.icon,

                size: 50,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return  LinearGradient(colors: [Color(0xFF5B5EE6),
                  Color(0xFF916CFF)],begin:Alignment.topLeft, end:Alignment.topRight ).createShader(bounds);; // Apply the gradient to the text
              },
              child: Text(
                text,

              ),
            ),
          ],
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(170, 170),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}