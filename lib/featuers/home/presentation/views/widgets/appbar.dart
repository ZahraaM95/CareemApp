// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/home.dart';
import 'package:flutter_application_44/view/pay.dart';
import 'package:flutter/material.dart';

import '../../../../menu/presentation/views/widgets/active.dart';
import '../../../../menu/presentation/views/widgets/profile.dart';
import '../../../../menu/presentation/views/widgets/support.dart';
import 'appbar_item.dart';

AppBar MyAppbar(context) {
  return AppBar(
    title: Center(
      child: Image.asset(
        MyImages.imgLogo,
        width: 100,
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const PayPage()));
        },
        child: Image.asset(
          MyImages.imgLogoPay,
          width: 80,
          color: Colors.black,
        ),
      ),
    ],
    leading: const MenuIcons(),
  );
}

class MenuIcons extends StatelessWidget {
  const MenuIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () {
        showGeneralDialog(
            context: context,
            barrierDismissible: true,
            transitionDuration: const Duration(),
            barrierLabel: MaterialLocalizations.of(context).dialogLabel,
            barrierColor: Colors.black54,
            pageBuilder: (context, _, __) {
              return Padding(
                padding: const EdgeInsets.only(left: 0, top: 4, bottom: 500),
                child: Expanded(
                  child: SizedBox(
                    width: 300,
                    height: 230,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        
                        children: <Widget>[
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.exit_to_app_sharp)),

                          CustomeAppbarItem(
                            name: 'الدعم',
                            icon: const Icon(Icons.support_agent),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SupportScreen()));
                            },
                          ),
                          CustomeAppbarItem(
                            name: 'الرئيسيه',
                            icon: const Icon(Icons.home),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MyHomePage()));
                            },
                          ),
                          CustomeAppbarItem(
                            name: 'الانشطه',
                            icon: const Icon(Icons.av_timer),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ActivePage()));
                            },
                          ),
                          CustomeAppbarItem(
                            name: 'الملف الشخصي',
                            icon: const Icon(Icons.person_rounded),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ProfilePage()));
                            },
                          ),
                          // ]),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            transitionBuilder: (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position:
                    CurvedAnimation(parent: animation, curve: Curves.easeInCirc)
                        .drive(
                  Tween<Offset>(begin: const Offset(0, -1.0), end: Offset.zero),
                ),
                child: child,
              );
            });
      },
    );
  }
}
