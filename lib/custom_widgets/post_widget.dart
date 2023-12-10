import 'package:flutter/material.dart';

Widget getPost(
    {required String image, required String name, required String date}) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(image: AssetImage('images/$image.png')),
      ),
      SizedBox(height: 20),
      Text(
        'سیگنال : $name برای $date',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),
      SizedBox(height: 10),
      Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_cart,
            size: 20,
            color: Colors.green,
          ),
          SizedBox(width: 5),
          Text(
            'خرید : ۱۲.۴۶۵',
            style: TextStyle(color: Colors.green),
          ),
          SizedBox(width: 25),
          Icon(
            Icons.sell,
            size: 25,
            color: Colors.red,
          ),
          SizedBox(width: 5),
          Text(
            'فروش : ۱۲.۴۶۵',
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
      Container(
        width: 200,
        child: Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ),
    ],
  );
}
