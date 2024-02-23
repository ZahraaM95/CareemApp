// import 'package:flutter/material.dart';

// class Page extends StatefulWidget {
//   @override
//   _PageState createState() => _PageState();
// }

// class _PageState extends State<Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Top Sheet Dialog"),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: IconButton(
//               icon: Icon(Icons.account_balance_wallet),
//               onPressed: () {
//                 return showGeneralDialog(
//                     context: context,
//                     barrierDismissible: true,
//                     transitionDuration: Duration(microseconds: 500),
//                     barrierLabel: MaterialLocalizations.of(context).dialogLabel,
//                     barrierColor: Colors.black.withOpacity(0.5),
//                     pageBuilder: (context, _, __) {
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             width: MediaQuery.of(context).size.width,
//                             color: Colors.white,
//                             child: Card(
//                               child: ListView(
//                                 shrinkWrap: true,
//                                 children: [
//                                   SizedBox(
//                                     height: 15,
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(
//                                       left: 20,
//                                       right: 20,
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text("TOTAL CASH BALANCE"),
//                                         RaisedButton.icon(
//                                             onPressed: () {},
//                                             icon: Icon(
//                                               Icons.add_circle,
//                                               color: Colors.lightGreen,
//                                             ),
//                                             label: Text("ADD CASH"))
//                                       ],
//                                     ),
//                                   ),
//                                   Container(
//                                     margin: EdgeInsets.only(
//                                       left: 20,
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Icon(
//                                           Icons.monetization_on,
//                                           color: Colors.green,
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Text(
//                                           "500.10",
//                                           style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 15,
//                                   ),
//                                   Divider(
//                                     height: 5,
//                                     color: Colors.black,
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       ///wining cash
//                                       Column(
//                                         children: [
//                                           Text("Wining Cash!"),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.monetization_on,
//                                                 color: Colors.green,
//                                               ),
//                                               SizedBox(
//                                                 width: 3,
//                                               ),
//                                               Text("100"),
//                                             ],
//                                           ),
//                                         ],
//                                       ),

//                                       ///wining cash
//                                       Column(
//                                         children: [
//                                           Text("Bonus Cash!"),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.monetization_on,
//                                                 color: Colors.green,
//                                               ),
//                                               SizedBox(
//                                                 width: 3,
//                                               ),
//                                               Text("50"),
//                                             ],
//                                           ),
//                                         ],
//                                       ),

//                                       ///Deposit cash
//                                       Column(
//                                         children: [
//                                           Text("Deposit Cash!"),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           Row(
//                                             children: [
//                                               Icon(
//                                                 Icons.monetization_on,
//                                                 color: Colors.green,
//                                               ),
//                                               SizedBox(
//                                                 width: 3,
//                                               ),
//                                               Text("30"),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),

//                                   ///buttons
//                                   Container(
//                                     margin: EdgeInsets.only(
//                                       top: 10,
//                                     ),
//                                     color: Colors.grey.shade300,
//                                     child: ListTile(
//                                       trailing: RaisedButton.icon(
//                                         onPressed: () {},
//                                         color: Colors.yellow,
//                                         icon: Icon(
//                                           Icons.move_to_inbox,
//                                           color: Colors.black,
//                                         ),
//                                         label: Text("Share"),
//                                       ),
//                                       leading: RaisedButton.icon(
//                                         onPressed: () {},
//                                         color: Colors.yellow,
//                                         icon: Icon(
//                                           Icons.share,
//                                           color: Colors.black,
//                                         ),
//                                         label: Text("Earn More"),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       );
//                     },
//                     transitionBuilder:
//                         (context, animation, secondaryanimation, child) {
//                       return SlideTransition(
//                         position: CurvedAnimation(
//                           parent: animation,
//                           curve: Curves.easeInOutCubic,
//                         ).drive(
//                           Tween<Offset>(
//                             begin: Offset(
//                               0,
//                               -1.0,
//                             ),
//                             end: Offset.zero,
//                           ),
//                         ),
//                         child: child,
//                       );
//                     });
//               },
//             ),
//           ),
//         ],
//         backgroundColor: Colors.pink,
//       ),
//       body: Center(
//         child: Text("Show Top Sheet Dialog"),
//       ),
//     );
//   }
// }
