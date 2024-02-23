
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class OnGps extends StatelessWidget {
  const OnGps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 216, 216, 216)),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'تفعيل الوصول الى الخدمات',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.send,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'لخدمات افضل قم بتفعيل الموقع الجغرافي للخدمات'),
          ),
          ElevatedButton(
            onPressed: () {
              _getLocation();
             // launchURL('https://www.google.com/maps/dir//30.979993,31');

            },
            child: const Text(
              "تفعيل الموقع الجغرافي",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

    void _getLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
  }
}


