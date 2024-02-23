import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/featuers/login/presentation/views/custom_button_next.dart';
import 'package:flutter_application_44/featuers/login/presentation/views/custom_feiled_text.dart';
import 'package:flutter_application_44/featuers/login/presentation/views/custom_intro_text.dart';
import 'package:flutter_application_44/otp.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            //  buildIntroTexts(),
            //  const SizedBox(height: 25),
             //const FieldTextNumber(),
            // const SizedBox(height: 50),
            //    nextButton(context),
            Row(
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
          child:TextField(
                  onChanged: (value) {
                    setState(() {
                      phoneNumber = '+964 $value';
                    });
                  },
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'ادخل رقم الهاتف',
                  ),
                  
                ),
    
          )
      ),
      ],
    ),
    
    const SizedBox(height: 50),

             Align(
              alignment: FractionalOffset.topRight,
               child: ElevatedButton(     
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
                           ),
             ),
  

            ],
          ),
        ),
      );
  }

    
String generateCountryFlag() {
  String countryCode = 'iq';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

  return flag;
}
  }