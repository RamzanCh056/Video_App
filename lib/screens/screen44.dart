import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:videoapp/screens/suggestionscreen.dart';

import 'screen_33.dart';

class Screen44 extends StatefulWidget {
  const Screen44({Key? key}) : super(key: key);

  @override
  State<Screen44> createState() => _Screen44State();
}

class _Screen44State extends State<Screen44> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE49D9D),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),

          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Row(

                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>SuggestionScreen()));
                    },
                    child: Container(
                      width: 40.w,
                      height: 15.h,
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14.w),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: HexColor('#D0D0D0'),

                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width:10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: HexColor('#D0D0D0'),

                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width:10.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                              color: HexColor('#D0D0D0'),

                              shape: BoxShape.circle,
                            ),
                          )],
                      ),
                    ),
                  ),
                  SizedBox(width:10.w ,),
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.81),
                    ),
                    child: Transform.rotate(child: Icon(Icons.add),angle: 95,),
                  ),
                  SizedBox(width:10.w ,),
                  Text('Focus Room (5/24)', style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.5.sp),),
                  SizedBox(width:4.w),
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor('70E289'),
                    ),
                    child: Center(
                      child: Padding(
                        padding:  EdgeInsets.all(7.0.w),
                        child: SvgPicture.asset('assets/icons/camera.svg'),
                      ),
                    ),

                  ),
                  SizedBox(width:17.w),

                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.81),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(8.0.w),
                      child: SvgPicture.asset('assets/icons/mic.svg'),
                    ),

                  ),
                ],),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: configSize(context).height * 0.05,
                    width: configSize(context).width * 0.092,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      color: Color(0xFF70E289),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/icons/message.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: configSize(context).height * 0.01,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    left: configSize(context).width * 0.035,
                    right: configSize(context).width * 0.035,
                    top: configSize(context).height * 0.05,
                  ),
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.14,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.022,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.022,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.022,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.022,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.022,
                        ),
                        Center(
                          child: Text(
                            '7:21 AM',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.02,
                              fontFamily: 'Urbanist-Regular',
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.025,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: configSize(context).width * 0.119),
                          child: Text(
                            'User Nick Name',
                            style: TextStyle(
                              fontSize: configSize(context).height * 0.021,
                              fontFamily: 'Urbanist-SemiBold',
                              color: Color(0xFFFFFEFE),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/icons/list_pic.png'),
                              radius: configSize(context).height * 0.025,
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.02,
                            ),
                            Text(
                              'Lorem ipsum text written  37”',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFF0D4697),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: configSize(context).height * 0.09,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
