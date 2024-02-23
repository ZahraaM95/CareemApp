// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class MyColors {
  static const Color Green = Color(0xff1b9849);
  static const Color lightGrey = Color(0xffE5EFFD);
  static const Color lightGreenICON = Color(0xffeff6f8);
  // static const Color Gren = Color(0xffe3e8ec);
}

class MyFonts {
  static const TextStyle heading24Bold =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle body18Regular = TextStyle(
      fontSize: 18, fontWeight: FontWeight.normal, color: Color(0xffE1E1E1));
  static const TextStyle caption13Medium = TextStyle(
      fontSize: 13, fontWeight: FontWeight.w700, color: Color(0xffE1E1E1));
}

class MySizes {
  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
class MyImages{
static String imgLogo = 'asset/Careem_logo_new_2023.png';
static String  imgLogoPay = 'asset/CPay-new-logo-white.png';
static String imgslider1 = 'asset/1.jpg';
static String imgslider2 = 'asset/3.jpg';
static String imgslider3 = 'asset/4.jpg';
static String imgslider4 = 'asset/5.jpg';
static String imgslider5 = 'asset/6.jpg';
static String imgsend = 'asset/7996851.png';
static String imglocation = 'asset/1.png';
static String imgbackground = 'asset/istockphoto-1335422806-1024x1024.jpg';
static String imgtaxi = 'asset/taxi.png';
}