import 'package:flutter/material.dart';
import 'package:videoapp/screens/Rooms.dart';
import 'package:videoapp/screens/screen35.dart';
import 'package:videoapp/screens/screen36.dart';
import 'package:videoapp/screens/screen37.dart';
import 'package:videoapp/screens/screen46.dart';
import 'package:videoapp/screens/screen47.dart';

class Screen33 extends StatefulWidget {
  const Screen33({Key? key}) : super(key: key);

  @override
  State<Screen33> createState() => _Screen33State();
}

//method
Size configSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

class _Screen33State extends State<Screen33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: configSize(context).width * 0.05,
              right: configSize(context).width * 0.05,
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
                    SizedBox(
                      width: configSize(context).height * 0.012,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/icons/users.png'),
                      radius: configSize(context).height * 0.028,
                    ),
                    SizedBox(
                      width: configSize(context).height * 0.015,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>RoomsScreen()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/room.png'),
                        radius: configSize(context).height * 0.028,
                      ),
                    ),
                  ],
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
          Padding(
            padding: EdgeInsets.only(
              top: configSize(context).height * 0.03,
              left: configSize(context).height * 0.015,
              right: configSize(context).height * 0.015,
              bottom: configSize(context).height * 0.04,
            ),
            child: Row(
              children: [
                //Reusable Container
                Expanded(

                  child: InkWell(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>Screen35()));
                    },
                      child: ReusableContainer(text: 'Following')),
                ),
                SizedBox(
                  width: configSize(context).height * 0.016,
                ),
                Expanded(

                  child: InkWell(
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder: (_)=>Screen36()));
                      },
                      child: ReusableContainer(text: 'Followers')),
                ),
                SizedBox(
                  width: configSize(context).height * 0.016,
                ),
                Expanded(

                  child: InkWell(
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder: (_)=>Screen37()));
                    },
                    child: ReusableContainer(

                        text: 'Blocked'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: configSize(context).height * 0.015,
            ),
            child: Text(
              'Direct Messages',
              style: TextStyle(
                fontSize: configSize(context).height * 0.022,
                fontFamily: 'Urbanist-SemiBold',
                color: Color(0xFF818181),
              ),
            ),
          ),
          SizedBox(
            height: configSize(context).height * 0.02,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(configSize(context).height * 0.01),
              shrinkWrap: true,
              children: [
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
                ReusableListTile(
                  image: 'assets/icons/list_pic.png',
                  title: 'Darlene Steward',
                  subtitle: 'See you on Monday',
                  appear: 'just now',
                  msg: '2',
                ),
                SizedBox(
                  height: configSize(context).height * 0.016,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableListTile extends StatelessWidget {
  String? image, title, subtitle, appear, msg;

  ReusableListTile(
      {this.image, this.title, this.subtitle, this.appear, this.msg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>Screen46()));
      },
      child: Container(
        height: configSize(context).height * 0.11,
        child: Card(
          color: Color(0xFFADD1D3),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(configSize(context).height * 0.015),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: configSize(context).height * 0.026,
              right: configSize(context).height * 0.026,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(image.toString()),
                      radius: 25,
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.025,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title.toString(),
                          style: TextStyle(
                            fontSize: configSize(context).height * 0.022,
                            fontFamily: 'Urbanist-Medium',
                            color: Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.004,
                        ),
                        Text(
                          subtitle.toString(),
                          style: TextStyle(
                            fontSize: configSize(context).height * 0.02,
                            fontFamily: 'Urbanist-Regular',
                            color: Color(0xFF7E7B7B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      appear.toString(),
                      style: TextStyle(
                        fontSize: configSize(context).height * 0.019,
                        fontFamily: 'Urbanist-Medium',
                        color: Color(0xFF989898),
                      ),
                    ),
                    SizedBox(
                      height: configSize(context).height * 0.003,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: configSize(context).height * 0.035,
                      width: configSize(context).width * 0.045,
                      decoration: BoxDecoration(
                        color: Color(0xFF3A8BFF),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        msg.toString(),
                        style: TextStyle(
                          fontSize: configSize(context).height * 0.015,
                          fontFamily: 'Urbanist-Regular',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  final String? text;
  ReusableContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: configSize(context).height * 0.048,
      width: configSize(context).width * 0.055,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color(0xFF1191AD),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.45),
            blurRadius: 7.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        text.toString(),
        style: TextStyle(
          fontSize: configSize(context).height * 0.022,
          fontFamily: 'Urbanist-SemiBold',
          color: Colors.white,
        ),
      ),
    );
  }
}
