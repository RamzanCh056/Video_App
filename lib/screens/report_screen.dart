import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.h),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFADD1D3),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 3),
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15.w)),
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 18.0.h,
                                  right: 15.w,
                                  left: 15.w,
                                  bottom: 34.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          width: 35.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Colors.white.withOpacity(0.81),
                                          ),
                                          child: Transform.rotate(
                                            child: Icon(Icons.add),
                                            angle: 95,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 74.w,
                                      ),
                                      Text(
                                        'Jackies_sam',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13.w),
                                      ),
                                    ],
                                  ),
                                  // Row(
                                  //   children: [
                                  //     Expanded(child: SizedBox()),
                                  //     SizedBox(
                                  //       width: 50.w,
                                  //     )
                                  //   ],
                                  // ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text(
                                        'Write a report',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: TextField(
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                          filled: true,
                                          hintText:
                                              'write the details about the report',
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: HexColor('#818181'),
                                              fontSize: 14.sp),
                                          fillColor: HexColor('#FAFAFA')
                                              .withOpacity(0.4),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(14.w)),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(14.w))),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 15.h),
                                    decoration: BoxDecoration(
                                      color: HexColor('#489CAE'),
                                      borderRadius: BorderRadius.circular(15.w),
                                    ),
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          width: 120.w,
                          height: 30.h,
                          child: Text(
                            'Report user',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13.w,
                                color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: HexColor('#C50202'),
                              borderRadius: BorderRadius.circular(15.w)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xFFADD1D3),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ],
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15.w)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0.w, vertical: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good job for having the strength to report \n<<username>>',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'We will make an inquiry & get back to you as soon as \npossible.',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
