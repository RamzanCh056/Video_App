import 'package:flutter/material.dart';
import 'package:videoapp/screens/screen47.dart';
import 'package:videoapp/screens/screen_33.dart';

import 'Rooms.dart';

class Screen35 extends StatefulWidget {
  const Screen35({Key? key}) : super(key: key);

  @override
  State<Screen35> createState() => _Screen35State();
}

class _Screen35State extends State<Screen35> {
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
                      onTap: () {
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
                      backgroundImage: AssetImage('assets/icons/users.png'),
                      radius: configSize(context).height * 0.025,
                    ),
                    SizedBox(
                      width: configSize(context).width * 0.012,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => RoomsScreen()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/room.png'),
                        radius: configSize(context).height * 0.025,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Following',
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
              padding: EdgeInsets.only(top: configSize(context).height * 0.08),
              shrinkWrap: true,
              children: [
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
                CustomListTile(
                  image: 'assets/icons/profile.png',
                  title: 'Johnes_sam',
                  btnText: 'unfollow',
                ),
                SizedBox(
                  height: configSize(context).height * 0.03,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String? image, title, btnText;
  CustomListTile({this.image, this.title, this.btnText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image.toString()),
        radius: 31,
      ),
      title: Text(
        title.toString(),
        style: TextStyle(
          fontSize: configSize(context).height * 0.022,
          fontFamily: 'Urbanist-Medium',
          color: Color(0xFF000000),
        ),
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          height: configSize(context).height * 0.042,
          width: configSize(context).width * 0.27,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Color(0xFFADD1D3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.45),
                blurRadius: 7.0,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Text(
            btnText.toString(),
            style: TextStyle(
              fontSize: configSize(context).height * 0.022,
              fontFamily: 'Urbanist-SemiBold',
              color: Color(0xFF1E1D1D),
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
