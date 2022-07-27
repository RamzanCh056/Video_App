// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hexcolor/hexcolor.dart';
//
//
// import 'package:syncfusion_flutter_gauges/gauges.dart';
//
// class RadialSlider extends StatefulWidget {
//   @override
//   State<RadialSlider> createState() => _RadialSliderState();
// }
//
// class _RadialSliderState extends State<RadialSlider> {
//  double  _volumeValue=50;
//   void onVolumeChanged(double value) {
//     setState(() {
//       _volumeValue = value;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//      Padding(
//         padding:  EdgeInsets.all(60.0.w),
//         child:SfRadialGauge(
//
//             axes: <RadialAxis>[
//
//               RadialAxis(
//
//                 annotations: [
//                   GaugeAnnotation(
//                     positionFactor: 0.1,
//                       verticalAlignment: GaugeAlignment.center,
//                       horizontalAlignment: GaugeAlignment.center,
//                       widget: Container(
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                               color: HexColor('#83BCC9'),
//                               shape: BoxShape.circle
//                           ),
//                           width: 290.w,
//                           height: 185.h,
//                           child: Text('00:25',style: TextStyle(fontSize: 40.w,color: Colors.white),)))
//                 ],
//                 showAxisLine: false,
//                 startAngle: 210,
//                 endAngle: 210,
//
//                 pointers: [
//                   RangePointer(
//
//                     value: 50,
//                     cornerStyle: CornerStyle.bothCurve,
//                     width: 13.w,
//                     sizeUnit: GaugeSizeUnit.logicalPixel,
//
//                     color: HexColor('#628FA3'),
//                   ),
//                   MarkerPointer(
//                       onValueChanged: onVolumeChanged,
//                       value: 50,
//                       enableDragging: true,
//                       markerHeight: 23.h,
//                       markerWidth: 25.w,
//                       markerType: MarkerType.circle,
//                       color: Colors.white,
//                       borderWidth: 2,
//                       borderColor: Colors.white54),
//
//                 ],
//
//                 minimum: 0,
//                 maximum: 100,
//                 showLabels: false,
//                 showTicks: false,
//                 axisLineStyle: AxisLineStyle(
//                     cornerStyle: CornerStyle.bothCurve,
//
//                     thickness: 20.w),
//               )
//             ]
//         ),
//         );
//
//
//   }
// }
//
//
//
