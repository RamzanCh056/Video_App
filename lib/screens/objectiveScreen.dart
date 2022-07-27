import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:videoapp/screens/screen26.dart';
import 'Rooms.dart';

class ObjectivesScreen extends StatelessWidget {
  final List<Widget> widgetList = [
    ObjectivesScreen(),
    Screen26(),
    RoomsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              // Container(
              //   height: 200.h,
              //   // color: Colors.red,
              //   width: 200.w,
              //   child: CircularCountDownTimer(
              //     duration: 10,
              //     initialDuration: 0,
              //     controller: CountDownController(),
              //     width: MediaQuery.of(context).size.width / 2,
              //     height: MediaQuery.of(context).size.height / 2,
              //     ringColor: Colors.grey[300]!,
              //     ringGradient: null,
              //     fillColor: Colors.purpleAccent[100]!,
              //     fillGradient: null,
              //     backgroundColor: Colors.purple[500],
              //     backgroundGradient: null,
              //     strokeWidth: 20.0,
              //     strokeCap: StrokeCap.round,
              //     textStyle: TextStyle(
              //         fontSize: 33.0,
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold),
              //     textFormat: CountdownTextFormat.S,
              //     isReverse: false,
              //     isReverseAnimation: false,
              //     isTimerTextShown: true,
              //     autoStart: false,
              //     onStart: () {
              //       debugPrint('Countdown Started');
              //     },
              //     onComplete: () {
              //       debugPrint('Countdown Ended');
              //     },
              //     onChange: (String timeStamp) {
              //       debugPrint('Countdown Changed $timeStamp');
              //     },
              //   ),
              // ),
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
        )
      ],
    );
  }
}
