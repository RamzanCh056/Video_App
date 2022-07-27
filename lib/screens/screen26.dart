import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'frame354.dart';
import 'screen_33.dart';

class Screen26 extends StatefulWidget {
  const Screen26({Key? key}) : super(key: key);

  @override
  State<Screen26> createState() => _Screen26State();
}

List<GDPData> getChartData() {
  final List<GDPData> chartData = [
    GDPData(days: 'Sa'),
    GDPData(days: 'Fr'),
    GDPData(days: 'Th'),
    GDPData(days: 'we'),
    GDPData(days: 'Tu'),
    GDPData(
      days: 'Mo',
    ),
    GDPData(
      days: 'Su',
    ),
  ];
  return chartData;
}

class _Screen26State extends State<Screen26> {
  TextEditingController dateinput = TextEditingController();

  // Initial Selected Value
  String dropdownvalue = '10 hours';

  // List of items in our dropdown menu
  var items = [
    '10 hours',
    '5 hours',
    '15 hours',
    '3 hours',
    '23 hours',
  ];

  late List<GDPData> _chartdata;

  @override
  void initState() {
    _chartdata = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: configSize(context).width * 0.035,
            right: configSize(context).width * 0.035,
            top: configSize(context).width * 0.12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.0,
              ),
              Text(
                'May 2022,week 02',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Gilroy-Bold',
                  color: Color(0xFF151313),
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.02,
              ),
              Container(
                height: configSize(context).height * 0.55,
                width: double.infinity,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //       image: AssetImage('assets/icons/table_img.png'),
                //       fit: BoxFit.cover),
                //   borderRadius:
                //       BorderRadius.circular(configSize(context).height * 0.02),
                // ),
                child: Stack(
                  children: [
                    SfCartesianChart(
                      series: <ChartSeries>[
                        BarSeries<GDPData, String>(
                          // color: Colors.red,
                          spacing: 12.0,
                          dataSource: _chartdata,
                          xValueMapper: (GDPData gdp, _) => gdp.days,
                          yValueMapper: (GDPData gdp, _) => gdp.gdp,
                          dataLabelSettings: DataLabelSettings(
                            isVisible: true,
                          ),
                        ),
                      ],
                      primaryXAxis: CategoryAxis(),
                    ),
                    Positioned(
                      left: configSize(context).width * 0.11,
                      top: configSize(context).height * 0.02,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(
                                configSize(context).height * 0.003),
                            height: configSize(context).height * 0.06,
                            width: configSize(context).width * 0.25,
                            color: Colors.red,
                            child: Text(
                              'Unstarted Objective\n(ETC:00:25)',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.015,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: configSize(context).width * 0.021,
                          ),
                          Container(
                            padding: EdgeInsets.all(
                                configSize(context).height * 0.003),
                            height: configSize(context).height * 0.06,
                            width: configSize(context).width * 0.25,
                            color: Colors.yellow,
                            child: Text(
                              'Pending Objective\n(ETC:00:10)',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.015,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: configSize(context).width * 0.021,
                          ),
                          Container(
                            padding: EdgeInsets.all(
                                configSize(context).height * 0.003),
                            height: configSize(context).height * 0.06,
                            width: configSize(context).width * 0.25,
                            color: Colors.green,
                            child: Text(
                              'Accomplished Objective',
                              style: TextStyle(
                                fontSize: configSize(context).height * 0.015,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: configSize(context).width * 0.11,
                      top: configSize(context).height * 0.09,
                      child: Container(
                        padding:
                            EdgeInsets.all(configSize(context).height * 0.003),
                        height: configSize(context).height * 0.06,
                        width: configSize(context).width * 0.25,
                        color: Colors.red,
                        child: Text(
                          'Unstarted Objective\n(ETC:00:25)',
                          style: TextStyle(
                            fontSize: configSize(context).height * 0.015,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: configSize(context).height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF83BCC9),
                    borderRadius: BorderRadius.circular(
                        configSize(context).height * 0.022)),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: configSize(context).height * 0.55,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: configSize(context).height * 0.045,
                          left: configSize(context).height * 0.02,
                          right: configSize(context).height * 0.02,
                          bottom: configSize(context).height * 0.02),
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
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      configSize(context).height * 0.022,
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                  filled: true,
                                  hintText: 'keep it short (18 characters)',
                                  hintStyle: TextStyle(
                                    fontSize: configSize(context).height * 0.02,
                                    fontFamily: 'Urbanist-Light',
                                    color: Color(0xFF818181),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                        configSize(context).width * 0.05,
                                    vertical:
                                        configSize(context).height * 0.025,
                                  ),
                                ),
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
                                  'Date*',
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
                                readOnly: true,
                                controller:
                                    dateinput, //editing controller of this TextField
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      configSize(context).height * 0.022,
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                                  filled: true,
                                  prefixIcon: Icon(Icons.calendar_today),
                                  hintText: 'dd/mm/yyyy',
                                  hintStyle: TextStyle(
                                    fontSize: configSize(context).height * 0.02,
                                    fontFamily: 'Urbanist-Light',
                                    color: Color(0xFF818181),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal:
                                        configSize(context).width * 0.05,
                                    vertical:
                                        configSize(context).height * 0.025,
                                  ),
                                ),
                                onTap: () async {
                                  // DateTime? date = DateTime(1900);
                                  // FocusScope.of(context)
                                  //     .requestFocus(FocusNode());

                                  // date = await showDatePicker(
                                  //     context: context,
                                  //     initialDate: DateTime.now(),
                                  //     firstDate: DateTime(1900),
                                  //     lastDate: DateTime(2100));

                                  // dateinput.text = date!.toString();
                                  await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2015),
                                    lastDate: DateTime(2025),
                                  ).then((selectedDate) {
                                    if (selectedDate != null) {
                                      dateinput.text = DateFormat(
                                        'dd/MM/yyyy',
                                      ).format(selectedDate);
                                    }
                                  });
                                },
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
                                  'ETC',
                                  style: TextStyle(
                                    fontSize: configSize(context).height * 0.02,
                                    fontFamily: 'Urbanist-SemiBold',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: configSize(context).height * 0.005,
                              ),
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(
                              //         configSize(context).height * 0.022,
                              //       ),
                              //       borderSide: BorderSide.none,
                              //     ),
                              //     fillColor: Color(0xFFFAFAFA).withOpacity(0.8),
                              //     filled: true,
                              //     hintText: 'Estimated Time of Completion',
                              //     hintStyle: TextStyle(
                              //       fontSize: configSize(context).height * 0.02,
                              //       fontFamily: 'Urbanist-Light',
                              //       color: Color(0xFF818181),
                              //     ),
                              //     contentPadding: EdgeInsets.symmetric(
                              //       horizontal:
                              //           configSize(context).width * 0.05,
                              //       vertical:
                              //           configSize(context).height * 0.025,
                              //     ),
                              //   ),
                              // ),
                              Container(
                                height: configSize(context).height * 0.077,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(
                                    configSize(context).height * 0.022,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        configSize(context).width * 0.05,
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      // hint:
                                      //     Text('Estimated Time of Completion'),
                                      isExpanded: true,
                                      // Initial Value
                                      value: dropdownvalue,
                                      // Array list of items
                                      icon: SizedBox.shrink(),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: configSize(context).height * 0.027,
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomDialogBox();
                                  });
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
                                'I CAN',
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
                    ),
                    Positioned(
                      top: configSize(context).height * -0.025,
                      child: Container(
                        alignment: Alignment.center,
                        height: configSize(context).height * 0.047,
                        width: configSize(context).width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Color(0xFF83BCC9),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: Text(
                          'Objective',
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
              ),
              SizedBox(
                height: configSize(context).height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GDPData {
  final String? days;
  final double? gdp;

  GDPData({this.days, this.gdp});
}
