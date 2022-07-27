import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormTextField extends StatelessWidget {
  String txt;
  String icn;

  FormTextField({required this.txt, required this.icn});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
        decoration: InputDecoration(

          contentPadding:EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h) ,
          filled: true,
          fillColor: Colors.white.withOpacity(0.81),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.w),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.w),
              borderSide: BorderSide.none),
          hintText: txt,
          hintStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 13.sp),
          prefixIcon: Padding(
            padding:  EdgeInsets.all(15.0.w),
            child: SvgPicture.asset(icn,color: Colors.black,),
          )

        ),
      ),
    );
  }
}