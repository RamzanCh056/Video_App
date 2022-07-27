// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:videoapp/screens/screen_33.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialogBox1();
                });
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}

class CustomDialogBox1 extends StatefulWidget {
  @override
  State<CustomDialogBox1> createState() => _CustomDialogBox1State();
}

class CustomRangeTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '')
      return TextEditingValue();
    else if (int.parse(newValue.text) < 1)
      return TextEditingValue().copyWith(text: '1');

    return int.parse(newValue.text) > 20
        ? TextEditingValue().copyWith(text: '20')
        : newValue;
  }
}

class _CustomDialogBox1State extends State<CustomDialogBox1> {
  List<String> errors = [];
  String kTitleError = 'title cannot be empty';
  String val = '';
  List<String> listitems = List.generate(24, (index) => '${index + 1}');
  String selectval = "1";

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFF83BCC9),
      insetPadding: EdgeInsets.all(configSize(context).height * 0.025),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(configSize(context).height * 0.022),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: configSize(context).height * 0.6,
            width: double.infinity,
            padding: EdgeInsets.only(
                top: configSize(context).height * 0.045,
                left: configSize(context).height * 0.02,
                right: configSize(context).height * 0.02,
                bottom: configSize(context).height * 0.02),
            child: Form(
              key: _formkey,
              child: SingleChildScrollView(
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
                          maxLength: 10,
                          // onSaved: (newvalue){
                          //     val=newvalue!;
                          // },
                          // validator: (value){
                          //   if(value!.isEmpty && !errors.contains(kTitleError) ){
                          //     setState(() {
                          //       errors.add('title cannot be emplty');
                          //     });
                          //
                          //   }
                          // },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                configSize(context).height * 0.022,
                              ),
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                            filled: true,
                            hintText: 'name the room',
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
                        Column(
                          children: List.generate(
                              errors.length, (index) => Text(errors[index])),
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
                                'Max People*',
                                style: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-SemiBold',
                                ),
                              ),
                            ),
                            SizedBox(
                              height: configSize(context).height * 0.005,
                            ),
                            DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    configSize(context).height * 0.022,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                filled: true,
                                hintText: 'name the room',
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
                              value: selectval,
                              onChanged: (val) {
                                selectval = val as String;
                                setState(() {});
                              },
                              items: listitems
                                  .map((e) => (DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      )))
                                  .toList(),
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
                                'Invite Friends',
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
                                hintText: 'copy the link to invite friends',
                                hintStyle: TextStyle(
                                  fontSize: configSize(context).height * 0.02,
                                  fontFamily: 'Urbanist-Light',
                                  color: Color(0xFF818181),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: configSize(context).width * 0.05,
                                  vertical: configSize(context).height * 0.025,
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    right: configSize(context).height * 0.022,
                                  ),
                                  child: Container(
                                    height: configSize(context).height * 0.02,
                                    width: configSize(context).width * 0.05,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black.withOpacity(0.1),
                                      ),
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Transform.rotate(
                                      angle: 3.0,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: ImageIcon(
                                          AssetImage('assets/icons/link.png'),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: configSize(context).height * 0.027,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: configSize(context).height * 0.042,
                                width: configSize(context).width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Color(0xFFB09393),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.45),
                                      blurRadius: 7.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'public',
                                  style: TextStyle(
                                    fontSize:
                                        configSize(context).height * 0.022,
                                    fontFamily: 'Urbanist-SemiBold',
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: configSize(context).width * 0.035,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: configSize(context).height * 0.042,
                                width: configSize(context).width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Color(0xFFB09393),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.45),
                                      blurRadius: 7.0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'private',
                                  style: TextStyle(
                                    fontSize:
                                        configSize(context).height * 0.022,
                                    fontFamily: 'Urbanist-SemiBold',
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                  ),
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
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Screen33()));
                              });
                            } else {
                              Text('');
                            }
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
                              'CREATE',
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
                  ],
                ),
              ),
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
                color: Color(0xFFB09393),
                border: Border.all(
                  color: Colors.white,
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.45),
                //     blurRadius: 7.0,
                //     offset: Offset(0, 3),
                //   ),
                // ],
              ),
              child: Text(
                'Create Room',
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
    );
  }
}
