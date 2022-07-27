import 'package:flutter/material.dart';
import 'package:videoapp/screens/screen47.dart';

import 'Rooms.dart';
import 'screen_33.dart';

class Screen39 extends StatefulWidget {
  const Screen39({Key? key}) : super(key: key);

  @override
  State<Screen39> createState() => _Screen39State();
}

class _Screen39State extends State<Screen39> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      onTap: (){
                        Navigator.pop(context);
                      },
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
                      width: configSize(context).width * 0.012,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF70E289),
                      backgroundImage: AssetImage('assets/icons/users.png'),
                      radius: configSize(context).height * 0.025,
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.012,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>RoomsScreen()));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF70E289),
                        backgroundImage: AssetImage('assets/icons/room.png'),
                        radius: configSize(context).height * 0.025,
                      ),
                    ),
                  ],
                ),
                Text(
                  'General Chat',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gilroy-Bold',
                    color: Color(0xFF151313),
                  ),
                ),
                InkWell(
                  onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen47()));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/profile.png'),
                    radius: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                left: configSize(context).width * 0.035,
                right: configSize(context).width * 0.035,
                top: configSize(context).height * 0.16,
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
