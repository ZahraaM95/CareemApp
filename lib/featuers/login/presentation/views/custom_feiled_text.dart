
  import 'package:flutter/material.dart';
import 'package:flutter_application_44/componet/color.dart';
import 'package:flutter_application_44/view/login.dart';
class FieldTextNumber extends StatefulWidget {
  const FieldTextNumber({super.key});

  @override
  State<FieldTextNumber> createState() => _FieldTextNumberState();
}

class _FieldTextNumberState extends State<FieldTextNumber> {
  @override
  Widget build(BuildContext context) {
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
          child:TextField(
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
    
          )
      ),
      ],
    );
    
  }String generateCountryFlag() {
  String countryCode = 'iq';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

  return flag;
}
  }
