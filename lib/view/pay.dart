// ignore_for_file: non_constant_identifier_names
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/presentation/views/widgets/ask_mony.dart';
import 'package:flutter_application_44/featuers/home/home.dart';
import 'package:flutter_application_44/view/sent_mony.dart';
import 'package:flutter/material.dart';

import '../featuers/menu/presentation/views/widgets/munu_icone.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 231, 247),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 231, 247),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Image.asset(
              'asset/CPay-new-logo-white.png',
              width: 100,
            ),
          ),
        ),
        leading: const MenuIcons(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
              },
              icon: const Icon(
                Icons.arrow_back,
              )),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'دينار عراقي  0',
              style: TextStyle(
                color: Color.fromARGB(255, 77, 85, 132),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 61, 61, 61),
              ),
              label: const Text(
                'ادارة المحفظه',
                style: TextStyle(
                  color: Color.fromARGB(255, 61, 61, 61),
                  fontSize: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyTextButtonIcon(const Icon(Icons.arrow_upward), 'تحويل رصيد',
                    () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AskMony()));
                }),
                MyTextButtonIcon(const Icon(Icons.arrow_downward), 'طلب رصيد',
                    () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SentMony()));
                }),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyIcons(MyImages.imgsend, 'مسح الضوئي ودفع'),
                MyIcons(MyImages.imgsend, 'تقسيم سهل '),
                MyIcons(MyImages.imgsend, 'أحصل على الاجر '),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 61, 61, 61),
                  ),
                  label: const Text(
                    'ادارة المحفظه',
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const Text(
                  'محفضتك',
                  style: TextStyle(
                    color: Color.fromARGB(255, 10, 10, 11),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 2, 41, 50)),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'asset/istockphoto-1335422806-1024x1024.jpg')),
                ),
                child: Column(
                  children: [
                    const Text(
                      'دينار عراقي  0',
                      style: TextStyle(
                        color: Color.fromARGB(255, 160, 171, 238),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('بطاقة  0',
                        style: TextStyle(
                          color: Color.fromARGB(255, 160, 171, 238),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(340, 50),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "اضافه رصيد",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ]),
    );
  }

  TextButton MyTextButtonIcon(Icon icon, String text, VoidCallback onTab) {
    return TextButton.icon(
      onPressed: onTab,
      icon: icon,
      // Color: color,
      label: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 61, 61, 61),
          fontSize: 14.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(110, 50),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Column MyIcons(String image, String text) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 80,
        ),
        Text(text),
      ],
    );
  }
}
