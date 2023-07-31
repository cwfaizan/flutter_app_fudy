import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:like_button/like_button.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123.w,
      height: 202.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.transparent,
          Color(0xffffffff),
          Color(0xffffffff),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/re.png",
              width: 90.w,
              height: 90.h,
            ),
            Text(
              "Vegetable\n Salad",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff2F2F2F),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "\$35",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff503E9D),
                  ),
                ),
                SizedBox(
                  width: 21.w,
                ),
                LikeButton(
                  isLiked: like,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
