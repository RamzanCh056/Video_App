import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import 'iconcard.dart';

class FormBottomSection extends StatefulWidget {
  @override
  State<FormBottomSection> createState() => _FormBottomSectionState();
  final String txt;

  FormBottomSection({required this.txt});
}

class _FormBottomSectionState extends State<FormBottomSection> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
                style:
                TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
                text: 'Dont have an account?',
                children: [
                  TextSpan(children: [
                    WidgetSpan(
                        child: GestureDetector(
                           onTap: (){
                             widget.txt.contains(' Log in instead')?Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()))
                                 :Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupScreen()));
                           },
                          child: Text(
                           widget.txt,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: HexColor('#F10000').withOpacity(0.25),
                            ),
                          ),
                        ))
                  ]),
                ]),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text('Or continue with'),
          SizedBox(
            height: 35.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: iconcard(
                  svgsrc: 'assets/icons/facebook.svg',
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(

                child: iconcard(
                  svgsrc: 'assets/icons/google.svg',
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(

                child: iconcard(
                  svgsrc: 'assets/icons/apple.svg',
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          )
        ],
      ),
    );
  }
}