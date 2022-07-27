// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videoapp/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: Color(0xFFADD1D3),
              fontFamily: 'Urbanist'),
          home: LoginScreen(),
        );
      },
    );
  }
}




// class MyApps extends StatefulWidget{
// @override
// State<MyApps> createState() => _MyAppsState();
// }
//
// class _MyAppsState extends State<MyApps> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title:Text("Dropdown Button in Flutter"),
//           backgroundColor: Colors.deepOrange,
//         ),
//         body: Container(
//           width:double.infinity,
//           decoration: BoxDecoration(
//
//             color: Colors.yellow,
//            borderRadius: BorderRadius.circular(
//             configSize(context).height * 0.022,
//           ),
//
//           ),
//           margin: EdgeInsets.only(top:80),
//           alignment: Alignment.topCenter,
//           child: DropdownButtonFormField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(
//                   configSize(context).height * 0.022,
//                 ),
//                 borderSide: BorderSide.none,
//               ),
//               fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
//               filled: true,
//               hintText: 'name the room',
//               hintStyle: TextStyle(
//                 fontSize: configSize(context).height * 0.02,
//                 fontFamily: 'Urbanist-Light',
//                 color: Color(0xFF818181),
//               ),
//               contentPadding: EdgeInsets.symmetric(
//                 horizontal: configSize(context).width * 0.05,
//                 vertical: configSize(context).height * 0.025,
//               ),
//             ),
//             value: selectval,
//             onChanged: (val){
//               selectval=val as String;
//               setState(() {
//
//               });
//             },
//             items: listitems.map((e) => (DropdownMenuItem(value: e, child: Text(e),))).toList(),
//
//           ),
//         )
//     );
//   }
