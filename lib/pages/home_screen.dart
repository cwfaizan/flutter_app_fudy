import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/widgets/home_page_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 54.h,
            ),
            Text(
              "Hello, Jhone",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff2F2F2F),
              ),
            ),
            Text(
              "Want to order food today?",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xffBDBDBD),
              ),
            ),
            SizedBox(
              height: 27.h,
            ),
            SizedBox(
              height: 60.h,
              width: double.maxFinite,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xffBDBDBD),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffBDBDBD),
                  ),
                  filled: true,
                  fillColor: const Color(0xffffffff),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.r),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color(0xffE8E8E8),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best seller of the week",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff2F2F2F)),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff503E9D)),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset("assets/images/c.png"),
                Image.asset("assets/images/ca.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 32.w, top: 22.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "50% off all food\n Products.",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff2F2F2F)),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "4 - 4 August 2023",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(136, 47, 47, 47)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 26.w, top: 35.h),
                      child: SizedBox(
                        height: 56.h,
                        width: 125.w,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Text(
                            "Order Now",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff2F2F2F),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // SizedBox(
            //   child: ListView.builder(
            //     scrollDirection: Axis.vertical,
            //     itemCount: 10,
            //     itemBuilder: (context, index) => const HomeCard(),
            //   ),
            // ),
            Text(
              "Recommended for you",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F)),
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) => const HomePageContent(),
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
