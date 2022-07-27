import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/focus_room2.dart';
import 'package:videoapp/screens/focusroom4.dart';
import 'package:videoapp/screens/frame354.dart';
import 'package:videoapp/screens/screen26.dart';
import 'package:videoapp/screens/screen_33.dart';
import 'package:videoapp/widgets/show_dialog.dart';

import 'Rooms.dart';
import 'focus_room.dart';
import 'focusroom3.dart';
import 'objectiveScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _selectedIndex = 0;
  List<String> listitems = List.generate(24, (index) => '${index + 1}');

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetList = [
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Container(
                height: 200.h,
                // color: Colors.red,
                width: 200.w,
                child: CircularCountDownTimer(
                  duration: 20,
                  initialDuration: 0,
                  controller: CountDownController(),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                  ringColor: Color(0xFFADD1D3),
                  ringGradient: null,
                  fillColor: Color(0xFF628FA3),
                  fillGradient: null,
                  backgroundColor: Color(0xFF83BCC9),
                  backgroundGradient: null,
                  strokeWidth: 10.0,
                  strokeCap: StrokeCap.round,
                  textStyle: TextStyle(
                    fontSize: 33.0,
                    color: Colors.white,
                  ),
                  textFormat: CountdownTextFormat.MM_SS,
                  isReverse: false,
                  isReverseAnimation: false,
                  isTimerTextShown: true,
                  autoStart: true,
                  onStart: () {
                    debugPrint('Countdown Started');
                  },
                  onComplete: () {
                    debugPrint('Countdown Ended');
                  },
                  onChange: (String timeStamp) {
                    debugPrint('Countdown Changed $timeStamp');
                  },
                ),
              ),
              SizedBox(
                height: 160.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          backgroundColor: Color(0xff83BCC9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.w),
                          )),
                      onPressed: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       return CustomDialogBox();
                        //     });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Screen26()));
                      },
                      child: Text(
                        'Select Objectives',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.w),
                      )),
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(
          left: configSize(context).width * 0.035,
          right: configSize(context).width * 0.035,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'May 2022,week 02',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Gilroy-Bold',
                color: Color(0xFF151313),
              ),
            ),
            SizedBox(
              height: configSize(context).height * 0.02,
            ),
            Container(
              height: configSize(context).height * 0.55,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/table_img.png'),
                    fit: BoxFit.cover),
                borderRadius:
                    BorderRadius.circular(configSize(context).height * 0.02),
              ),
            ),
            SizedBox(
              height: configSize(context).height * 0.05,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF83BCC9),
                  borderRadius: BorderRadius.circular(
                      configSize(context).height * 0.022)),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: configSize(context).height * 0.55,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: configSize(context).height * 0.045,
                        left: configSize(context).height * 0.02,
                        right: configSize(context).height * 0.02,
                        bottom: configSize(context).height * 0.02),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: configSize(context).height * 0.02,
                              ),
                              child: Text(
                                'Title*',
                                style: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-SemiBold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: configSize(context).height * 0.005,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    configSize(context).height * 0.022,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                filled: true,
                                hintText: 'keep it short (18 characters)',
                                hintStyle: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-Light',
                                  color: Color(0xFF818181),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: configSize(context).width * 0.05,
                                  vertical: configSize(context).height * 0.025,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: configSize(context).height * 0.02,
                              ),
                              child: Text(
                                'Date*',
                                style: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-SemiBold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: configSize(context).height * 0.005,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    configSize(context).height * 0.022,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                filled: true,
                                hintText: 'dd/mm/yyyy',
                                hintStyle: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-Light',
                                  color: Color(0xFF818181),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: configSize(context).width * 0.05,
                                  vertical: configSize(context).height * 0.025,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: configSize(context).height * 0.02,
                              ),
                              child: Text(
                                'ETC',
                                style: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-SemiBold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: configSize(context).height * 0.005,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    configSize(context).height * 0.022,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                filled: true,
                                hintText: 'Estimated Time of Completion',
                                hintStyle: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-Light',
                                  color: Color(0xFF818181),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: configSize(context).width * 0.05,
                                  vertical: configSize(context).height * 0.025,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.027,
                        ),
                        GestureDetector(
                          onTap: () {
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return CustomDialogBox();
                            //     });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: configSize(context).height * 0.075,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  configSize(context).height * 0.022),
                              color: Color(0xFF716687),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.45),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Text(
                              'I CAN',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.022,
                                fontFamily: 'Urbanist-SemiBold',
                                color: Colors.white,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: configSize(context).height * -0.025,
                    child: Container(
                      alignment: Alignment.center,
                      height: configSize(context).height * 0.047,
                      width: configSize(context).width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Color(0xFF83BCC9),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        'Objective',
                        style: TextStyle(
                          fontSize: configSize(context).height * 0.022,
                          fontFamily: 'Urbanist-SemiBold',
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
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
                  Container(
                    width: 40.w,
                    height: 40.h,
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                        color: HexColor('70E289'), shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/users.svg'),
                  ),
                  SizedBox(width: 11.w),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.81),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/bell.svg'),
                  ),
                  Expanded(child: SizedBox()),
                  CircleAvatar(
                    radius: 25.w,
                    child: Image.asset(
                      'assets/images/avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 14.w),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 530.h,
                child: ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => FocusRoom()));
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
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
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
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
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
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
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
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
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
                                        borderRadius:
                                            BorderRadius.circular(8.w)),
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
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: HexColor('#E49D9D'),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.w),
                              bottomRight: Radius.circular(20.w))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            'Social Focus Rooms',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.w),
                          ),
                          SizedBox(
                            width: 50.w,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialogBox1();
                                    });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.w),
                                  color: HexColor('#8BB8C2'),
                                ),
                                child: Text(
                                  'Create Room',
                                  style: TextStyle(color: Colors.white),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ];
    return Scaffold(
      body: Container(
        child: PageView.builder(
            itemCount: widgetList.length,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      children: [
                        widgetList[_selectedIndex],
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                widgetList.length,
                                (index) => AnimatedContainer(
                                      duration: Duration(milliseconds: 1000),
                                      margin: EdgeInsets.only(right: 8.w),
                                      width: 10.w,
                                      height: 10.h,
                                      decoration: BoxDecoration(
                                        color: _selectedIndex == index
                                            ? HexColor('#B5AAAA')
                                            : HexColor('#D9D9D9'),
                                        shape: BoxShape.circle,
                                      ),
                                    )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
