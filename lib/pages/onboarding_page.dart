import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'each_page.dart';

// ignore: must_be_immutable
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              EachPage(
                  msg:
                      "Get it easy by ordering online for all the\n menus you want in our application, no\n need to leave the house and stay safe",
                  title: "It's easier to order online",
                  path: "assets/images/cover1.png"),
              EachPage(
                  msg:
                      "Various menus that you want are available\n on our application, no need to move to a\n different store, we have it all!",
                  title: "Get a variety of menus",
                  path: "assets/images/cover2.png"),
              EachPage(
                  msg:
                      "We can guarantee that all of our menus\n are made with the best recipes and tastes,\n especially for you, our loyal customers!",
                  title: "The best taste from us",
                  path: "assets/images/cover3.png")
            ],
          ),
          Positioned(
            top: 770.h,
            left: 20.w,
            right: 20.w,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: SlideEffect(
                      dotColor: const Color(0xffDBDDDF),
                      activeDotColor: const Color(0xffFFD370),
                      dotHeight: 4.h,
                      dotWidth: 26.w),
                ),
              ],
            ),
          ),
          Positioned(
            top: 806.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                width: 354.w,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: const Text('Skip'),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        pageController.animateToPage(
                          pageController.page!.toInt() - 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeIn,
                        );
                      },
                      icon: const Icon(Icons.navigate_before),
                    ),
                    IconButton.filled(
                      onPressed: () {
                        if (pageController.page!.toInt() > 1) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        } else {
                          pageController.animateToPage(
                            pageController.page!.toInt() + 1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      icon: const Icon(Icons.navigate_next),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
