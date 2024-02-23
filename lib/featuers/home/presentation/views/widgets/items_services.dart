
// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class ServicesItems extends StatelessWidget {
  ServicesItems({
    super.key,
    required this.name,
    required this.image,
    required this.onTap,
  });
  final String name;
  final String image;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: CircleAvatar(
                radius: 24,
                child: Image.asset(
                  image,
                  width: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                )),
          ],
        ),
      ],
    );
  }
}
