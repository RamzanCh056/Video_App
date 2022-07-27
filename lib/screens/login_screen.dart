import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/signup_screen.dart';
import 'package:videoapp/sizeconfig.dart';
import 'package:videoapp/widgets/passwordtextfield.dart';

import '../widgets/formbottomsection.dart';
import '../widgets/formtextfield.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: 120.h,
                  ),
                  CircleAvatar(
                    radius: 50.w,
                    child: Image.asset(
                      'assets/images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  FormTextField(
                      txt: 'Username/Email', icn: 'assets/icons/person.svg'),
                  SizedBox(
                    height: 16.h,
                  ),
                  PasswordFormTextField(),
                  SizedBox(
                    height: 90.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            backgroundColor: Color(0xff83BCC9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.w),
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SignupScreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.w),
                        )),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  FormBottomSection(txt: ' Sign up instead'),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
