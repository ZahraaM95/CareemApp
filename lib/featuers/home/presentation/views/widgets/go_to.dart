// ignore_for_file: sort_child_properties_last

import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/home.dart';
import 'package:flutter_application_44/view/map.dart';
import 'package:flutter/material.dart';

class GoTo extends StatelessWidget {
  const GoTo({super.key});

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
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SearchBar(
              hintText: 'الى اين تريد الذهاب ؟',
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(radius: 30, child: Icon(Icons.search)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'الى اين تريد الذهاب',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("ادخل وجهتك في خانه البحث  اعلاه للعثور عى موقعك"),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MapSample()));
              },
              child: const Text(
                "حدد الموقع على الخريطه",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(110, 50),
                backgroundColor: MyColors.Green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MapSample()));
              },
              child: const Text(
                "تخطي خطوه الوجه",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(110, 50),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
