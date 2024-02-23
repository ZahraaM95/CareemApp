// ignore: file_names
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_44/otp.dart';
import 'package:flutter_application_44/featuers/home/home.dart';

class PhoneSignInPage extends StatefulWidget {
  const PhoneSignInPage({super.key});

  @override
  _PhoneSignInPageState createState() => _PhoneSignInPageState();
}

class _PhoneSignInPageState extends State<PhoneSignInPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل الدخول برقم الهاتف'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                },
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: 'ادخل رقم الهاتف',
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await _auth.verifyPhoneNumber(
                    phoneNumber: phoneNumber,
                    verificationCompleted:
                        (PhoneAuthCredential credential) async {
                      await _auth.signInWithCredential(credential);
                      // يمكنك تحويل المستخدم إلى الصفحة التالية بعد تسجيل الدخول
                      // ignore: use_build_context_synchronously
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                    },
                    verificationFailed: (FirebaseAuthException e) {
                      print(e.message);
                    },
                    codeSent: (String verificationId, int? resendToken) {
                      // يمكنك تحويل المستخدم إلى صفحة إدخال رمز التحقق هنا
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              OtpPage(verificationId: verificationId)));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                },
                child: const Text('إرسال رمز التحقق'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
