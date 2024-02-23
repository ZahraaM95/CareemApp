
  import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/otp.dart';
  final FirebaseAuth auth = FirebaseAuth.instance;
  String phoneNumber = '';

ElevatedButton nextButton(BuildContext context) {
    return ElevatedButton(
      
              onPressed: () async {
                await auth.verifyPhoneNumber(
                  phoneNumber: phoneNumber,
                  verificationCompleted: (PhoneAuthCredential credential) async {
                    await auth.signInWithCredential(credential);
                    // يمكنك هنا إضافة الخطوات التالية بعد تسجيل المستخدم
                  },
                  verificationFailed: (FirebaseAuthException e) {
                    print(e.message);
                  },
                  codeSent: (String verificationId, int? resendToken) {
                    // يمكنك هنا تحويل المستخدم لصفحة إدخال رمز التحقق
                         Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  OtpPage(verificationId:verificationId,)));
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {},
                );
              },
              style: ElevatedButton.styleFrom(
        minimumSize: const Size(240, 60),
        backgroundColor: MyColors.Green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
              ),
              child: const Text('إرسال رمز التحقق', style: TextStyle(color: Colors.white, fontSize: 16),),
            );
  }
