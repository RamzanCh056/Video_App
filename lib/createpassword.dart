// import 'package:flutter/material.dart';


// class CreatePasswordScreen extends StatefulWidget {
//   const CreatePasswordScreen({Key? key}) : super(key: key);

//   @override
//   State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
// }

// class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
//   bool obsval=true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.0),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Create Password',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'This password will unlock your crypto\nwallet only on this device',
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.grey.withOpacity(0.08),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   'New Password',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                       fontSize: 16),
//                                 ),
//                                 GestureDetector(onTap: (){
//                                   setState(() {
//                                     obsval=!obsval;
//                                   });
//                                 },
//                                   child: Text('Show',style: TextStyle(color: Colors.amber),),)
//                               ]),

//                           SizedBox(
//                             height: 7,
//                           ),

//                           CustomFormField(txt: 'New Password', val: obsval,),
//                           SizedBox(
//                             height: 9,
//                           ),
//                           Text(
//                             'Confirm Password',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                                 fontSize: 16),
//                           ),
//                           SizedBox(
//                             height: 7,
//                           ),
//                           CustomFormField(txt: 'Confirm Password',val: obsval),
//                         ]),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
