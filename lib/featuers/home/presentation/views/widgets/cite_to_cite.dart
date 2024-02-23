// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/home.dart';

class CiteToCite extends StatelessWidget {
  const CiteToCite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: const Icon(
                Icons.arrow_back,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'هل ترغب بتنقل من بغداد؟',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('اختر المدينه واحجز رحلتك '),
                  const SizedBox(
                    height: 15,
                  ),
                  const City(
                    namecity: 'Najaf',
                    price: 160.000,
                    imgcity:
                        'https://i0.wp.com/albasra.com/wp-content/uploads/2021/07/%D9%83%D9%88%D8%B1%D9%86%D9%8A%D8%B4-%D8%A7%D9%84%D8%A8%D8%B5%D8%B1%D9%87.jpeg?fit=960%2C384&ssl=1',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const City(
                      namecity: 'Basrah',
                      price: 160.000,
                      imgcity:
                          'https://i0.wp.com/albasra.com/wp-content/uploads/2021/07/%D9%83%D9%88%D8%B1%D9%86%D9%8A%D8%B4-%D8%A7%D9%84%D8%A8%D8%B5%D8%B1%D9%87.jpeg?fit=960%2C384&ssl=1'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'المزايا التي نوفرها',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  List('رحلات مريحه', "استرح واستمتع بالرحله"),
                  const SizedBox(
                    height: 12,
                  ),
                  List('اسعار منافسه', "اسعار ثابته ومناسبه"),
                  const SizedBox(
                    height: 10,
                  ),
                  List('رحلات مريحه', "استرح واستمتع بالرحله"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column List(String title, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.location_on_sharp),
          ],
        ),
        Text(desc,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            )),
      ],
    );
  }
}

class City extends StatelessWidget {
  const City({
    super.key,
    required this.namecity,
    required this.price,
    required this.imgcity,
  });
  final String namecity;
  final double price;
  final String imgcity;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Image.network(
            imgcity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      '  IDQ $price ',
                      style: MyFonts.caption13Medium,
                    ),
                    const Text(
                      '  السعر الابتدائي ',
                      style: MyFonts.caption13Medium,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  namecity,
                  style: MyFonts.caption13Medium,
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
