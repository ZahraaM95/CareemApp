// ignore_for_file: must_be_immutable

import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/presentation/views/widgets/cite_to_cite.dart';
import 'package:flutter_application_44/featuers/home/presentation/views/widgets/ask_mony.dart';
import 'package:flutter_application_44/view/map.dart';
import 'package:flutter_application_44/view/sent_mony.dart';
import 'package:flutter/material.dart';

import 'items_services.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ServicesItems(
              image: MyImages.imglocation,
              name: 'توصيل',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MapSample()));
              },
            ),
            ServicesItems(
              image:MyImages.imgtaxi,
              name: 'بين المدن',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CiteToCite()));
              },
            ),
            ServicesItems(
              image:MyImages.imgtaxi,
              name: 'تكسي',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CiteToCite()));
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ServicesItems(
              image: MyImages.imgtaxi,
              name: 'الى المطار',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CiteToCite()));
              },
            ),
            ServicesItems(
              image: MyImages.imgtaxi,
              name: 'طلب رصيد',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AskMony()));
              },
            ),
            ServicesItems(
              image:MyImages.imgtaxi,
              name: 'حول رصيد',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SentMony()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
