import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'each_page.dart';

// ignore: must_be_immutable
class IntroSlider extends StatelessWidget {
  IntroSlider({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              EachPage(
                  msg:
                      "Get it easy by ordering online for all the\n menus you want in our application, no\n need to leave the house and stay safe",
                  title: "It's easier to order online",
                  path: "assets/images/a.png"),
              EachPage(
                  msg:
                      "Various menus that you want are available\n on our application, no need to move to a\n different store, we have it all!",
                  title: "Get a variety of menus",
                  path: "assets/images/b.png"),
              EachPage(
                  msg:
                      "We can guarantee that all of our menus\n are made with the best recipes and tastes,\n especially for you, our loyal customers!",
                  title: "The best taste from us",
                  path: "assets/images/c.png")
            ],
          ),
          Positioned(
            bottom: 369.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: SlideEffect(
                      dotColor: const Color(0xffDBDDDF),
                      activeDotColor: const Color(0xff39B54A),
                      dotHeight: 4.h,
                      dotWidth: 26.w),
                ),
              ],
            ),
          )
        ],
      ),
    );
    // );
  }
}
