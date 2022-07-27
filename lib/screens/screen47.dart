import 'package:flutter/material.dart';
import 'package:videoapp/screens/screen_33.dart';
import 'package:videoapp/screens/suggestionscreen.dart';

class Screen47 extends StatefulWidget {
  const Screen47({Key? key}) : super(key: key);

  @override
  State<Screen47> createState() => _Screen47State();
}

class _Screen47State extends State<Screen47> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: configSize(context).height * 0.025,
                  right: configSize(context).height * 0.025,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: configSize(context).height * 0.021,
                    right: configSize(context).height * 0.021,
                    top: configSize(context).height * 0.1, ////
                  ),
                  height: configSize(context).height * 0.56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFADD1D3),
                    borderRadius: BorderRadius.circular(
                        configSize(context).height * 0.022),
                    border: Border.all(color: Colors.grey.withOpacity(0.3)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 4),
                        blurRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: configSize(context).height * 0.05,
                            width: configSize(context).width * 0.22,
                            decoration: BoxDecoration(
                              color: Color(0xFF489CAE),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                                bottomLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                              ),
                            ),
                            child: Text(
                              'user name',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(),
                              alignment: Alignment.centerLeft,
                              height: configSize(context).height * 0.05,
                              width: configSize(context).width * 0.22,
                              decoration: BoxDecoration(
                                color: Color(0xFF489CAE),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        configSize(context).height * 0.016),
                                    bottomRight: Radius.circular(
                                        configSize(context).height * 0.016)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: configSize(context).width * 0.04),
                                child: Text(
                                  'johan_sam',
                                  style: TextStyle(
                                    fontSize: configSize(context).height * 0.02,
                                    fontFamily: 'Urbanist-Regular',
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: configSize(context).height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: configSize(context).height * 0.05,
                            width: configSize(context).width * 0.22,
                            decoration: BoxDecoration(
                              color: Color(0xFF489CAE),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                                bottomLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                              ),
                            ),
                            child: Text(
                              'email',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: configSize(context).height * 0.05,
                              width: configSize(context).width * 0.22,
                              decoration: BoxDecoration(
                                color: Color(0xFF489CAE),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        configSize(context).height * 0.016),
                                    bottomRight: Radius.circular(
                                        configSize(context).height * 0.016)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: configSize(context).width * 0.04,
                                ),
                                child: Text(
                                  'joohan,sam@gmail.com ',
                                  style: TextStyle(
                                    fontSize: configSize(context).height * 0.02,
                                    fontFamily: 'Urbanist-Regular',
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: configSize(context).height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: configSize(context).height * 0.05,
                            width: configSize(context).width * 0.22,
                            decoration: BoxDecoration(
                              color: Color(0xFF489CAE),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                                bottomLeft: Radius.circular(
                                    configSize(context).height * 0.016),
                              ),
                            ),
                            child: Text(
                              'nick name',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(),
                              alignment: Alignment.centerLeft,
                              height: configSize(context).height * 0.05,
                              width: configSize(context).width * 0.22,
                              decoration: BoxDecoration(
                                color: Color(0xFF489CAE),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        configSize(context).height * 0.016),
                                    bottomRight: Radius.circular(
                                        configSize(context).height * 0.016)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: configSize(context).width * 0.04,
                                  right: configSize(context).width * 0.01,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'jackie',
                                      style: TextStyle(
                                        fontSize:
                                            configSize(context).height * 0.02,
                                        fontFamily: 'Urbanist-Regular',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        AssetImage('assets/icons/edit.png'),
                                        color: Colors.white,
                                        size: 19.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: configSize(context).height * 0.06,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: configSize(context).width * 0.06,
                          left: configSize(context).width * 0.032,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'about me',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.02,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Image.asset(
                              'assets/icons/pencil.png',
                              height: configSize(context).height * 0.055,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: configSize(context).height * 0.006,
                              left: configSize(context).height * 0.025,
                            ),
                            height: configSize(context).height * 0.1,
                            width: configSize(context).width * 0.46,
                            decoration: BoxDecoration(
                              color: Color(0xFF489CAE),
                              borderRadius: BorderRadius.circular(
                                  configSize(context).height * 0.016),
                            ),
                            child: Text(
                              'This is an example',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.019,
                                fontFamily: 'Urbanist-Regular',
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SuggestionScreen()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(
                                  bottom: configSize(context).height * 0.005),
                              height: configSize(context).height * 0.05,
                              width: configSize(context).width * 0.28,
                              decoration: BoxDecoration(
                                color: Color(0xFF489CAE),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Text(
                                'Suggestions',
                                style: TextStyle(
                                  fontSize: configSize(context).height * 0.019,
                                  fontFamily: 'Urbanist-Regular',
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-45, -25),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/icons/profile.png'),
                  radius: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
