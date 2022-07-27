import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:videoapp/screens/screen39.dart';
import 'package:videoapp/screens/screen47.dart';

import 'Rooms.dart';
import 'screen_33.dart';

class Screen38 extends StatefulWidget {
  const Screen38({Key? key}) : super(key: key);

  @override
  State<Screen38> createState() => _Screen38State();
}

class _Screen38State extends State<Screen38> {
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
                    Container(
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
                        backgroundImage: AssetImage('assets/icons/room.png'),
                        radius: configSize(context).height * 0.025,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Chill',
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
          Column(
            children: [
              SizedBox(
                height: configSize(context).height * 0.15,
              ),
              Container(
                alignment: Alignment.center,
                height: configSize(context).height * 0.08,
                width: configSize(context).height * 0.4,
                decoration: BoxDecoration(
                  color: Color(0xFFCC5C5C),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Text(
                  'Admin Chat',
                  style: TextStyle(
                    fontSize: configSize(context).height * 0.042,
                    color: Colors.white,
                    fontFamily: 'Imprima-Regular',
                  ),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.15,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen39()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: configSize(context).height * 0.08,
                  width: configSize(context).height * 0.4,
                  decoration: BoxDecoration(
                    color: Color(0xFF5CB8CC),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Text(
                    'General Chat',
                    style: TextStyle(
                      fontSize: configSize(context).height * 0.042,
                      color: Colors.white,
                      fontFamily: 'Imprima-Regular',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.15,
              ),
              Container(
                alignment: Alignment.center,
                height: configSize(context).height * 0.08,
                width: configSize(context).height * 0.4,
                decoration: BoxDecoration(
                  color: Color(0xFF945CCC),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Text(
                  'Support Chat',
                  style: TextStyle(
                    fontSize: configSize(context).height * 0.042,
                    color: Colors.white,
                    fontFamily: 'Imprima-Regular',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
