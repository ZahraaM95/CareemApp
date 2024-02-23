// // ignore_for_file: must_be_immutable

// import 'package:flutter_application_44/componet/color.dart';
// import 'package:flutter_application_44/featuers/home/presentation/views/widgets/cite_to_cite.dart';
// import 'package:flutter_application_44/featuers/home/presentation/views/widgets/ask_mony.dart';
// import 'package:flutter_application_44/view/map.dart';
// import 'package:flutter_application_44/view/sent_mony.dart';
// import 'package:flutter/material.dart';

// // import '../cite_to_cite.dart';

// class Types extends StatelessWidget {
//   const Types({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             MyIcons(
//               image: MyImages.imglocation,
//               name: 'توصيل',
//               onTap: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const MapSample()));
//               },
//             ),
//             MyIcons(
//               image:MyImages.imgtaxi,
//               name: 'بين المدن',
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const CiteToCite()));
//               },
//             ),
//             MyIcons(
//               image:MyImages.imgtaxi,
//               name: 'تكسي',
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const CiteToCite()));
//               },
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             MyIcons(
//               image: MyImages.imgtaxi,
//               name: 'الى المطار',
//               onTap: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => const CiteToCite()));
//               },
//             ),
//             MyIcons(
//               image: MyImages.imgtaxi,
//               name: 'طلب رصيد',
//               onTap: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const AskMony()));
//               },
//             ),
//             MyIcons(
//               image:MyImages.imgtaxi,
//               name: 'حول رصيد',
//               onTap: () {
//                 Navigator.of(context).push(
//                     MaterialPageRoute(builder: (context) => const SentMony()));
//               },
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class MyIcons extends StatelessWidget {
//   MyIcons({
//     super.key,
//     required this.name,
//     required this.image,
//     required this.onTap,
//   });
//   final String name;
//   final String image;
//   VoidCallback? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Column(
//           children: [
//             GestureDetector(
//               onTap: onTap,
//               child: CircleAvatar(
//                 radius: 24,
//                 child: Image.asset(
//                   image,
//                   width: 40,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(name,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontSize: 10.0,
//                 )),
//           ],
//         ),
//       ],
//     );
//   }
// }
