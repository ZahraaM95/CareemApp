import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_44/featuers/home/home.dart';


Widget _buildPhoneFormField() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.lightGrey),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: Text(
            '${generateCountryFlag()} +964',
            style: const TextStyle(fontSize: 18, letterSpacing: 2.0),
          ),
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.Green),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: TextFormField(
            autofocus: true,
            style: const TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
            ),
            decoration: const InputDecoration(border: InputBorder.none),
            cursorColor: Colors.black,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return 'من فضلك ادخل رقمك!';
              } else if (value.length < 11) {
                return 'Too short for a phone number!';
              }
              return null;
            },
            onSaved: (value) {
              phoneNumber = value!;
            },
          ),
        ),
      ),
    ],
  );
}

Widget _buildIntroTexts() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'ماهو رقمك؟',
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: const Text(
          'من فضلك ادخل رقم هاتفك لنشاء حساب',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    ],
  );
}

String generateCountryFlag() {
  String countryCode = 'iq';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

  return flag;
}

late String phoneNumber;
Row enterNumber() {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.lightGrey),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: Text(
            '${generateCountryFlag()} +964',
            style: const TextStyle(fontSize: 18, letterSpacing: 2.0),
          ),
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.Green),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: TextFormField(
            autofocus: true,
            style: const TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
            ),
            decoration: const InputDecoration(border: InputBorder.none),
            cursorColor: Colors.black,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter yout phone number!';
              } else if (value.length < 11) {
                return 'Too short for a phone number!';
              }
              return null;
            },
            onSaved: (value) {
              phoneNumber = value!;
            },
          ),
        ),
      ),
    ],
  );
}

Widget _buildNextButton(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: ElevatedButton(

      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
      },
      
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(240, 60),
        backgroundColor: MyColors.Green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: const Text(
        'التالي',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );
}

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Form(
              // key: _phoneFormKey,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildIntroTexts(),
                    const SizedBox(
                      height: 80,
                    ),
                    _buildPhoneFormField(),
                    const SizedBox(
                      height: 50,
                    ),
                    _buildNextButton(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
