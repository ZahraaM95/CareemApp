import 'package:flutter/material.dart';
import 'package:flutter_application_44/featuers/home/home.dart';

class SentMony extends StatelessWidget {
  const SentMony({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
      body:ListView(
        children: [
        SizedBox(
          width: 500,
          height:100 ,
          child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const MyHomePage()));
                    },
                    icon: const Icon(
                      Icons.qr_code,
                     // size: 20,
                    ),
                        ),
                      const  Text("عرض الكود",
                      style:  TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis
                        ),
                        ),
                                     const  Spacer(),
          
                  const Text("ماهو المبغ المرسل ؟"),
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
        ),
    
        SizedBox(
         width: 500,
          height:500 ,
          child: Column(
            children: [
              const SizedBox(
                width: 30,
              ),
              Container(
                width:300,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: const BoxDecoration(
                  // border:
                  //     Border.fromBorderSide(BorderSide(color: MyColors.Green)),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                child: TextFormField(
                  focusNode: primaryFocus,
                  style: const TextStyle(
                    fontSize: 18,
                    letterSpacing: 2.0,
                    
                  ),
                  decoration: const InputDecoration(border: UnderlineInputBorder()),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.number,
                  
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(240, 60),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'ادخل المبلغ للاستمرار',
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 0, 0), fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),

        ],
      ),

          
      ),
    );
  }
}
