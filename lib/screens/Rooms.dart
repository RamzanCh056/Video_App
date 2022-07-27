import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/focusroom3.dart';
import 'package:slider_button/slider_button.dart';
import 'package:videoapp/screens/screen39.dart';
import 'package:videoapp/screens/screen47.dart';
import '../widgets/show_dialog.dart';
import 'focus_room.dart';
import 'focus_room2.dart';
import 'focusroom4.dart';

class RoomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  SizedBox(width: 14.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Screen39()));
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          color: HexColor('70E289'), shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/users.svg'),
                    ),
                  ),
                  SizedBox(width: 11.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => FocusRoom()));
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.81),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/bell.svg'),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen47()));
                    },
                    child: CircleAvatar(
                      radius: 25.w,
                      child: Image.asset(
                        'assets/images/avatar.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 14.w),
                ],
              ),
              Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => FocusRoom()));
                          },
                          child: Container(
                            width: 160.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: HexColor('#E49D9D'),
                                      borderRadius: BorderRadius.circular(8.w)),
                                  child: Text(
                                    'Focus Room (8/24)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-22, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-22, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            width: 160.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: HexColor('#E49D9D'),
                                      borderRadius: BorderRadius.circular(8.w)),
                                  child: Text(
                                    'Focus Room (0/24)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => FocusRoom3()));
                          },
                          child: Container(
                            width: 160.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: HexColor('#E49D9D'),
                                      borderRadius: BorderRadius.circular(8.w)),
                                  child: Text(
                                    'Focus Room (6/24)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-22, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16.w,
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16.w,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => FocusRoom4()));
                          },
                          child: Container(
                            width: 160.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: HexColor('#E49D9D'),
                                      borderRadius: BorderRadius.circular(8.w)),
                                  child: Text(
                                    'Focus Room (3/24)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          child: Image.asset(
                                            'assets/images/avatar2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          child: Image.asset(
                                              'assets/images/avatar3.png'),
                                          radius: 16.w,
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16.w,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      //Container ========================>
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => FocusRoom2()));
                          },
                          child: Container(
                            width: 160.w,
                            height: 130.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14.w),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: HexColor('#E49D9D'),
                                      borderRadius: BorderRadius.circular(8.w)),
                                  child: Text(
                                    'Focus Room (1/24)',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    CircleAvatar(
                                      radius: 16.w,
                                      child: Image.asset(
                                        'assets/images/avatar1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.translate(
                                        offset: Offset(-6.w, 0),
                                        child: CircleAvatar(
                                          radius: 16.w,
                                          backgroundColor: Colors.transparent,
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16.w,
                                        )),
                                    Transform.translate(
                                        offset: Offset(-14, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 16.w,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.w),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: HexColor('#E49D9D'),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: Text(
                                  'Focus Room (8/24)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    color: HexColor('#E8E3E3'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 37.h,
                    decoration: BoxDecoration(
                      color: HexColor('#E49D9D'),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.w),
                          bottomRight: Radius.circular(8.w)),
                    ),
                    child: Row(
                      children: [
                        // SizedBox(
                        //   width: 30.w,
                        // ),
                        // Text(
                        //   'Social Focus Rooms',
                        //   style: TextStyle(
                        //       color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14.w),
                        // ),
                        // SizedBox(width: 50.w,),
                        Expanded(
                          //   child: InkWell(
                          //     onTap: (){ showDialog(
                          //         context: context,
                          //         builder: (BuildContext context) {
                          //           return CustomDialogBox1();
                          //         });},
                          //     child: Container(
                          //       alignment: Alignment.center,
                          //       height: double.infinity,
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(20.w),
                          //         color: HexColor('#8BB8C2'),
                          //       ),
                          //       child:Text('Create Room',style: TextStyle(color: Colors.white),) ,
                          //     ),
                          //   ),
                          // ),

                          child: Container(
                            padding: EdgeInsets.only(left: 10.h),
                            // height: 30.h,
                            child: SliderButton(
                              action: () async {
                                await showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogBox1();
                                    });
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => RoomsScreen()));
                              },
                              backgroundColor: Color(0xFFE49D9D),
                              vibrationFlag: true,
                              alignLabel: Alignment.center,
                              // dismissible: false,
                              shimmer: false,
                              label: Text(
                                'Social Focus Rooms',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.w),
                              ),

                              child: Container(
                                alignment: Alignment.center,
                                height: double.infinity,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFF8BB8C2),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8.w),
                                      bottomRight: Radius.circular(8.w),
                                      topLeft: Radius.circular(20.w),
                                      bottomLeft: Radius.circular(20.w)),
                                ),
                                child: Text(
                                  'Create Room',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.w),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: HexColor('#E49D9D'),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: Text(
                                  'John Asm (8/12)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.w),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: HexColor('#E49D9D'),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: Text(
                                  'John Asm (8/12)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.w),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: HexColor('#E49D9D'),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: Text(
                                  'John Asm (8/12)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Container(
                          width: 160.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.w),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: HexColor('#E49D9D'),
                                    borderRadius: BorderRadius.circular(8.w)),
                                child: Text(
                                  'John Asm (8/12)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  CircleAvatar(
                                    radius: 16.w,
                                    child: Image.asset(
                                      'assets/images/avatar1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(-6.w, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-14, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar3.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  Transform.translate(
                                      offset: Offset(-22, 0),
                                      child: CircleAvatar(
                                        radius: 16.w,
                                        child: Image.asset(
                                          'assets/images/avatar1.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
