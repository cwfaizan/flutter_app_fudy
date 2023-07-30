import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class EachPage extends StatelessWidget {
  String title;
  String path;
  String msg;
  EachPage(
      {super.key, required this.msg, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E8E8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(path),
          ),
          Container(
            height: 326.h,
            width: double.maxFinite,
            color: const Color(0xffFFFFFF),
            child: Column(
              children: [
                SizedBox(
                  height: 41.h,
                ),
                Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  msg,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffBDBDBD),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
