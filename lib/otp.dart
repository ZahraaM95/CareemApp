// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/home/home.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;

  const OtpPage({super.key, required this.verificationId});

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إدخال رمز التحقق'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.Green),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _otp = value;
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'ادخل رمز التحقق',
                  ),
                ),
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () async {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: widget.verificationId,
                    smsCode: _otp,
                  );

                  await _auth.signInWithCredential(credential);
                  // يمكنك تحويل المستخدم إلى الصفحة التالية بعد تسجيل الدخول
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyHomePage()));
                },
                child: const Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(240, 60),
                  backgroundColor: MyColors.Green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
