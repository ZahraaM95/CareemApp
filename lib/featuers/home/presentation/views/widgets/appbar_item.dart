// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
class CustomeAppbarItem extends StatelessWidget {
  CustomeAppbarItem({super.key, 
  required this.icon,
   required this.onTap,
    required this.name
    });
  final Icon icon;
  final String name;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 120,
        height: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(2),
          ),
        ),
        child: Column(
          children: [
          Expanded(
            child: CircleAvatar(
              radius: 23,
              backgroundColor: const Color.fromARGB(255, 142, 142, 142),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: IconButton(
                  onPressed: onTap,
                  icon: icon,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          Text(name),
        ]),
      ),
    );
  }
}
