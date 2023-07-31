import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 82.h,
          width: 371.w,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              width: 1,
              color: const Color(0xffE8E8E8),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
            ),
            child: Row(
              // crossAxisAlignment: ,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/recipe.png"),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fruit Salad Mix",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff2F2F2F)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.star)),
                        Text(
                          "4,5",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffBDBDBD)),
                        ),
                        Text(
                          "  12 Purchases",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffBDBDBD)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
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
            ),
          ),
        ),
      ),
    );
  }
}
