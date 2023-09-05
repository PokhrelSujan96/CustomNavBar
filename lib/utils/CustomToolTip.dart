// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_navbar/utils/Shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomToolTip extends StatelessWidget {
  final String text;
  final child;
  final bool location;
  const CustomToolTip({
    Key? key,
    required this.text,
    this.child,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      preferBelow: location,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      message: text,
      textStyle: GoogleFonts.electrolize(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 9.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2.r),
          boxShadow: [defShadow]),
      child: child,
    );
  }
}
