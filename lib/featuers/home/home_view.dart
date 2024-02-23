import 'package:flutter/material.dart';
import 'package:flutter_application_44/featuers/home/presentation/views/widgets/booking.dart';

import 'presentation/views/widgets/appbar.dart';
import 'presentation/views/widgets/carousel_slider.dart';
import 'presentation/views/widgets/on_gps.dart';
import 'presentation/views/widgets/serviceitems.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(context),
      body: SizedBox(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: carouselSlider(),
                  ),
                  const OnGps(),
                  const ServiceItem(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Booking()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
