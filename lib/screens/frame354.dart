import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:videoapp/screens/sendsuggestion.dart';

import 'Rooms.dart';
import 'screen_33.dart';

class Frame354 extends StatefulWidget {
  const Frame354({Key? key}) : super(key: key);

  @override
  State<Frame354> createState() => _Frame354State();
}

class _Frame354State extends State<Frame354> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialogBox();
                });
          },
          child: Text('Show Frame'),
        ),
      ),
    );
  }
}

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFFABA4A4),
      insetPadding: EdgeInsets.all(configSize(context).height * 0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Container(
        height: configSize(context).height * 0.4,
        width: double.infinity,
        padding: EdgeInsets.only(
            top: configSize(context).height * 0.02,
            left: configSize(context).height * 0.042,
            right: configSize(context).height * 0.042,
            bottom: configSize(context).height * 0.02),
        child: Container(
          padding: EdgeInsets.only(
              top: configSize(context).height * 0.02,
              left: configSize(context).height * 0.045,
              right: configSize(context).height * 0.045,
              bottom: configSize(context).height * 0.02),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(configSize(context).height * 0.022),
            border: Border.all(color: Colors.white),
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RoomsScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: configSize(context).height * 0.074,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        configSize(context).height * 0.022),
                    color: Color(0xFFAF9696),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.45),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Text(
                    'Objective Accomplished',
                    style: TextStyle(
                      fontSize: configSize(context).height * 0.022,
                      fontFamily: 'Urbanist-SemiBold',
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.027,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SendSuggestionScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: configSize(context).height * 0.074,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        configSize(context).height * 0.022),
                    color: Color(0xFFAF9696),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.45),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Text(
                    'Good Job',
                    style: TextStyle(
                      fontSize: configSize(context).height * 0.022,
                      fontFamily: 'Urbanist-SemiBold',
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.027,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: configSize(context).height * 0.074,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        configSize(context).height * 0.022),
                    color: Color(0xFF8C8C8C),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.45),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0.w),
                    child: Text(
                      'Double tap to repeat session\nTap & Hold to stop',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: configSize(context).height * 0.022,
                        fontFamily: 'Urbanist-SemiBold',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.027,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
