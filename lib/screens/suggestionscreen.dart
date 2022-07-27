import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/sendsuggestion.dart';

class SuggestionScreen extends StatelessWidget {
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
                  Container(
                      decoration: BoxDecoration(

                          // color: HexColor('#FAFAFA').withOpacity(0.4),

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
                            top: 18.0.h, right: 15.w, left: 15.w, bottom: 34.h),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 35.w,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.81),
                                  ),
                                  child: Transform.rotate(
                                    child: Icon(Icons.add),
                                    angle: 95,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 14.w,
                                ),
                                Text(
                                  'Description',
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
                                maxLines: 4,
                                decoration: InputDecoration(
                                    filled: true,
                                    hintText: 'Type your suggestion',
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: HexColor('#818181'),
                                        fontSize: 14.sp),
                                    fillColor: Colors.white.withOpacity(0.81),
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
                              height: 14.h,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            SendSuggestionScreen()));
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
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
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
                            'Thank you for taking the time to type a suggestion.',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            'if further clarification is required, we’ll try to contact you \nvia this app!.',
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
