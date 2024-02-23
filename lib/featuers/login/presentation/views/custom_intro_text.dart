import 'package:flutter/material.dart';

Widget buildIntroTexts() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      const Text(
        'ماهو رقمك؟',
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: const Text(
          'من فضلك ادخل رقم هاتفك لنشاء حساب',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            
          ),
          textAlign: TextAlign.right,

        ),
      ),
      
    ],
  );
}


