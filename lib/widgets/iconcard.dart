import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class iconcard extends StatelessWidget {
  final String svgsrc;

  const iconcard({super.key, required this.svgsrc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.81),
        borderRadius: BorderRadius.circular(10.w),
      ),
      child: SvgPicture.asset(svgsrc),
    );
  }
}