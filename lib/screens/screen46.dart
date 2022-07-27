import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:videoapp/screens/screen47.dart';

import 'screen_33.dart';

class Screen46 extends StatefulWidget {
  const Screen46({Key? key}) : super(key: key);

  @override
  State<Screen46> createState() => _Screen46State();
}

class _Screen46State extends State<Screen46> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: configSize(context).width * 0.035,
              right: configSize(context).width * 0.035,
              top: configSize(context).width * 0.08,
            ),
            height: configSize(context).height * 0.18,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFADD1D3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(configSize(context).height * 0.02),
                bottomRight: Radius.circular(configSize(context).height * 0.02),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.45),
                  blurRadius: 7.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                 onTap: (){   Navigator.pop(context);},
                      child: Container(
                        padding:
                            EdgeInsets.all(configSize(context).height * 0.0099),
                        height: configSize(context).height * 0.05,
                        width: configSize(context).width * 0.092,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                          ),
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Transform.rotate(
                          angle: 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icons/play1.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.07,
                    ),
                    Text(
                      'Laura_anaya',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Gilroy-Bold',
                        color: Color(0xFF151313),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.all(configSize(context).height * 0.00999),
                      height: configSize(context).height * 0.05,
                      width: configSize(context).width * 0.092,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/phone.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.007,
                    ),
                    Container(
                      padding:
                          EdgeInsets.all(configSize(context).height * 0.00999),
                      height: configSize(context).height * 0.05,
                      width: configSize(context).width * 0.092,
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/video.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.007,
                    ),
                    InkWell(
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen47()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/profile.png'),
                        radius: 21,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: configSize(context).height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: configSize(context).width * 0.04,
              right: configSize(context).width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: configSize(context).width * 0.119),
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
                    Padding(
                      padding: EdgeInsets.only(
                          top: configSize(context).height * 0.02),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/icons/list_pic.png'),
                        radius: configSize(context).height * 0.025,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage("assets/icons/video_call.png"),
                        color: Color(0xFF1B68D7),
                        size: configSize(context).height * 0.035,
                      ),
                    ),
                    Text(
                      'Duration: 28:07',
                      style: TextStyle(
                        fontSize: configSize(context).height * 0.02,
                        fontFamily: 'Urbanist-Regular',
                        color: Color(0xFF1B68D7),
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      Text(
                        'Duration 28:07',
                        style: TextStyle(
                          fontSize: configSize(context).height * 0.021,
                          fontFamily: 'Urbanist-Regular',
                          color: Color(0xFF21853A),
                        ),
                      ),
                      SizedBox(
                        width: configSize(context).width * 0.05,
                      ),
                      Image(
                        image: AssetImage('assets/icons/phone_call.png'),
                        color: Color(0xFF21853A),
                        height: configSize(context).height * 0.035,
                      ),
                      SizedBox(
                        width: configSize(context).width * 0.01,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/icons/phone_call_profile_pic.png'),
                        radius: configSize(context).height * 0.022,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: configSize(context).height * 0.07,
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
                  padding:
                      EdgeInsets.only(left: configSize(context).width * 0.119),
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
                      backgroundImage: AssetImage('assets/icons/list_pic.png'),
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
                  padding:
                      EdgeInsets.only(left: configSize(context).width * 0.119),
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
                      backgroundImage: AssetImage('assets/icons/list_pic.png'),
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
          ),
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(
            left: configSize(context).height * 0.017,
            right: configSize(context).height * 0.017,
            top: configSize(context).height * 0.010,
            bottom: configSize(context).height * 0.010),
        height: configSize(context).height * 0.08,
        color: Color(0xFFADD1D3),
        child: Row(children: [
          Container(
            height: configSize(context).height * 0.06,
            width: configSize(context).width * 0.134,
            decoration: BoxDecoration(
              color: Color(0xFF1191AD),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          SizedBox(
            width: configSize(context).width * 0.03,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Write a message',
                hintStyle: TextStyle(
                  fontSize: configSize(context).height * 0.02,
                  fontFamily: 'Urbanist-Light',
                  color: Color(0xFF818181),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: configSize(context).width * 0.05,
                  vertical: configSize(context).height * 0.02,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
