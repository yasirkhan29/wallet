import 'package:flutter/material.dart';

class MyBottom extends StatelessWidget {
  final String iconImage;
  final String buttomText;
  const MyBottom(
      {super.key, required this.iconImage, required this.buttomText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          //icon
          Container(
            height: 90,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 40,
                      spreadRadius: 10),
                ]),
            child: Center(
              child: Image.asset(iconImage),
            ),
          ),
          SizedBox(height: 12),
          //text
          Text(
            buttomText,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          )
        ],
      ),
    );
  }
}
