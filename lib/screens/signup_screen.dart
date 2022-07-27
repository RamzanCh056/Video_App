import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:videoapp/screens/objectiveScreen.dart';
import 'package:videoapp/screens/oboardingscreen.dart';
import 'package:videoapp/screens/screen_33.dart';
import 'package:videoapp/widgets/passwordtextfield.dart';

import '../widgets/formbottomsection.dart';
import '../widgets/formtextfield.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 38.w,
                    height: 46.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.81),
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/start.svg',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 50.h,
                ),

                SizedBox(
                  height: 6.h,
                ),
                FormTextField(
                    txt: 'Username/Email', icn: 'assets/icons/person.svg'),
                SizedBox(
                  height: 16.h,
                ),
                // FormTextField(txt: 'Date of birth', icn: 'assets/icons/calender.svg',),
                TextFormField(
                  readOnly: true,
                  controller: dateinput, //editing controller of this TextField
                  decoration: InputDecoration(
                      hintText: 'Date of birth',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 20.h),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.81),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.w),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.w),
                          borderSide: BorderSide.none),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(15.0.w),
                        child: SvgPicture.asset('assets/icons/calender.svg'),
                      )),
                  onTap: () async {
                    await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2025),
                    ).then((selectedDate) {
                      if (selectedDate != null) {
                        dateinput.text = DateFormat(
                          'dd/MM/yyyy',
                        ).format(selectedDate);
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                FormTextField(
                    txt: 'Type your email', icn: 'assets/icons/mailbox.svg'),
                SizedBox(
                  height: 16.h,
                ),
                FormTextField(
                    txt: 'Retype your email', icn: 'assets/icons/mailbox.svg'),
                SizedBox(
                  height: 16.h,
                ),
                PasswordFormTextField(),
                SizedBox(
                  height: 27.h,
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
                                builder: (_) => OnBoardingScreen()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.w),
                      )),
                ),

                SizedBox(
                  height: 6.h,
                ),
                FormBottomSection(txt: ' Log in instead'),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
