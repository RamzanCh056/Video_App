import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordFormTextField extends StatefulWidget {
  @override
  State<PasswordFormTextField> createState() => _PasswordFormTextFieldState();
}

class _PasswordFormTextFieldState extends State<PasswordFormTextField> {
  bool val = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
        obscureText: val,

        decoration: InputDecoration(
            contentPadding:
            EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
            filled: true,
            fillColor: Colors.white.withOpacity(0.81),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.w),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.w),
                borderSide: BorderSide.none),
            hintText: ' Password',
            hintStyle: TextStyle(
                color: Colors.black,


                fontWeight: FontWeight.w600,
                fontSize: 13.sp),
            prefixIcon: Padding(
              padding:  EdgeInsets.all(15.0.w),
              child: SvgPicture.asset(
                'assets/icons/Lock.svg',
                color: Colors.black,
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  val = !val;
                });
              },
              child: val
                  ? Icon(
                Icons.visibility,
                color: Colors.black,
              )
                  : Icon(
                Icons.visibility_off,
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}