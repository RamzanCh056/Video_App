import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/report_screen.dart';
import 'package:videoapp/screens/screen35.dart';
import 'package:videoapp/screens/screen37.dart';
import 'package:videoapp/screens/screen47.dart';
import 'package:videoapp/screens/screen_33.dart';

class SendSuggestionScreen extends StatefulWidget {
  @override
  State<SendSuggestionScreen> createState() => _SendSuggestionScreenState();
}

class _SendSuggestionScreenState extends State<SendSuggestionScreen> {
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  height: 80.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Jacky',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 15.sp),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Screen47()));
                        },
                        child: CircleAvatar(
                          radius: 35.w,
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 30.h,
                // ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 220.w,
                            height: 180.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: HexColor('#00A6C2'),
                                  width: 7.w,
                                )),
                            child: Text(
                              timerText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 30.sp),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(0, -46.h),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.w),
                                color: HexColor('#489CAE'),
                              ),
                              child: Text(
                                'Objective',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 14.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Screen35()));
                          },
                          child: Card(
                            elevation: 7,
                            color: HexColor('#489CAE'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28.0.w, vertical: 4.w),
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Screen33()));
                          },
                          child: Card(
                            elevation: 7,
                            color: Color(0xFFADD1D3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0.w, vertical: 4.w),
                              child: Text(
                                'Message',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ReportScreen()));
                          },
                          child: Card(
                            elevation: 7,
                            color: HexColor('#C50202'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28.0.w, vertical: 4.w),
                              child: Text(
                                'Report',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Screen37()));
                          },
                          child: Card(
                            elevation: 7,
                            color: Color(0xFFADD1D3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.w),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.0.w, vertical: 4.w),
                              child: Text(
                                'Block',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.sp,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      'About me',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Write about yourself',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: HexColor('#818181'),
                            fontSize: 14.sp),
                        fillColor: Colors.white.withOpacity(0.81),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.w)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14.w))),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen47()));
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    decoration: BoxDecoration(
                      color: HexColor('#489CAE'),
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Text(
                      'Send Suggestion',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
