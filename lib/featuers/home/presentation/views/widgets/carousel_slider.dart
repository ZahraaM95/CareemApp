
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';

final List<String> imgList = [
  MyImages.imgslider1,
  MyImages.imgslider2,
  MyImages.imgslider3,
  MyImages.imgslider4,
  MyImages.imgslider5,

];

  Container carouselSlider({ CarouselOptions? options,  List<Container>? items}) {
    return  Container(
    child: CarouselSlider(
                      options: CarouselOptions(),
                      items: imgList
                          .map((item) => Container(
                                child: Center(
                                    child: Image.asset(item,
                                        fit: BoxFit.cover, width: 1000)),
                              ))
                          .toList(),
    ),
                    );
  }