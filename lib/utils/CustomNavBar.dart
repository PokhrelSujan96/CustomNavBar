// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_navbar/utils/CustomToolTip.dart';
import 'package:custom_navbar/utils/Shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarIconCustom extends StatelessWidget {
  final String image;
  final int myindex;
  final int number;
  final String tip;
  const NavBarIconCustom({
    super.key,
    required this.image,
    required this.myindex,
    required this.number,
    required this.tip,
  });

  @override
  Widget build(BuildContext context) {
    return CustomToolTip(
      text: tip,
      location: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 1.5.r),
            boxShadow: [NavBarShadow]),
        child: SizedBox(
          height: 15.h,
          width: 15.w,
          child: Image.asset(image,
              fit: BoxFit.fitHeight,
              color: (myindex == number) ? Colors.deepPurple : Colors.black),
        ),
      ),
    );
  }
}
