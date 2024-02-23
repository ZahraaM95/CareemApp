
import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';

import 'go_to.dart';

class Booking extends StatelessWidget {
  const Booking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 189, 189, 189)),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(Icons.point_of_sale_sharp),
          const Text(
            "احجز مشوار",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Icon(Icons.search),
              Spacer(),
              Text(
                "الى اين تريد الذهاب؟",
                style: TextStyle(
                  color: Colors.black,
                  // fontSize: 18.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GoTo()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(110, 50),
                backgroundColor:
                    const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "حدد نقطه الانطلاق",
                style: TextStyle(
                  color: MyColors.Green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
